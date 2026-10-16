(* 5. Жорданово разложение *)

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
