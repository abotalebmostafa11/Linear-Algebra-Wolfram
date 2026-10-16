(* 2. Линейные уравнения и матрицы *)
(* Part 1; 8 source blocks; companion 1.0.0. *)
(* Evaluate the full file, or use Run_All.nb / Run_All.wls for execution reports. *)

(* P1-C02-E001 | 2.1. Уравнение как ограничение *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C02E001`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C02E001`*"];
$BookCompanionValue = (
a = {{1, 1}, {1/5, 1/2}};
b = {10, 16/5};
x = LinearSolve[a, b];
{x, a.x}
);
Print["P1-C02-E001: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C02-E002 | 2.2. Матрицы, сложение и произведение *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C02E002`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C02E002`*"];
$BookCompanionValue = (
orders = {{2, 3}, {4, 1}};
prices = {{5, 7}, {2, 3}};
cost = orders.prices;
{Dimensions[cost], cost}
);
Print["P1-C02-E002: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C02-E003 | 2.3. Элементарные преобразования и эквивалентность *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C02E003`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C02E003`*"];
$BookCompanionValue = (
aug = {{1, 1, 3}, {2, 3, 8}};
next = aug;
next[[2]] = aug[[2]] - 2 aug[[1]];
{next, RowReduce[aug]}
);
Print["P1-C02-E003: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C02-E004 | 2.4. Метод Гаусса по шагам *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C02E004`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C02E004`*"];
$BookCompanionValue = (
a = {{1, 1, 1}, {2, -1, 1}, {1, 2, -1}};
b = {6, 3, 2};
aug = MapThread[Append, {a, b}];
rref = RowReduce[aug];
x = LinearSolve[a, b];
{rref, x, b - a.x}
);
Print["P1-C02-E004: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C02-E005 | 2.5. Приведенная ступенчатая форма *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C02E005`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C02E005`*"];
$BookCompanionValue = (
ClearAll[s, t];
a = {{1, 2, 0, -1}, {0, 0, 1, 4}};
x = {3 - 2 s + t, s, 5 - 4 t, t};
{Expand[a.x], NullSpace[a]}
);
Print["P1-C02-E005: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C02-E006 | 2.6. Однородная и неоднородная системы *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C02E006`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C02E006`*"];
$BookCompanionValue = (
ClearAll[t];
xp = {6, 0};
direction = {-2, 1};
family = xp + t direction;
{family, Expand[{1, 2}.family]}
);
Print["P1-C02-E006: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C02-E007 | 2.7. Совместность, ранг и единственность *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C02E007`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C02E007`*"];
$BookCompanionValue = (
a = {{1, 1}, {2, 2}};
Table[
 {c, MatrixRank[a],
  MatrixRank[MapThread[Append, {a, {2, c}}]]},
 {c, {4, 5}}]
);
Print["P1-C02-E007: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C02-E008 | 2.8. Контрольная задача с интерпретацией *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C02E008`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C02E008`*"];
$BookCompanionValue = (
a = {{1, 1}, {1, -1}};
b = {120, 20};
flow = LinearSolve[a, b];
{flow, Min[flow] >= 0, a.flow == b}
);
Print["P1-C02-E008: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;
