(* 5. Жорданово разложение *)
(* Part 2; 5 source blocks; companion 1.0.0. *)
(* Evaluate the full file, or use Run_All.nb / Run_All.wls for execution reports. *)

(* P2-C05-E001 | 5.1. Обобщенные собственные векторы *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C05E001`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C05E001`*"];
$BookCompanionValue = (
j = {{2, 1, 0}, {0, 2, 1}, {0, 0, 2}};
n = j - 2 IdentityMatrix[3];
Table[n.UnitVector[3, k], {k, 1, 3}]
);
Print["P2-C05-E001: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C05-E002 | 5.4. Главный результат и вычисление *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C05E002`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C05E002`*"];
$BookCompanionValue = (
a = {{2, 1, 1}, {0, 2, 1}, {0, 0, 2}};
p = {{1, 0, 0}, {0, 1, -1}, {0, 0, 1}};
j = Inverse[p].a.p;
{j, a.p == p.j, Det[p]}
);
Print["P2-C05-E002: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C05-E003 | 5.5. Размеры блоков из ядер *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C05E003`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C05E003`*"];
$BookCompanionValue = (
j3 = {{0, 1, 0}, {0, 0, 1}, {0, 0, 0}};
j2 = {{0, 1}, {0, 0}};
n = ArrayFlatten[{{j3, ConstantArray[0, {3, 2}]},
 {ConstantArray[0, {2, 3}], j2}}];
dims = Table[5 - MatrixRank[MatrixPower[n, k]],
 {k, 0, 4}];
{dims, Differences[dims]}
);
Print["P2-C05-E003: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C05-E004 | 5.6. Степени и экспонента блока *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C05E004`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C05E004`*"];
$BookCompanionValue = (
ClearAll[t];
j = {{-1, 1}, {0, -1}};
x = FullSimplify[MatrixExp[t j].{0, 1}];
{x, FullSimplify[D[x, t] - j.x]}
);
Print["P2-C05-E004: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C05-E005 | 5.8. Почему численная жорданова форма чувствительна *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C05E005`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C05E005`*"];
$BookCompanionValue = (
ClearAll[e, t];
a = {{0, 1}, {e, 0}};
{CharacteristicPolynomial[a, t],
 Eigenvalues[a /. e -> 1/1000000],
 NullSpace[a /. e -> 0]}
);
Print["P2-C05-E005: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;
