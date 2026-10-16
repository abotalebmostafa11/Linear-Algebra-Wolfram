(* 3. Унитарная диагонализация *)
(* Part 2; 4 source blocks; companion 1.0.0. *)
(* Evaluate the full file, or use Run_All.nb / Run_All.wls for execution reports. *)

(* P2-C03-E001 | 3.1. Сопряженный оператор и нормальность *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C03E001`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C03E001`*"];
$BookCompanionValue = (
a = {{1, -2}, {2, 1}};
{ConjugateTranspose[a].a,
 a.ConjugateTranspose[a], Eigenvalues[a]}
);
Print["P2-C03-E001: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C03-E002 | 3.3. Эрмитовы матрицы и главные оси *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C03E002`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C03E002`*"];
$BookCompanionValue = (
a = {{3, 1}, {1, 3}};
q = {{1, 1}, {1, -1}}/Sqrt[2];
{FullSimplify[Transpose[q].a.q],
 FullSimplify[Transpose[q].q]}
);
Print["P2-C03-E002: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C03-E003 | 3.4. Спектральные проекторы *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C03E003`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C03E003`*"];
$BookCompanionValue = (
a = {{3, 1}, {1, 3}};
p4 = (a - 2 IdentityMatrix[2])/2;
p2 = (4 IdentityMatrix[2] - a)/2;
{p4.p4 == p4, p4.p2,
 4 p4 + 2 p2 == a}
);
Print["P2-C03-E003: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C03-E004 | 3.5. Самосопряженность вне стандартных координат *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C03E004`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C03E004`*"];
$BookCompanionValue = (
p = {{1, 1}, {0, 1}};
d = DiagonalMatrix[{1, 2}];
b = Inverse[p].d.p;
g = Transpose[p].p;
{b, g, Transpose[b].g == g.b}
);
Print["P2-C03-E004: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;
