(* 5. Жорданово разложение *)
(* Код совпадает с книгой. Перед самостоятельным примером выполните Quit[] в отдельной ячейке. *)

(* 5.1. Обобщенные собственные векторы *)
j = {{2, 1, 0}, {0, 2, 1}, {0, 0, 2}};
n = j - 2 IdentityMatrix[3];
Table[n.UnitVector[3, k], {k, 1, 3}]

(* 5.4. Главный результат и вычисление *)
a = {{2, 1, 1}, {0, 2, 1}, {0, 0, 2}};
p = {{1, 0, 0}, {0, 1, -1}, {0, 0, 1}};
j = Inverse[p].a.p;
{j, a.p == p.j, Det[p]}

(* 5.5. Размеры блоков из ядер *)
j3 = {{0, 1, 0}, {0, 0, 1}, {0, 0, 0}};
j2 = {{0, 1}, {0, 0}};
n = ArrayFlatten[{{j3, ConstantArray[0, {3, 2}]},
 {ConstantArray[0, {2, 3}], j2}}];
dims = Table[5 - MatrixRank[MatrixPower[n, k]],
 {k, 0, 4}];
{dims, Differences[dims]}

(* 5.6. Степени и экспонента блока *)
ClearAll[t];
j = {{-1, 1}, {0, -1}};
x = FullSimplify[MatrixExp[t j].{0, 1}];
{x, FullSimplify[D[x, t] - j.x]}

(* 5.8. Почему численная жорданова форма чувствительна *)
ClearAll[e, t];
a = {{0, 1}, {e, 0}};
{CharacteristicPolynomial[a, t],
 Eigenvalues[a /. e -> 1/1000000],
 NullSpace[a /. e -> 0]}

(* Задача 5.1 *)
n = {{0, 1, 0}, {0, 0, 1}, {0, 0, 0}};
{MatrixPower[n, 2], MatrixPower[n, 3]}

(* Задача 5.2 *)
MatrixPower[{{2, 1}, {0, 2}}, 3]

(* Задача 5.3 *)
n = {{0, 1}, {0, 0}}; e = IdentityMatrix[2] + t n;
{e, D[e, t] - n.e}

(* Задача 5.4 *)
a = 3 IdentityMatrix[3];
Length[NullSpace[a - 3 IdentityMatrix[3]]]

(* Задача 5.5 *)
n = {{0, 1, 0}, {0, 0, 1}, {0, 0, 0}};
Table[n.UnitVector[3, k], {k, 1, 3}]

(* Задача 5.6 *)
d = {0, 2, 4, 5, 5};
{Differences[d],
 Table[d[[k + 1]] - d[[k]], {k, 1, 4}]}

(* Задача 5.7 *)
a = {{3, 1}, {-1, 1}}; n = a - 2 IdentityMatrix[2];
{CharacteristicPolynomial[a, t], n.n, MatrixRank[n]}

(* Задача 5.8 *)
a = {{3, 1}, {-1, 1}}; p = {{1, 1}, {-1, 0}};
{Det[p], Inverse[p].a.p}

(* Задача 5.9 *)
j = {{-1, 1}, {0, -1}};
x = {t Exp[-t], Exp[-t]};
{Simplify[D[x, t] - j.x], x /. t -> 0}

(* Задача 5.10 *)
a = DiagonalMatrix[{2, 2, 3}];
{(a - 2 IdentityMatrix[3]).
 (a - 3 IdentityMatrix[3]),
 Factor[CharacteristicPolynomial[a, t]]}

(* Задача 5.11 *)
n = {{0, 1, 0}, {0, 0, 1}, {0, 0, 0}};
MatrixPower[n, 2].{a, b, c}

(* Задача 5.12 *)
sizes = {4, 2, 1};
d = Table[Total[Min[k, #] & /@ sizes], {k, 0, 5}];
{d, Differences[d]}

(* Задача 5.13 *)
a = ConstantArray[0, {2, 2}]; b = {{0, 1}, {0, 0}};
{CharacteristicPolynomial[a, t],
 CharacteristicPolynomial[b, t],
 MatrixRank[a], MatrixRank[b]}

(* Задача 5.14 *)
a = {{0, 1}, {e, 0}};
{CharacteristicPolynomial[a, t],
 Sort[Eigenvalues[a /. e -> 1/1000000]]}

(* Задача 5.15 *)
n = {{0, 1}, {0, 0}}; j = 2 IdentityMatrix[2] + n;
Table[MatrixPower[j, m] ==
 2^m IdentityMatrix[2] + m 2^(m - 1) n, {m, 1, 4}]
