# Linear Algebra with Wolfram Mathematica

Companion code and data for the three-part Russian-language linear algebra course by Dr. Mostafa Abotaleb, PhD, Associate Professor, Yugra State University.

The package contains all 255 code occurrences from the three manuscripts in 21 chapter notebooks and 21 plain Wolfram Language scripts. Part 1 has 100 blocks, Part 2 has 88, and Part 3 has 67. Chapter numbers restart in each part, matching the books.

## Start

Download [the complete ZIP](https://github.com/abotalebmostafa11/Linear-Algebra-Wolfram/archive/refs/heads/main.zip), extract it, open a `Chapter_XX.nb` file in Mathematica and evaluate cells from top to bottom with Shift+Enter. Use `Part_N/Run_All.nb` to evaluate one part, or the root `Run_All.nb` to evaluate everything. A licensed or activated Wolfram runtime is required to evaluate Wolfram Language programs.

For a command-line run, execute `wolframscript -file Run_All.wls` from the repository root. Per-part runners are also provided. Results are written to `results/` and include the kernel version, actual outputs, messages and mathematical verification results. Independent examples use separate contexts. The six cars-project blocks share a context and execute in order.

The numerical inputs are embedded in the source blocks and indexed in `Part_N/data/inputs.json`. The 50-row cars dataset is included in `Part_3/data/cars.csv`, with units and attribution in [DATA_SOURCES.md](docs/DATA_SOURCES.md). Calculations do not need network access.

Run `python3 tools/check_package.py` for source, checksum and package checks. There are 150 Wolfram mathematical checks covering 144 worked numerical variants and six project blocks. See [REPRODUCIBILITY.md](docs/REPRODUCIBILITY.md) for the preparation checks and native execution status. No computed output cells or fabricated execution results are included.

The book manuscripts are not included in this repository.
