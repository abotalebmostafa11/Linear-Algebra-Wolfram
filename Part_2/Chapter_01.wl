(* 1. Определители и геометрия *)
(* Код совпадает с книгой. Перед самостоятельным примером выполните Quit[] в отдельной ячейке. *)

(* 1.1. Начальные случаи *)
a = {{3, 1}, {1, 2}};
{Det[a], Det[a[[All, {2, 1}]]], Abs[Det[a]]}

(* 1.2. Перестановки и определение *)
{Signature[{3, 1, 2}], Signature[{2, 1, 3}],
 Det[{{2, 4, 1}, {0, -3, 5}, {0, 0, 7}}]}

(* 1.3. Матричная перестановка *)
p = IdentityMatrix[3][[{3, 1, 2}]];
{p, Det[p], p.Transpose[p]}

(* 1.4. Линейность и операции над строками *)
a = {{2, 1, 0}, {4, 3, 1}, {2, 1, 2}};
b = a;
b[[2]] = a[[2]] - 2 a[[1]];
b[[3]] = a[[3]] - a[[1]];
{b, Det[a], Times @@ Diagonal[b]}

(* 1.6. Разложение Лапласа и правило Крамера *)
a = {{2, 1}, {1, 3}}; b = {7, 11};
a1 = Transpose[{b, a[[All, 2]]}];
a2 = Transpose[{a[[All, 1]], b}];
{Det[a1]/Det[a], Det[a2]/Det[a]}

(* 1.7. Целочисленная обратимость *)
a = {{2, 1}, {1, 1}};
{Det[a], Inverse[a], Inverse[2 IdentityMatrix[2]]}

(* 1.8. Объемы и тождество Льюиса Кэрролла *)
a = {{2, 1, 3}, {1, 4, 2}, {0, 2, 5}};
left = Det[a] a[[2, 2]];
right = Det[a[[{1, 2}, {1, 2}]]] *
  Det[a[[{2, 3}, {2, 3}]]] -
  Det[a[[{1, 2}, {2, 3}]]] *
  Det[a[[{2, 3}, {1, 2}]]];
{Det[a], left, right}

(* Задача 1.1 *)
a = {{2, 3}, {1, 4}};
{Det[a], Abs[Det[a]]}

(* Задача 1.2 *)
a = {{2, 3}, {1, 4}};
{Det[a], Det[a[[{2, 1}]]]}

(* Задача 1.3 *)
Det[{{2, a, b}, {0, -3, c}, {0, 0, 4}}]

(* Задача 1.4 *)
a = {{1, 2, 3}, {0, 1, 4}, {0, 0, 2}};
m = Det[a[[{2, 3}, {1, 3}]]];
{m, (-1)^(1 + 2) m}

(* Задача 1.5 *)
a = {{2, 1}, {1, -1}}; b = {5, 1};
{Det[Transpose[{b, a[[All, 2]]}]]/Det[a],
 Det[Transpose[{a[[All, 1]], b}]]/Det[a]}

(* Задача 1.6 *)
a = Transpose[{{1, 0, 0}, {1, 2, 0}, {1, 1, 3}}];
Abs[Det[a]]

(* Задача 1.7 *)
a = {{1, t}, {t, 1}};
{Factor[Det[a]],
 Table[MatrixRank[a /. t -> s], {s, {-1, 0, 1}}]}

(* Задача 1.8 *)
a = {{1, 2, 0}, {0, 1, 1}, {1, 0, -1}};
b = a; b[[3]] = b[[3]] + 2 b[[1]];
{Det[a], Det[b]}

(* Задача 1.9 *)
a = DiagonalMatrix[{-2, 3}];
{3 Abs[Det[a]], Sign[Det[a]]}

(* Задача 1.10 *)
a = Transpose[{{1, 2, 0}, {0, 1, 3}}];
{Transpose[a].a, Det[Transpose[a].a]}

(* Задача 1.11 *)
a = {{a11, a12}, {a21, a22}};
Expand[Det[a] - Det[Transpose[a]]]

(* Задача 1.12 *)
a = {{2, 1}, {1, 1}};
{Det[a], Inverse[a]}

(* Задача 1.13 *)
a = IdentityMatrix[2]; b = DiagonalMatrix[{2, 1/2}];
{Det[a], Det[b], Sort[Eigenvalues[a]],
 Sort[Eigenvalues[b]]}

(* Задача 1.14 *)
u = {p, q}; v = {r, s};
Expand[Det[IdentityMatrix[2] +
 Outer[Times, u, v]] - (1 + v.u)]

(* Задача 1.15 *)
a = {{1, 0}, {2, 1}, {0, 3}};
minors = Det[a[[#]]] & /@ Subsets[Range[3], {2}];
{minors, Total[minors^2], Det[Transpose[a].a]}
