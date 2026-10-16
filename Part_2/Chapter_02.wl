(* 2. Собственные значения и динамика *)
(* Part 2; 6 source blocks; companion 1.0.0. *)
(* Evaluate the full file, or use Run_All.nb / Run_All.wls for execution reports. *)

(* P2-C02-E001 | 2.1. Дискретная динамика и Фибоначчи *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C02E001`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C02E001`*"];
$BookCompanionValue = (
a = {{1, 1}, {1, 0}};
states = NestList[a.# &, {1, 0}, 8];
{states, MatrixPower[a, 8].{1, 0}}
);
Print["P2-C02-E001: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C02-E002 | 2.2. Собственные пары и характеристический многочлен *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C02E002`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C02E002`*"];
$BookCompanionValue = (
ClearAll[t];
a = {{2, 1}, {1, 2}};
{Factor[CharacteristicPolynomial[a, t]],
 Eigensystem[a]}
);
Print["P2-C02-E002: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C02-E003 | 2.4. Диагонализация и кратности *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C02E003`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C02E003`*"];
$BookCompanionValue = (
j = {{2, 1}, {0, 2}};
{CharacteristicPolynomial[j, t],
 NullSpace[j - 2 IdentityMatrix[2]],
 MatrixPower[j, 4]}
);
Print["P2-C02-E003: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C02-E004 | 2.5. Формула Фибоначчи *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C02E004`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C02E004`*"];
$BookCompanionValue = (
phi = (1 + Sqrt[5])/2;
psi = (1 - Sqrt[5])/2;
Table[FullSimplify[(phi^k - psi^k)/Sqrt[5]],
 {k, 0, 10}]
);
Print["P2-C02-E004: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C02-E005 | 2.7. Теорема Кэли–Гамильтона *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C02E005`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C02E005`*"];
$BookCompanionValue = (
a = {{2, 1}, {1, 2}};
{a.a - 4 a + 3 IdentityMatrix[2],
 (4 IdentityMatrix[2] - a)/3 == Inverse[a]}
);
Print["P2-C02-E005: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C02-E006 | 2.8. Экспонента и системы дифференциальных уравнений *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C02E006`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C02E006`*"];
$BookCompanionValue = (
ClearAll[t];
a = {{-2, 1}, {1, -2}};
x = FullSimplify[MatrixExp[t a].{1, 0}];
{x, FullSimplify[D[x, t] - a.x], x /. t -> 0}
);
Print["P2-C02-E006: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;
