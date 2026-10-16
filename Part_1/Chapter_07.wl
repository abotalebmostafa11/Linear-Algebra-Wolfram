(* 7. Линейные преобразования *)
(* Part 1; 7 source blocks; companion 1.0.0. *)
(* Evaluate the full file, or use Run_All.nb / Run_All.wls for execution reports. *)

(* P1-C07-E001 | 7.1. Отображение и его свойства *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C07E001`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C07E001`*"];
$BookCompanionValue = (
ClearAll[t, a, b, c];
p = a + b t + c t^2;
{D[p, t], CoefficientList[D[p, t], t]}
);
Print["P1-C07-E001: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C07-E002 | 7.2. Матрица преобразования *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C07E002`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C07E002`*"];
$BookCompanionValue = (
dmat = {{0, 1, 0}, {0, 0, 2}};
coefficients = {3, -2, 4};
dmat.coefficients
);
Print["P1-C07-E002: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C07-E003 | 7.3. Композиция и умножение *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C07E003`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C07E003`*"];
$BookCompanionValue = (
stretch = {{2, 0}, {0, 1}};
rotation = {{0, -1}, {1, 0}};
x = {1, 1};
{rotation.stretch.x, stretch.rotation.x}
);
Print["P1-C07-E003: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C07-E004 | 7.4. Поворот, отражение и сдвиговое преобразование *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C07E004`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C07E004`*"];
$BookCompanionValue = (
q = {{3/5, -4/5}, {4/5, 3/5}};
x = {2, -1};
{Transpose[q].q, Norm[q.x], Norm[x], Det[q]}
);
Print["P1-C07-E004: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C07-E005 | 7.5. Смена базиса *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C07E005`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C07E005`*"];
$BookCompanionValue = (
a = {{2, 1}, {1, 2}};
p = {{1, 1}, {1, -1}};
new = Inverse[p].a.p;
{new, a.p == p.new}
);
Print["P1-C07-E005: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C07-E006 | 7.6. Ядро, образ и теорема о ранге *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C07E006`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C07E006`*"];
$BookCompanionValue = (
a = {{1, 0, 1}, {0, 1, 1}};
{NullSpace[a], MatrixRank[a],
 Length[NullSpace[a]] + MatrixRank[a]}
);
Print["P1-C07-E006: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C07-E007 | 7.8. Комплексная и вещественная линейность *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C07E007`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C07E007`*"];
$BookCompanionValue = (
{Conjugate[I*1], I Conjugate[1],
 Conjugate[2 + 3 I]}
);
Print["P1-C07-E007: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;
