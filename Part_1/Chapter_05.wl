(* 5. Конечномерные пространства *)
(* Part 1; 7 source blocks; companion 1.0.0. *)
(* Evaluate the full file, or use Run_All.nb / Run_All.wls for execution reports. *)

(* P1-C05-E001 | 5.1. Линейная независимость *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C05E001`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C05E001`*"];
$BookCompanionValue = (
u = {1, 0, 1}; v = {0, 1, 1}; w = {1, 1, 2};
a = Transpose[{u, v, w}];
{u + v - w, MatrixRank[a], NullSpace[a]}
);
Print["P1-C05-E001: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C05-E002 | 5.2. Базис и единственность координат *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C05E002`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C05E002`*"];
$BookCompanionValue = (
basisMatrix = Transpose[{{1, 1}, {1, -1}}];
x = {5, 1};
coordinates = LinearSolve[basisMatrix, x];
{coordinates, basisMatrix.coordinates}
);
Print["P1-C05-E002: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C05-E003 | 5.3. Теорема о размерности *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C05E003`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C05E003`*"];
$BookCompanionValue = (
ClearAll[a, b, c];
e1 = {{1, 0}, {0, 0}};
e2 = {{0, 0}, {0, 1}};
e3 = {{0, 1}, {1, 0}};
a e1 + c e2 + b e3
);
Print["P1-C05-E003: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C05-E004 | 5.4. Пространства строк и столбцов *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C05E004`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C05E004`*"];
$BookCompanionValue = (
a = {{1, 2, 0}, {2, 4, 1}, {0, 0, 1}};
{RowReduce[a], a[[All, {1, 3}]], MatrixRank[a]}
);
Print["P1-C05-E004: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C05-E005 | 5.6. Сумма, пересечение и формула Грассмана *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C05E005`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C05E005`*"];
$BookCompanionValue = (
u = {{1, 0, 0}, {0, 1, 0}};
w = {{0, 1, 0}, {0, 0, 1}};
sumDim = MatrixRank[Join[u, w]];
intersectionDim = MatrixRank[u] +
  MatrixRank[w] - sumDim;
{sumDim, intersectionDim}
);
Print["P1-C05-E005: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C05-E006 | 5.7. Прямая сумма *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C05E006`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C05E006`*"];
$BookCompanionValue = (
ClearAll[t];
p = 1 + 2 t + 3 t^2 + 4 t^3;
even = Expand[(p + (p /. t -> -t))/2];
odd = Expand[(p - (p /. t -> -t))/2];
{even, odd, Expand[even + odd - p]}
);
Print["P1-C05-E006: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C05-E007 | 5.8. Факторпространство *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C05E007`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C05E007`*"];
$BookCompanionValue = (
x = {4, 7, 10};
centered = x - Mean[x];
shifted = x + 100;
{centered, shifted - Mean[shifted]}
);
Print["P1-C05-E007: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;
