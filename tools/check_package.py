#!/usr/bin/env python3
"""Validate the companion package without executing Wolfram Language."""
from pathlib import Path
from collections import Counter
import csv
import hashlib
import json
import re
import ast
import sys

ROOT = Path(__file__).resolve().parents[1]

def balanced(text):
    stack = []
    i = 0
    in_string = False
    comment_depth = 0
    pairs = {')': '(', ']': '[', '}': '{'}
    while i < len(text):
        ch = text[i]
        pair = text[i:i+2]
        if comment_depth:
            if pair == '(*':
                comment_depth += 1
                i += 2
            elif pair == '*)':
                comment_depth -= 1
                i += 2
            else:
                i += 1
            continue
        if in_string:
            if ch == '\\':
                i += 2
                continue
            if ch == '"':
                in_string = False
            i += 1
            continue
        if pair == '(*':
            comment_depth = 1
            i += 2
            continue
        if ch == '"':
            in_string = True
        elif ch in '([{':
            stack.append(ch)
        elif ch in ')]}':
            if not stack or stack.pop() != pairs[ch]:
                return False
        i += 1
    return not stack and not in_string and not comment_depth

def main():
    manifest = json.loads((ROOT / 'examples.json').read_text(encoding='utf-8'))
    examples = manifest['examples']
    assert len(examples) == 255
    assert Counter(e['part'] for e in examples) == {1: 100, 2: 88, 3: 67}
    assert len({e['id'] for e in examples}) == 255
    assert sum(bool(e['verification_expression']) for e in examples) == 150
    known = set()
    for e in examples:
        assert hashlib.sha256(e['code'].encode('utf-8')).hexdigest() == e['sha256'], e['id']
        assert balanced(e['code']), ('Unbalanced source', e['id'])
        assert balanced(e['verification_expression']), ('Unbalanced check', e['id'])
        assert all(x in known for x in e['depends_on']), ('Dependency order', e['id'])
        known.add(e['id'])

    for part in [1, 2, 3]:
        selected = [e for e in examples if e['part'] == part]
        part_manifest = json.loads((ROOT / f'Part_{part}/examples.json').read_text(encoding='utf-8'))
        assert part_manifest['examples'] == selected
        inputs = json.loads((ROOT / f'Part_{part}/data/inputs.json').read_text(encoding='utf-8'))
        assert [e['id'] for e in inputs['examples']] == [e['id'] for e in selected]
        for item, e in zip(inputs['examples'], selected):
            for value in item['inputs']:
                assert value['wolfram_input'] in e['code']
        for chapter in sorted({e['chapter'] for e in selected}):
            group = [e for e in selected if e['chapter'] == chapter]
            notebook = ROOT / f'Part_{part}/Chapter_{chapter:02d}.nb'
            script = ROOT / f'Part_{part}/Chapter_{chapter:02d}.wl'
            nb = notebook.read_text(encoding='utf-8')
            wl = script.read_text(encoding='utf-8')
            assert balanced(nb), str(notebook)
            assert balanced(wl), str(script)
            extracted = []
            for m in re.finditer(r'Cell\[BoxData\[RowBox\[(\{.*?\})\]\],"Input",CellContext->"[^"]+",CellLabel->"([^"]+)"\]', nb, re.S):
                if not re.fullmatch(r'P\d-C\d\d-E\d\d\d', m.group(2)):
                    continue
                tokens = json.loads('[' + m.group(1)[1:-1] + ']')
                extracted.append((m.group(2), ''.join(tokens)))
            assert extracted == [(e['id'], e['code']) for e in group], ('Notebook source mismatch', str(notebook))
            for e in group:
                assert '\n' + e['code'] + '\n);\nPrint[' in wl, ('Script source mismatch', e['id'])

    with (ROOT / 'Part_3/data/cars.csv').open(encoding='utf-8', newline='') as f:
        cars = list(csv.reader(f))
    assert cars[0] == ['speed_mph', 'distance_ft'] and len(cars) == 51
    assert all(len(row) == 2 and all(c.isdigit() for c in row) for row in cars[1:])
    first_project = next(e for e in examples if e['execution_group'] == 'P3-C03-CarsProject')
    for name, column in [('speed', 0), ('distance', 1)]:
        m = re.search(r'\b' + name + r'\s*=\s*(\{.*?\});', first_project['code'], re.S)
        values = ast.literal_eval(m.group(1).replace('{', '[').replace('}', ']'))
        assert values == [int(row[column]) for row in cars[1:]]
    project = [e for e in examples if e['execution_group'] == 'P3-C03-CarsProject']
    assert len(project) == 6 and not project[0]['depends_on']
    assert all(e['depends_on'] == [project[i-1]['id']] for i, e in enumerate(project) if i)

    for path in ROOT.rglob('*'):
        if path.suffix in {'.wl', '.wls', '.wlt', '.nb'}:
            assert balanced(path.read_text(encoding='utf-8')), str(path)
    for path in [ROOT / 'README.md', ROOT / 'README_EN.md'] + list(ROOT.glob('Part_*/README.md')):
        text = path.read_text(encoding='utf-8')
        for target in re.findall(r'\]\(([^)]+)\)', text):
            if not re.match(r'\w+://', target) and not target.startswith('#'):
                assert (path.parent / target).exists(), ('Broken relative link', path, target)
    checksums = json.loads((ROOT / 'checksums.json').read_text(encoding='utf-8'))
    for name, digest in checksums['files'].items():
        assert hashlib.sha256((ROOT / name).read_bytes()).hexdigest() == digest, ('File checksum mismatch', name)
    print('PASS: 255 book code blocks; 21 notebooks and scripts; 150 supplied mathematical checks; 50 cars observations; dependencies, source and file checksums.')
    print('Wolfram execution is separate. Use Run_All.nb or Run_All.wls on an activated Wolfram runtime.')

if __name__ == '__main__':
    main()
