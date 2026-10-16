(* 1. Ортогональные проекции и наименьшие квадраты *)
(* Part 3; 4 source blocks; companion 1.0.0. *)
(* Evaluate the full file, or use Run_All.nb / Run_All.wls for execution reports. *)

(* P3-C01-E001 | 1.1. Проекция на прямую *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C01E001`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C01E001`*"];
$BookCompanionValue = (
u = {2, 1}; b = {1, 3};
p = (Conjugate[u].b)/(Conjugate[u].u) u;
r = b - p;
{p, r, Conjugate[u].r, Norm[r]}
);
Print["P3-C01-E001: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C01-E002 | 1.3. Ортогональное дополнение *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C01E002`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C01E002`*"];
$BookCompanionValue = (
normal = {1, 1, 1};
basis = NullSpace[{normal}];
{basis, basis.normal, MatrixRank[basis]}
);
Print["P3-C01-E002: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C01-E003 | 1.4. Наименьшие квадраты *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C01E003`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C01E003`*"];
$BookCompanionValue = (
a = {{1, 0}, {1, 1}, {1, 2}};
b = {1, 2, 2};
x = LeastSquares[a, b];
r = b - a.x;
{x, r, Transpose[a].r, r.r}
);
Print["P3-C01-E003: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C01-E004 | 1.4.1. Линейная регрессия как задача приближения *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C01E004`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C01E004`*"];
$BookCompanionValue = (
t = {0, 1, 2}; y = {1, 2, 2};
tc = t - Mean[t]; yc = y - Mean[y];
slope = (tc.yc)/(tc.tc);
intercept = Mean[y] - slope Mean[t];
design = Transpose[{ConstantArray[1, Length[t]], t}];
beta = {intercept, slope};
residual = y - design.beta;
{beta, Total[residual], tc.residual,
 beta == LeastSquares[design, y]}
);
Print["P3-C01-E004: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;
