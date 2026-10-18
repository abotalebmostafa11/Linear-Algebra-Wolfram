(* 5. Конечномерные пространства *)
(* Код совпадает с книгой. Перед самостоятельным примером выполните Quit[] в отдельной ячейке. *)

(* 5.1. Линейная независимость *)
u = {1, 0, 1}; v = {0, 1, 1}; w = {1, 1, 2};
a = Transpose[{u, v, w}];
{u + v - w, MatrixRank[a], NullSpace[a]}

(* 5.2. Базис и единственность координат *)
basisMatrix = Transpose[{{1, 1}, {1, -1}}];
x = {5, 1};
coordinates = LinearSolve[basisMatrix, x];
{coordinates, basisMatrix.coordinates}

(* 5.3. Теорема о размерности *)
ClearAll[a, b, c];
e1 = {{1, 0}, {0, 0}};
e2 = {{0, 0}, {0, 1}};
e3 = {{0, 1}, {1, 0}};
a e1 + c e2 + b e3

(* 5.4. Пространства строк и столбцов *)
a = {{1, 2, 0}, {2, 4, 1}, {0, 0, 1}};
{RowReduce[a], a[[All, {1, 3}]], MatrixRank[a]}

(* 5.6. Сумма, пересечение и формула Грассмана *)
u = {{1, 0, 0}, {0, 1, 0}};
w = {{0, 1, 0}, {0, 0, 1}};
sumDim = MatrixRank[Join[u, w]];
intersectionDim = MatrixRank[u] +
  MatrixRank[w] - sumDim;
{sumDim, intersectionDim}

(* 5.7. Прямая сумма *)
ClearAll[t];
p = 1 + 2 t + 3 t^2 + 4 t^3;
even = Expand[(p + (p /. t -> -t))/2];
odd = Expand[(p - (p /. t -> -t))/2];
{even, odd, Expand[even + odd - p]}

(* 5.8. Факторпространство *)
x = {4, 7, 10};
centered = x - Mean[x];
shifted = x + 100;
{centered, shifted - Mean[shifted]}

(* Задача 5.1 *)
u = {1, 0, 1}; v = {0, 1, 1}; w = {1, 1, 2};
{u + v - w, MatrixRank[Transpose[{u, v, w}]]}

(* Задача 5.2 *)
p = {{1, 1}, {1, -1}};
LinearSolve[p, {3, 1}]

(* Задача 5.3 *)
a = {{1, 1, 1}};
3 - MatrixRank[a]

(* Задача 5.4 *)
a = {{1, 2, 0}, {0, 0, 1}, {1, 2, 1}};
{MatrixRank[a], MatrixRank[a[[All, {1, 3}]]]}

(* Задача 5.5 *)
p = Transpose[{{1, 1, 0}, {0, 1, 0}, {0, 0, 1}}];
Det[p]

(* Задача 5.6 *)
u = {{1, 0, 0}, {0, 1, 0}};
v = {{1, 0, 0}, {0, 0, 1}};
{MatrixRank[u], MatrixRank[v],
 MatrixRank[Join[u, v]]}

(* Задача 5.7 *)
Factor[Det[{{1, t}, {t, 1}}]]

(* Задача 5.8 *)
u = {1, 1}; w = {1, -1};
{Det[Transpose[{u, w}]], 2 u + w}

(* Задача 5.9 *)
a = {{1, 2, 3}, {2, 4, 6}};
{MatrixRank[a], Length[NullSpace[a]]}

(* Задача 5.10 *)
a = {{0, 1, 0}, {0, 0, 1}};
{a.{5, 2, -1}, a.{5 + t, 2, -1}}

(* Задача 5.11 *)
a = {{1, 0, 1}, {0, 1, 1}};
{a.{1, 1, 0}, a.{0, 0, 1}}

(* Задача 5.12 *)
u = {{1, 0, 0}, {0, 1, 0}};
v = {{1, 0, 0}, {0, 0, 1}};
MatrixRank[Join[u, v]] ==
 MatrixRank[u] + MatrixRank[v] - 1

(* Задача 5.13 *)
a = {{1, 2}, {1, 2}}; r = RowReduce[a];
{a[[All, 1]], r[[All, 1]]}

(* Задача 5.14 *)
a = {{1, 1, 0}, {0, 1, 0}, {0, 0, 1}};
Table[MatrixRank[Take[a, k]], {k, 1, 3}]

(* Задача 5.15 *)
a = {{1, 1, 1}, {1, -1, 1}};
{3 - MatrixRank[a],
 {s (t^2 - 1) /. t -> 1,
  s (t^2 - 1) /. t -> -1}}
