(* 3. Теория матриц и разложения *)

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
  rotation[a + b], Assumptions -> {a, b} \[Element] Reals]

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
