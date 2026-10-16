(* 3. Теория матриц и разложения *)
(* Part 1; 8 source blocks; companion 1.0.0. *)
(* Evaluate the full file, or use Run_All.nb / Run_All.wls for execution reports. *)

(* P1-C03-E001 | 3.1. Алгебраические законы *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C03E001`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C03E001`*"];
$BookCompanionValue = (
a = {{1, 1}, {0, 1}};
b = {{1, 0}, {0, 2}};
{a.b, b.a, a.b - b.a}
);
Print["P1-C03-E001: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C03-E002 | 3.2. Транспонирование *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C03E002`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C03E002`*"];
$BookCompanionValue = (
m = {{1, 2}, {0, 1}, {2, 0}};
{Transpose[m], Transpose[m].m}
);
Print["P1-C03-E002: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C03-E003 | 3.3. Элементарные матрицы *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C03E003`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C03E003`*"];
$BookCompanionValue = (
e = {{1, 0}, {-3, 1}};
a = {{2, 1}, {6, 5}};
{e.a, Inverse[e], Inverse[e].e}
);
Print["P1-C03-E003: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C03-E004 | 3.4. Обратная матрица и критерий существования *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C03E004`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C03E004`*"];
$BookCompanionValue = (
a = {{2, 1}, {1, 1}};
aug = MapThread[Join, {a, IdentityMatrix[2]}];
reduced = RowReduce[aug];
ainv = reduced[[All, 3 ;; 4]];
{ainv, a.ainv, ainv.a}
);
Print["P1-C03-E004: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C03-E005 | 3.5. Группы матриц *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C03E005`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C03E005`*"];
$BookCompanionValue = (
ClearAll[rotation, a, b];
rotation[t_] := {{Cos[t], -Sin[t]},
  {Sin[t], Cos[t]}};
FullSimplify[rotation[a].rotation[b] -
  rotation[a + b], Assumptions -> {a, b} \[Element] Reals]
);
Print["P1-C03-E005: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C03-E006 | 3.6. LU, LDU и роль перестановок *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C03E006`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C03E006`*"];
$BookCompanionValue = (
a = {{2, 1, 1}, {4, 5, 3}, {2, 4, 4}};
l = {{1, 0, 0}, {2, 1, 0}, {1, 1, 1}};
u = {{2, 1, 1}, {0, 3, 1}, {0, 0, 2}};
d = DiagonalMatrix[Diagonal[u]];
u1 = Inverse[d].u;
{l.u == a, l.d.u1 == a, u1}
);
Print["P1-C03-E006: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C03-E007 | 3.7. Единственность и симметричное разложение *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C03E007`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C03E007`*"];
$BookCompanionValue = (
a = {{4, 2}, {2, 3}};
l = {{1, 0}, {1/2, 1}};
d = DiagonalMatrix[{4, 2}];
{l.d.Transpose[l], l.d.Transpose[l] == a}
);
Print["P1-C03-E007: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C03-E008 | 3.8. Повторные правые части *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C03E008`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C03E008`*"];
$BookCompanionValue = (
a = {{2, 1}, {4, 3}};
solver = LinearSolve[a];
{solver[{5, 11}], solver[{3, 7}]}
);
Print["P1-C03-E008: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;
