(* 3. Теория матриц и разложения *)
(* Код совпадает с книгой. Перед самостоятельным примером выполните Quit[] в отдельной ячейке. *)

(* 3.1. Алгебраические законы *)
a = {{1, 1}, {0, 1}};
b = {{1, 0}, {0, 2}};
{a.b, b.a, a.b - b.a}

(* 3.2. Транспонирование *)
m = {{1, 2}, {0, 1}, {2, 0}};
{Transpose[m], Transpose[m].m}

(* 3.3. Элементарные матрицы *)
e = {{1, 0}, {-3, 1}};
a = {{2, 1}, {6, 5}};
{e.a, Inverse[e], Inverse[e].e}

(* 3.4. Обратная матрица и критерий существования *)
a = {{2, 1}, {1, 1}};
aug = MapThread[Join, {a, IdentityMatrix[2]}];
reduced = RowReduce[aug];
ainv = reduced[[All, 3 ;; 4]];
{ainv, a.ainv, ainv.a}

(* 3.5. Группы матриц *)
ClearAll[rotation, a, b];
rotation[t_] := {{Cos[t], -Sin[t]},
  {Sin[t], Cos[t]}};
FullSimplify[rotation[a].rotation[b] -
  rotation[a + b],
  Assumptions -> Element[{a, b}, Reals]]

(* 3.6. LU, LDU и роль перестановок *)
a = {{2, 1, 1}, {4, 5, 3}, {2, 4, 4}};
l = {{1, 0, 0}, {2, 1, 0}, {1, 1, 1}};
u = {{2, 1, 1}, {0, 3, 1}, {0, 0, 2}};
d = DiagonalMatrix[Diagonal[u]];
u1 = Inverse[d].u;
{l.u == a, l.d.u1 == a, u1}

(* 3.7. Единственность и симметричное разложение *)
a = {{4, 2}, {2, 3}};
l = {{1, 0}, {1/2, 1}};
d = DiagonalMatrix[{4, 2}];
{l.d.Transpose[l], l.d.Transpose[l] == a}

(* 3.8. Повторные правые части *)
a = {{2, 1}, {4, 3}};
solver = LinearSolve[a];
{solver[{5, 11}], solver[{3, 7}]}

(* Задача 3.1 *)
a = {{1, 1}, {0, 1}}; b = DiagonalMatrix[{1, 2}];
{a.b, b.a}

(* Задача 3.2 *)
a = {{3, 1}, {2, 1}}; b = Inverse[a];
{b, a.b == IdentityMatrix[2],
 b.a == IdentityMatrix[2]}

(* Задача 3.3 *)
a = {{1, 2, 3}, {4, 5, 6}};
{Transpose[a], Dimensions[Transpose[a]]}

(* Задача 3.4 *)
l = {{1, 0}, {2, 1}}; u = {{2, 1}, {0, 1}};
l.u

(* Задача 3.5 *)
a = {{1, 1}, {0, 1}};
{MatrixPower[a, 2], a^2}

(* Задача 3.6 *)
p = {{0, 1}, {1, 0}}; a = {{1, 2}, {3, 4}};
{p.a, a.p}

(* Задача 3.7 *)
l = {{1, 0}, {1/2, 1}}; d = DiagonalMatrix[{4, 2}];
{l.d.Transpose[l],
 Expand[4 (x + y/2)^2 + 2 y^2]}

(* Задача 3.8 *)
u = {1, 2}; v = {3, -1};
a = Outer[Times, u, v];
{a, MatrixRank[a], u.v}

(* Задача 3.9 *)
a = {{2, 1}, {1, 1}};
LinearSolve[a, {5, 3}]

(* Задача 3.10 *)
a = {{2, 1}, {1, 1}}; b = {{1, 3}, {0, 2}};
x = Inverse[a].b;
{x, a.x == b}

(* Задача 3.11 *)
a = {{1, 1}, {0, 1}}; b = {{2, 0}, {1, 1}};
Inverse[a.b] == Inverse[b].Inverse[a]

(* Задача 3.12 *)
a = DiagonalMatrix[{1, 0}];
b = DiagonalMatrix[{0, 1}];
{a.b, MatrixRank[a], MatrixRank[b]}

(* Задача 3.13 *)
a = {{1, t}, {0, 1}}; b = {{1, -t}, {0, 1}};
Simplify[{a.b, b.a}]

(* Задача 3.14 *)
l = {{1, 0}, {s, 1}};
u = {{0, t}, {0, w}};
{(l.u)[[2, 1]], Det[{{0, 1}, {1, 0}}]}

(* Задача 3.15 *)
a = {{1, 2, 3}, {0, 1, 1}};
b = {{1, 0}, {0, 2}, {1, -1}};
{Tr[a.b], Tr[b.a]}
