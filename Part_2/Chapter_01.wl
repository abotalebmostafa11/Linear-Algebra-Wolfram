(* 1. Определители и геометрия *)
(* Part 2; 7 source blocks; companion 1.0.0. *)
(* Evaluate the full file, or use Run_All.nb / Run_All.wls for execution reports. *)

(* P2-C01-E001 | 1.1. Начальные случаи *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C01E001`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C01E001`*"];
$BookCompanionValue = (
a = {{3, 1}, {1, 2}};
{Det[a], Det[a[[All, {2, 1}]]], Abs[Det[a]]}
);
Print["P2-C01-E001: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C01-E002 | 1.2. Перестановки и определение *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C01E002`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C01E002`*"];
$BookCompanionValue = (
{Signature[{3, 1, 2}], Signature[{2, 1, 3}],
 Det[{{2, 4, 1}, {0, -3, 5}, {0, 0, 7}}]}
);
Print["P2-C01-E002: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C01-E003 | 1.3. Матричная перестановка *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C01E003`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C01E003`*"];
$BookCompanionValue = (
p = IdentityMatrix[3][[{3, 1, 2}]];
{p, Det[p], p.Transpose[p]}
);
Print["P2-C01-E003: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C01-E004 | 1.4. Линейность и операции над строками *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C01E004`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C01E004`*"];
$BookCompanionValue = (
a = {{2, 1, 0}, {4, 3, 1}, {2, 1, 2}};
b = a;
b[[2]] = a[[2]] - 2 a[[1]];
b[[3]] = a[[3]] - a[[1]];
{b, Det[a], Times @@ Diagonal[b]}
);
Print["P2-C01-E004: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C01-E005 | 1.6. Разложение Лапласа и правило Крамера *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C01E005`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C01E005`*"];
$BookCompanionValue = (
a = {{2, 1}, {1, 3}}; b = {7, 11};
a1 = Transpose[{b, a[[All, 2]]}];
a2 = Transpose[{a[[All, 1]], b}];
{Det[a1]/Det[a], Det[a2]/Det[a]}
);
Print["P2-C01-E005: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C01-E006 | 1.7. Целочисленная обратимость *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C01E006`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C01E006`*"];
$BookCompanionValue = (
a = {{2, 1}, {1, 1}};
{Det[a], Inverse[a], Inverse[2 IdentityMatrix[2]]}
);
Print["P2-C01-E006: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C01-E007 | 1.8. Объемы и тождество Льюиса Кэрролла *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C01E007`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C01E007`*"];
$BookCompanionValue = (
a = {{2, 1, 3}, {1, 4, 2}, {0, 2, 5}};
left = Det[a] a[[2, 2]];
right = Det[a[[{1, 2}, {1, 2}]]] *
  Det[a[[{2, 3}, {2, 3}]]] -
  Det[a[[{1, 2}, {2, 3}]]] *
  Det[a[[{2, 3}, {1, 2}]]];
{Det[a], left, right}
);
Print["P2-C01-E007: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;
