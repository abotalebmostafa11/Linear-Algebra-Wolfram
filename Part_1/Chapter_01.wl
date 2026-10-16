(* 1. Введение. Язык линейной алгебры *)
(* Part 1; 6 source blocks; companion 1.0.0. *)
(* Evaluate the full file, or use Run_All.nb / Run_All.wls for execution reports. *)

(* P1-C01-E001 | 1.1. Скаляр, вектор, матрица и тензор *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C01E001`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C01E001`*"];
$BookCompanionValue = (
u = {3, 1};
v = {1, 3};
total = u + v;
{total, Norm[u] + Norm[v], Norm[total]}
);
Print["P1-C01-E001: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C01-E002 | 1.1. Скаляр, вектор, матрица и тензор *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C01E002`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C01E002`*"];
$BookCompanionValue = (
quantity = {2, 3, 1};
price = {100, 40, 250};
quantity.price
);
Print["P1-C01-E002: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C01-E003 | 1.2. Линейность и принцип суперпозиции *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C01E003`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C01E003`*"];
$BookCompanionValue = (
ClearAll[f, t, x, y, a, b];
t[x_] := 50 x;
f[x_] := 50 x + 200;
Expand[t[a x + b y] - a t[x] - b t[y]]
Expand[f[a x + b y] - a f[x] - b f[y]]
);
Print["P1-C01-E003: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C01-E004 | 1.3. От жизненной задачи к проверенному ответу *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C01E004`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C01E004`*"];
$BookCompanionValue = (
a = {{2, 1}, {1, 2}};
b = {12, 12};
solution = LinearSolve[a, b];
residual = b - a.solution;
{solution, residual}
);
Print["P1-C01-E004: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C01-E005 | 1.4. Точная арифметика, округление и обусловленность *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C01E005`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C01E005`*"];
$BookCompanionValue = (
eps = 1/100000;
a = {{1, 1}, {1, 1 + eps}};
b = {2, 2 + eps};
x0 = LinearSolve[a, b];
x1 = LinearSolve[a, b + {0, eps}];
kappa = Norm[N[a], 2] Norm[Inverse[N[a]], 2];
{x0, x1, kappa}
);
Print["P1-C01-E005: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C01-E006 | 1.5. Как читать доказательство и проверять код *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C01E006`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C01E006`*"];
$BookCompanionValue = (
ClearAll[x1, x2, y1, y2, a, b];
m = {{1, -1}, {0, 2}};
Expand[m.(a {x1, x2} + b {y1, y2}) -
  a m.{x1, x2} - b m.{y1, y2}]
);
Print["P1-C01-E006: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;
