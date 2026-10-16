(* 2. Ортогональные и сингулярные разложения *)
(* Part 3; 7 source blocks; companion 1.0.0. *)
(* Evaluate the full file, or use Run_All.nb / Run_All.wls for execution reports. *)

(* P3-C02-E001 | 2.1. Метод Грама–Шмидта *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C02E001`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C02E001`*"];
$BookCompanionValue = (
a1 = {1, 1, 0}; a2 = {1, 0, 1};
q1 = a1/Norm[a1];
v2 = a2 - q1 (Conjugate[q1].a2);
q2 = FullSimplify[v2/Norm[v2]];
{q1, q2, FullSimplify[Conjugate[q1].q2]}
);
Print["P3-C02-E001: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C02-E002 | 2.2. QR-разложение *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C02E002`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C02E002`*"];
$BookCompanionValue = (
a = {{1, 1}, {1, 0}, {0, 1}};
{qStored, r} = QRDecomposition[a];
q = ConjugateTranspose[qStored];
{FullSimplify[q.r - a],
 FullSimplify[ConjugateTranspose[q].q]}
);
Print["P3-C02-E002: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C02-E003 | 2.3. Сингулярное разложение и псевдообратная *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C02E003`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C02E003`*"];
$BookCompanionValue = (
a = {{1, 1}};
b = {2};
pinv = PseudoInverse[a];
x = pinv.b;
{pinv, x, a.x}
);
Print["P3-C02-E003: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C02-E004 | 2.3.1. Главные компоненты: сжатие признаков *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C02E004`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C02E004`*"];
$BookCompanionValue = (
x = {{-2, -1}, {-1, -2}, {1, 2}, {2, 1}};
mean = Mean[x];
xc = (# - mean) & /@ x;
v1 = {1, 1}/Sqrt[2];
z = xc.v1;
xOne = Outer[Times, z, v1];
err = Total[Flatten[(xc - xOne)^2]];
{mean, Transpose[xc].xc, z, xOne, err,
 1 - err/Total[Flatten[xc^2]]}
);
Print["P3-C02-E004: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C02-E005 | 2.3.2. Регуляризация и гребневая регрессия *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C02E005`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C02E005`*"];
$BookCompanionValue = (
a = {{1, 1}, {2, 2}}; b = {1, 2};
lambda = 1;
normal = Transpose[a].a + lambda IdentityMatrix[2];
x = LinearSolve[normal, Transpose[a].b];
r = b - a.x;
{x, a.x, r, Transpose[a].r - lambda x,
 r.r, x.x, r.r + lambda x.x}
);
Print["P3-C02-E005: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C02-E006 | 2.4. Скалярное произведение функций *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C02E006`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C02E006`*"];
$BookCompanionValue = (
ClearAll[t];
c = Integrate[t^2, {t, -1, 1}]/
  Integrate[1, {t, -1, 1}];
{c, Integrate[t^2 - c, {t, -1, 1}],
 Integrate[(t^2 - c)^2, {t, -1, 1}]}
);
Print["P3-C02-E006: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C02-E007 | 2.5. Изометрии и вращения пространства *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C02E007`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C02E007`*"];
$BookCompanionValue = (
q = {{0, -1, 0}, {1, 0, 0}, {0, 0, 1}};
{Transpose[q].q, Det[q],
 NullSpace[q - IdentityMatrix[3]]}
);
Print["P3-C02-E007: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;
