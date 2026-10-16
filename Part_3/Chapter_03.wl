(* 3. Практикум. Решения с промежуточными вычислениями *)
(* Part 3; 54 source blocks; companion 1.0.0. *)
(* Evaluate the full file, or use Run_All.nb / Run_All.wls for execution reports. *)

(* P3-C03-E001 | 3.1.1. Вариант 1. Переход между двумя категориями. Модель 1 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E001`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E001`*"];
$BookCompanionValue = (
p = {{4/5, 1/5},
 {1/5, 4/5}};
x0 = {1, 0};
stationary = {1/2, 1/2};
lambda2 = 3/5;
x4 = stationary + lambda2^4 (x0 - stationary);
{Total /@ Transpose[p], p.x0, p.p.x0,
 stationary, x4, MatrixPower[p, 4].x0,
 p.stationary - stationary}
);
Print["P3-C03-E001: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E002 | 3.1.2. Вариант 2. Переход между двумя категориями. Модель 2 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E002`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E002`*"];
$BookCompanionValue = (
p = {{7/10, 1/5},
 {3/10, 4/5}};
x0 = {1, 0};
stationary = {2/5, 3/5};
lambda2 = 1/2;
x4 = stationary + lambda2^4 (x0 - stationary);
{Total /@ Transpose[p], p.x0, p.p.x0,
 stationary, x4, MatrixPower[p, 4].x0,
 p.stationary - stationary}
);
Print["P3-C03-E002: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E003 | 3.1.3. Вариант 3. Переход между двумя категориями. Модель 3 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E003`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E003`*"];
$BookCompanionValue = (
p = {{3/5, 1/5},
 {2/5, 4/5}};
x0 = {1, 0};
stationary = {1/3, 2/3};
lambda2 = 2/5;
x4 = stationary + lambda2^4 (x0 - stationary);
{Total /@ Transpose[p], p.x0, p.p.x0,
 stationary, x4, MatrixPower[p, 4].x0,
 p.stationary - stationary}
);
Print["P3-C03-E003: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E004 | 3.1.4. Вариант 4. Переход между двумя категориями. Модель 4 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E004`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E004`*"];
$BookCompanionValue = (
p = {{1/2, 1/5},
 {1/2, 4/5}};
x0 = {1, 0};
stationary = {2/7, 5/7};
lambda2 = 3/10;
x4 = stationary + lambda2^4 (x0 - stationary);
{Total /@ Transpose[p], p.x0, p.p.x0,
 stationary, x4, MatrixPower[p, 4].x0,
 p.stationary - stationary}
);
Print["P3-C03-E004: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E005 | 3.1.5. Вариант 5. Переход между двумя категориями. Модель 5 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E005`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E005`*"];
$BookCompanionValue = (
p = {{2/5, 1/5},
 {3/5, 4/5}};
x0 = {1, 0};
stationary = {1/4, 3/4};
lambda2 = 1/5;
x4 = stationary + lambda2^4 (x0 - stationary);
{Total /@ Transpose[p], p.x0, p.p.x0,
 stationary, x4, MatrixPower[p, 4].x0,
 p.stationary - stationary}
);
Print["P3-C03-E005: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E006 | 3.1.6. Вариант 6. Переход между двумя категориями. Модель 6 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E006`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E006`*"];
$BookCompanionValue = (
p = {{3/10, 1/5},
 {7/10, 4/5}};
x0 = {1, 0};
stationary = {2/9, 7/9};
lambda2 = 1/10;
x4 = stationary + lambda2^4 (x0 - stationary);
{Total /@ Transpose[p], p.x0, p.p.x0,
 stationary, x4, MatrixPower[p, 4].x0,
 p.stationary - stationary}
);
Print["P3-C03-E006: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E007 | 3.2.1. Вариант 1. Объясненная компонента сигнала. Направление 1 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E007`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E007`*"];
$BookCompanionValue = (
u = {1, 1};
b = {3, 1};
norm2 = u.u;
coefficient = (u.b)/norm2;
p = coefficient u;
r = b - p;
{coefficient, p, r, u.r,
 b.b, p.p + r.r}
);
Print["P3-C03-E007: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E008 | 3.2.2. Вариант 2. Объясненная компонента сигнала. Направление 2 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E008`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E008`*"];
$BookCompanionValue = (
u = {1, 2};
b = {4, 1};
norm2 = u.u;
coefficient = (u.b)/norm2;
p = coefficient u;
r = b - p;
{coefficient, p, r, u.r,
 b.b, p.p + r.r}
);
Print["P3-C03-E008: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E009 | 3.2.3. Вариант 3. Объясненная компонента сигнала. Направление 3 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E009`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E009`*"];
$BookCompanionValue = (
u = {1, 3};
b = {5, 1};
norm2 = u.u;
coefficient = (u.b)/norm2;
p = coefficient u;
r = b - p;
{coefficient, p, r, u.r,
 b.b, p.p + r.r}
);
Print["P3-C03-E009: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E010 | 3.2.4. Вариант 4. Объясненная компонента сигнала. Направление 4 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E010`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E010`*"];
$BookCompanionValue = (
u = {1, 4};
b = {6, 1};
norm2 = u.u;
coefficient = (u.b)/norm2;
p = coefficient u;
r = b - p;
{coefficient, p, r, u.r,
 b.b, p.p + r.r}
);
Print["P3-C03-E010: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E011 | 3.2.5. Вариант 5. Объясненная компонента сигнала. Направление 5 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E011`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E011`*"];
$BookCompanionValue = (
u = {1, 5};
b = {7, 1};
norm2 = u.u;
coefficient = (u.b)/norm2;
p = coefficient u;
r = b - p;
{coefficient, p, r, u.r,
 b.b, p.p + r.r}
);
Print["P3-C03-E011: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E012 | 3.2.6. Вариант 6. Объясненная компонента сигнала. Направление 6 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E012`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E012`*"];
$BookCompanionValue = (
u = {1, 6};
b = {8, 1};
norm2 = u.u;
coefficient = (u.b)/norm2;
p = coefficient u;
r = b - p;
{coefficient, p, r, u.r,
 b.b, p.p + r.r}
);
Print["P3-C03-E012: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E013 | 3.3.1. Вариант 1. Калибровка положения. Плоскость 1 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E013`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E013`*"];
$BookCompanionValue = (
n = {1, 2, 1};
d = 3; b = {1, 1, 3};
delta = n.b - d;
shift = delta/(n.n) n;
p = b - shift;
{delta, shift, p, n.p,
 (b - p).(b - p), delta^2/(n.n)}
);
Print["P3-C03-E013: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E014 | 3.3.2. Вариант 2. Калибровка положения. Плоскость 2 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E014`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E014`*"];
$BookCompanionValue = (
n = {1, 2, 2};
d = 4; b = {2, 1, 3};
delta = n.b - d;
shift = delta/(n.n) n;
p = b - shift;
{delta, shift, p, n.p,
 (b - p).(b - p), delta^2/(n.n)}
);
Print["P3-C03-E014: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E015 | 3.3.3. Вариант 3. Калибровка положения. Плоскость 3 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E015`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E015`*"];
$BookCompanionValue = (
n = {1, 2, 3};
d = 5; b = {3, 1, 3};
delta = n.b - d;
shift = delta/(n.n) n;
p = b - shift;
{delta, shift, p, n.p,
 (b - p).(b - p), delta^2/(n.n)}
);
Print["P3-C03-E015: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E016 | 3.3.4. Вариант 4. Калибровка положения. Плоскость 4 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E016`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E016`*"];
$BookCompanionValue = (
n = {1, 2, 4};
d = 6; b = {4, 1, 3};
delta = n.b - d;
shift = delta/(n.n) n;
p = b - shift;
{delta, shift, p, n.p,
 (b - p).(b - p), delta^2/(n.n)}
);
Print["P3-C03-E016: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E017 | 3.3.5. Вариант 5. Калибровка положения. Плоскость 5 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E017`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E017`*"];
$BookCompanionValue = (
n = {1, 2, 5};
d = 7; b = {5, 1, 3};
delta = n.b - d;
shift = delta/(n.n) n;
p = b - shift;
{delta, shift, p, n.p,
 (b - p).(b - p), delta^2/(n.n)}
);
Print["P3-C03-E017: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E018 | 3.3.6. Вариант 6. Калибровка положения. Плоскость 6 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E018`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E018`*"];
$BookCompanionValue = (
n = {1, 2, 6};
d = 8; b = {6, 1, 3};
delta = n.b - d;
shift = delta/(n.n) n;
p = b - shift;
{delta, shift, p, n.p,
 (b - p).(b - p), delta^2/(n.n)}
);
Print["P3-C03-E018: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E019 | 3.4.1. Вариант 1. Четыре показания прибора. Серия 1 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E019`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E019`*"];
$BookCompanionValue = (
a = {{1, 0},
 {1, 1},
 {1, 2},
 {1, 3}};
b = {2, 2, 5, 8};
normal = Transpose[a].a;
rhs = Transpose[a].b;
coefficients = LinearSolve[normal, rhs];
predicted = a.coefficients;
residual = b - predicted;
{normal, rhs, coefficients, predicted, residual,
 Transpose[a].residual, residual.residual,
 LeastSquares[a, b]}
);
Print["P3-C03-E019: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E020 | 3.4.2. Вариант 2. Четыре показания прибора. Серия 2 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E020`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E020`*"];
$BookCompanionValue = (
a = {{1, 0},
 {1, 1},
 {1, 2},
 {1, 3}};
b = {3, 3, 7, 9};
normal = Transpose[a].a;
rhs = Transpose[a].b;
coefficients = LinearSolve[normal, rhs];
predicted = a.coefficients;
residual = b - predicted;
{normal, rhs, coefficients, predicted, residual,
 Transpose[a].residual, residual.residual,
 LeastSquares[a, b]}
);
Print["P3-C03-E020: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E021 | 3.4.3. Вариант 3. Четыре показания прибора. Серия 3 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E021`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E021`*"];
$BookCompanionValue = (
a = {{1, 0},
 {1, 1},
 {1, 2},
 {1, 3}};
b = {4, 4, 9, 10};
normal = Transpose[a].a;
rhs = Transpose[a].b;
coefficients = LinearSolve[normal, rhs];
predicted = a.coefficients;
residual = b - predicted;
{normal, rhs, coefficients, predicted, residual,
 Transpose[a].residual, residual.residual,
 LeastSquares[a, b]}
);
Print["P3-C03-E021: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E022 | 3.4.4. Вариант 4. Четыре показания прибора. Серия 4 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E022`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E022`*"];
$BookCompanionValue = (
a = {{1, 0},
 {1, 1},
 {1, 2},
 {1, 3}};
b = {5, 5, 11, 11};
normal = Transpose[a].a;
rhs = Transpose[a].b;
coefficients = LinearSolve[normal, rhs];
predicted = a.coefficients;
residual = b - predicted;
{normal, rhs, coefficients, predicted, residual,
 Transpose[a].residual, residual.residual,
 LeastSquares[a, b]}
);
Print["P3-C03-E022: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E023 | 3.4.5. Вариант 5. Четыре показания прибора. Серия 5 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E023`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E023`*"];
$BookCompanionValue = (
a = {{1, 0},
 {1, 1},
 {1, 2},
 {1, 3}};
b = {6, 6, 13, 12};
normal = Transpose[a].a;
rhs = Transpose[a].b;
coefficients = LinearSolve[normal, rhs];
predicted = a.coefficients;
residual = b - predicted;
{normal, rhs, coefficients, predicted, residual,
 Transpose[a].residual, residual.residual,
 LeastSquares[a, b]}
);
Print["P3-C03-E023: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E024 | 3.4.6. Вариант 6. Четыре показания прибора. Серия 6 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E024`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E024`*"];
$BookCompanionValue = (
a = {{1, 0},
 {1, 1},
 {1, 2},
 {1, 3}};
b = {7, 7, 15, 13};
normal = Transpose[a].a;
rhs = Transpose[a].b;
coefficients = LinearSolve[normal, rhs];
predicted = a.coefficients;
residual = b - predicted;
{normal, rhs, coefficients, predicted, residual,
 Transpose[a].residual, residual.residual,
 LeastSquares[a, b]}
);
Print["P3-C03-E024: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E025 | 3.5.1. Вариант 1. Надежное среднее измерение. Вес 2 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E025`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E025`*"];
$BookCompanionValue = (
a = {{1, 0},
 {1, 1},
 {1, 2}};
b = {1, 3, 2};
w = DiagonalMatrix[{1, 2, 1}];
normal = Transpose[a].w.a;
rhs = Transpose[a].w.b;
x = LinearSolve[normal, rhs];
r = b - a.x;
{normal, rhs, x, r, Transpose[a].w.r, r.w.r}
);
Print["P3-C03-E025: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E026 | 3.5.2. Вариант 2. Надежное среднее измерение. Вес 3 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E026`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E026`*"];
$BookCompanionValue = (
a = {{1, 0},
 {1, 1},
 {1, 2}};
b = {1, 3, 2};
w = DiagonalMatrix[{1, 3, 1}];
normal = Transpose[a].w.a;
rhs = Transpose[a].w.b;
x = LinearSolve[normal, rhs];
r = b - a.x;
{normal, rhs, x, r, Transpose[a].w.r, r.w.r}
);
Print["P3-C03-E026: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E027 | 3.5.3. Вариант 3. Надежное среднее измерение. Вес 4 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E027`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E027`*"];
$BookCompanionValue = (
a = {{1, 0},
 {1, 1},
 {1, 2}};
b = {1, 3, 2};
w = DiagonalMatrix[{1, 4, 1}];
normal = Transpose[a].w.a;
rhs = Transpose[a].w.b;
x = LinearSolve[normal, rhs];
r = b - a.x;
{normal, rhs, x, r, Transpose[a].w.r, r.w.r}
);
Print["P3-C03-E027: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E028 | 3.5.4. Вариант 4. Надежное среднее измерение. Вес 5 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E028`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E028`*"];
$BookCompanionValue = (
a = {{1, 0},
 {1, 1},
 {1, 2}};
b = {1, 3, 2};
w = DiagonalMatrix[{1, 5, 1}];
normal = Transpose[a].w.a;
rhs = Transpose[a].w.b;
x = LinearSolve[normal, rhs];
r = b - a.x;
{normal, rhs, x, r, Transpose[a].w.r, r.w.r}
);
Print["P3-C03-E028: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E029 | 3.5.5. Вариант 5. Надежное среднее измерение. Вес 6 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E029`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E029`*"];
$BookCompanionValue = (
a = {{1, 0},
 {1, 1},
 {1, 2}};
b = {1, 3, 2};
w = DiagonalMatrix[{1, 6, 1}];
normal = Transpose[a].w.a;
rhs = Transpose[a].w.b;
x = LinearSolve[normal, rhs];
r = b - a.x;
{normal, rhs, x, r, Transpose[a].w.r, r.w.r}
);
Print["P3-C03-E029: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E030 | 3.5.6. Вариант 6. Надежное среднее измерение. Вес 7 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E030`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E030`*"];
$BookCompanionValue = (
a = {{1, 0},
 {1, 1},
 {1, 2}};
b = {1, 3, 2};
w = DiagonalMatrix[{1, 7, 1}];
normal = Transpose[a].w.a;
rhs = Transpose[a].w.b;
x = LinearSolve[normal, rhs];
r = b - a.x;
{normal, rhs, x, r, Transpose[a].w.r, r.w.r}
);
Print["P3-C03-E030: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E031 | 3.6.1. Вариант 1. Два канала в трех координатах. Ортогонализация 1 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E031`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E031`*"];
$BookCompanionValue = (
a1 = {1, 1, 0}; a2 = {1, 0, 1};
r11 = Norm[a1];
q1 = a1/r11;
r12 = q1.a2;
w = FullSimplify[a2 - r12 q1];
r22 = FullSimplify[Norm[w]];
q2 = FullSimplify[w/r22];
q = Transpose[{q1, q2}];
r = {{r11, r12},
 {0, r22}};
a = Transpose[{a1, a2}];
{r, FullSimplify[Transpose[q].q],
 FullSimplify[q.r - a]}
);
Print["P3-C03-E031: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E032 | 3.6.2. Вариант 2. Два канала в трех координатах. Ортогонализация 2 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E032`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E032`*"];
$BookCompanionValue = (
a1 = {1, 2, 0}; a2 = {1, 0, 1};
r11 = Norm[a1];
q1 = a1/r11;
r12 = q1.a2;
w = FullSimplify[a2 - r12 q1];
r22 = FullSimplify[Norm[w]];
q2 = FullSimplify[w/r22];
q = Transpose[{q1, q2}];
r = {{r11, r12},
 {0, r22}};
a = Transpose[{a1, a2}];
{r, FullSimplify[Transpose[q].q],
 FullSimplify[q.r - a]}
);
Print["P3-C03-E032: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E033 | 3.6.3. Вариант 3. Два канала в трех координатах. Ортогонализация 3 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E033`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E033`*"];
$BookCompanionValue = (
a1 = {1, 3, 0}; a2 = {1, 0, 1};
r11 = Norm[a1];
q1 = a1/r11;
r12 = q1.a2;
w = FullSimplify[a2 - r12 q1];
r22 = FullSimplify[Norm[w]];
q2 = FullSimplify[w/r22];
q = Transpose[{q1, q2}];
r = {{r11, r12},
 {0, r22}};
a = Transpose[{a1, a2}];
{r, FullSimplify[Transpose[q].q],
 FullSimplify[q.r - a]}
);
Print["P3-C03-E033: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E034 | 3.6.4. Вариант 4. Два канала в трех координатах. Ортогонализация 4 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E034`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E034`*"];
$BookCompanionValue = (
a1 = {1, 4, 0}; a2 = {1, 0, 1};
r11 = Norm[a1];
q1 = a1/r11;
r12 = q1.a2;
w = FullSimplify[a2 - r12 q1];
r22 = FullSimplify[Norm[w]];
q2 = FullSimplify[w/r22];
q = Transpose[{q1, q2}];
r = {{r11, r12},
 {0, r22}};
a = Transpose[{a1, a2}];
{r, FullSimplify[Transpose[q].q],
 FullSimplify[q.r - a]}
);
Print["P3-C03-E034: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E035 | 3.6.5. Вариант 5. Два канала в трех координатах. Ортогонализация 5 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E035`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E035`*"];
$BookCompanionValue = (
a1 = {1, 5, 0}; a2 = {1, 0, 1};
r11 = Norm[a1];
q1 = a1/r11;
r12 = q1.a2;
w = FullSimplify[a2 - r12 q1];
r22 = FullSimplify[Norm[w]];
q2 = FullSimplify[w/r22];
q = Transpose[{q1, q2}];
r = {{r11, r12},
 {0, r22}};
a = Transpose[{a1, a2}];
{r, FullSimplify[Transpose[q].q],
 FullSimplify[q.r - a]}
);
Print["P3-C03-E035: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E036 | 3.6.6. Вариант 6. Два канала в трех координатах. Ортогонализация 6 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E036`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E036`*"];
$BookCompanionValue = (
a1 = {1, 6, 0}; a2 = {1, 0, 1};
r11 = Norm[a1];
q1 = a1/r11;
r12 = q1.a2;
w = FullSimplify[a2 - r12 q1];
r22 = FullSimplify[Norm[w]];
q2 = FullSimplify[w/r22];
q = Transpose[{q1, q2}];
r = {{r11, r12},
 {0, r22}};
a = Transpose[{a1, a2}];
{r, FullSimplify[Transpose[q].q],
 FullSimplify[q.r - a]}
);
Print["P3-C03-E036: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E037 | 3.7.1. Вариант 1. Один наблюдаемый режим. Вариант 1 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E037`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E037`*"];
$BookCompanionValue = (
u = {1, 1}; v = {1, 2, 1};
a = Outer[Times, u, v];
pinv = Outer[Times, v, u]/((u.u) (v.v));
b = {1, 1};
x = pinv.b;
r = b - a.x;
{MatrixRank[a], Sqrt[(u.u) (v.v)], pinv, x, r,
 Transpose[a].r, a.pinv.a - a,
 pinv == PseudoInverse[a]}
);
Print["P3-C03-E037: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E038 | 3.7.2. Вариант 2. Один наблюдаемый режим. Вариант 2 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E038`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E038`*"];
$BookCompanionValue = (
u = {1, 2}; v = {1, 2, 1};
a = Outer[Times, u, v];
pinv = Outer[Times, v, u]/((u.u) (v.v));
b = {2, 1};
x = pinv.b;
r = b - a.x;
{MatrixRank[a], Sqrt[(u.u) (v.v)], pinv, x, r,
 Transpose[a].r, a.pinv.a - a,
 pinv == PseudoInverse[a]}
);
Print["P3-C03-E038: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E039 | 3.7.3. Вариант 3. Один наблюдаемый режим. Вариант 3 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E039`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E039`*"];
$BookCompanionValue = (
u = {1, 3}; v = {1, 2, 1};
a = Outer[Times, u, v];
pinv = Outer[Times, v, u]/((u.u) (v.v));
b = {3, 1};
x = pinv.b;
r = b - a.x;
{MatrixRank[a], Sqrt[(u.u) (v.v)], pinv, x, r,
 Transpose[a].r, a.pinv.a - a,
 pinv == PseudoInverse[a]}
);
Print["P3-C03-E039: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E040 | 3.7.4. Вариант 4. Один наблюдаемый режим. Вариант 4 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E040`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E040`*"];
$BookCompanionValue = (
u = {1, 4}; v = {1, 2, 1};
a = Outer[Times, u, v];
pinv = Outer[Times, v, u]/((u.u) (v.v));
b = {4, 1};
x = pinv.b;
r = b - a.x;
{MatrixRank[a], Sqrt[(u.u) (v.v)], pinv, x, r,
 Transpose[a].r, a.pinv.a - a,
 pinv == PseudoInverse[a]}
);
Print["P3-C03-E040: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E041 | 3.7.5. Вариант 5. Один наблюдаемый режим. Вариант 5 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E041`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E041`*"];
$BookCompanionValue = (
u = {1, 5}; v = {1, 2, 1};
a = Outer[Times, u, v];
pinv = Outer[Times, v, u]/((u.u) (v.v));
b = {5, 1};
x = pinv.b;
r = b - a.x;
{MatrixRank[a], Sqrt[(u.u) (v.v)], pinv, x, r,
 Transpose[a].r, a.pinv.a - a,
 pinv == PseudoInverse[a]}
);
Print["P3-C03-E041: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E042 | 3.7.6. Вариант 6. Один наблюдаемый режим. Вариант 6 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E042`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E042`*"];
$BookCompanionValue = (
u = {1, 6}; v = {1, 2, 1};
a = Outer[Times, u, v];
pinv = Outer[Times, v, u]/((u.u) (v.v));
b = {6, 1};
x = pinv.b;
r = b - a.x;
{MatrixRank[a], Sqrt[(u.u) (v.v)], pinv, x, r,
 Transpose[a].r, a.pinv.a - a,
 pinv == PseudoInverse[a]}
);
Print["P3-C03-E042: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E043 | 3.8.1. Вариант 1. Зависимые признаки. Штраф 1/2 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E043`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E043`*"];
$BookCompanionValue = (
a = {{1, 1},
 {2, 2},
 {3, 3}};
b = {2, 4, 7};
lambda = 1/2;
normal = Transpose[a].a + lambda IdentityMatrix[2];
rhs = Transpose[a].b;
x = LinearSolve[normal, rhs];
r = b - a.x;
{x, r, Transpose[a].r - lambda x,
 r.r + lambda x.x, Norm[x], Norm[r]}
);
Print["P3-C03-E043: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E044 | 3.8.2. Вариант 2. Зависимые признаки. Штраф 1 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E044`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E044`*"];
$BookCompanionValue = (
a = {{1, 1},
 {2, 2},
 {3, 3}};
b = {2, 4, 7};
lambda = 1;
normal = Transpose[a].a + lambda IdentityMatrix[2];
rhs = Transpose[a].b;
x = LinearSolve[normal, rhs];
r = b - a.x;
{x, r, Transpose[a].r - lambda x,
 r.r + lambda x.x, Norm[x], Norm[r]}
);
Print["P3-C03-E044: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E045 | 3.8.3. Вариант 3. Зависимые признаки. Штраф 3/2 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E045`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E045`*"];
$BookCompanionValue = (
a = {{1, 1},
 {2, 2},
 {3, 3}};
b = {2, 4, 7};
lambda = 3/2;
normal = Transpose[a].a + lambda IdentityMatrix[2];
rhs = Transpose[a].b;
x = LinearSolve[normal, rhs];
r = b - a.x;
{x, r, Transpose[a].r - lambda x,
 r.r + lambda x.x, Norm[x], Norm[r]}
);
Print["P3-C03-E045: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E046 | 3.8.4. Вариант 4. Зависимые признаки. Штраф 2 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E046`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E046`*"];
$BookCompanionValue = (
a = {{1, 1},
 {2, 2},
 {3, 3}};
b = {2, 4, 7};
lambda = 2;
normal = Transpose[a].a + lambda IdentityMatrix[2];
rhs = Transpose[a].b;
x = LinearSolve[normal, rhs];
r = b - a.x;
{x, r, Transpose[a].r - lambda x,
 r.r + lambda x.x, Norm[x], Norm[r]}
);
Print["P3-C03-E046: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E047 | 3.8.5. Вариант 5. Зависимые признаки. Штраф 5/2 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E047`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E047`*"];
$BookCompanionValue = (
a = {{1, 1},
 {2, 2},
 {3, 3}};
b = {2, 4, 7};
lambda = 5/2;
normal = Transpose[a].a + lambda IdentityMatrix[2];
rhs = Transpose[a].b;
x = LinearSolve[normal, rhs];
r = b - a.x;
{x, r, Transpose[a].r - lambda x,
 r.r + lambda x.x, Norm[x], Norm[r]}
);
Print["P3-C03-E047: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E048 | 3.8.6. Вариант 6. Зависимые признаки. Штраф 3 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03E048`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03E048`*"];
$BookCompanionValue = (
a = {{1, 1},
 {2, 2},
 {3, 3}};
b = {2, 4, 7};
lambda = 3;
normal = Transpose[a].a + lambda IdentityMatrix[2];
rhs = Transpose[a].b;
x = LinearSolve[normal, rhs];
r = b - a.x;
{x, r, Transpose[a].r - lambda x,
 r.r + lambda x.x, Norm[x], Norm[r]}
);
Print["P3-C03-E048: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E049 | 3.9. Итоговый проект. От наблюдений к проверенной модели *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03CarsProject`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part3`P3C03CarsProject`*"];
$BookCompanionValue = (
speed = {4, 4, 7, 7, 8, 9, 10, 10, 10, 11, 11, 12, 12, 12,
 12, 13, 13, 13, 13, 14, 14, 14, 14, 15, 15,
 15, 16, 16, 17, 17, 17, 18, 18, 18, 18, 19, 19, 19, 20, 20,
 20, 20, 20, 22, 23, 24, 24, 24, 24, 25};
distance = {2, 10, 4, 22, 16, 10, 18, 26, 34, 17, 28, 14, 20,
 24, 28, 26, 34, 34, 46, 26, 36, 60, 80, 20, 26,
 54, 32, 40, 32, 40, 50, 42, 56, 76, 84, 36, 46, 68, 32, 48,
 52, 56, 64, 66, 54, 70, 92, 93, 120, 85};
);
Print["P3-C03-E049: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E050 | 3.9. Итоговый проект. От наблюдений к проверенной модели *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03CarsProject`"];
$ContextPath = {$Context,"System`"};
$BookCompanionValue = (
count = Length[speed];
a = Transpose[{ConstantArray[1, count], speed}];
b = distance;
normal = Transpose[a].a; rhs = Transpose[a].b;
beta = LinearSolve[normal, rhs];
residual = b - a.beta;
{Dimensions[a], MatrixRank[a], normal, rhs, beta,
 Transpose[a].residual, residual.residual}
);
Print["P3-C03-E050: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E051 | 3.9. Итоговый проект. От наблюдений к проверенной модели *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03CarsProject`"];
$ContextPath = {$Context,"System`"};
$BookCompanionValue = (
an = N[a, 40]; bn = N[b, 40];
{qStored, rFactor} = QRDecomposition[an];
qFactor = ConjugateTranspose[qStored];
betaQR = LinearSolve[rFactor,
 ConjugateTranspose[qFactor].bn];
{uFactor, sFactor, vFactor} =
 SingularValueDecomposition[an, 2];
singular = Diagonal[sFactor];
betaSVD = vFactor.DiagonalMatrix[1/singular].
 ConjugateTranspose[uFactor].bn;
{kappa = Max[singular]/Min[singular],
 betaQR, betaSVD, N[beta, 12]}
);
Print["P3-C03-E051: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E052 | 3.9. Итоговый проект. От наблюдений к проверенной модели *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03CarsProject`"];
$ContextPath = {$Context,"System`"};
$BookCompanionValue = (
qrError = Norm[an - qFactor.rFactor, "Frobenius"];
svdError = Norm[an - uFactor.sFactor.
 ConjugateTranspose[vFactor], "Frobenius"];
qrOrth = Norm[ConjugateTranspose[qFactor].qFactor -
 IdentityMatrix[2], "Frobenius"];
pinv = PseudoInverse[an];
penrose = {
 Norm[an.pinv.an - an, "Frobenius"],
 Norm[pinv.an.pinv - pinv, "Frobenius"],
 Norm[ConjugateTranspose[an.pinv] - an.pinv,
  "Frobenius"],
 Norm[ConjugateTranspose[pinv.an] - pinv.an,
  "Frobenius"]};
{qrError, qrOrth, svdError, penrose,
 Norm[betaQR - betaSVD], Norm[pinv.bn - betaSVD]}
);
Print["P3-C03-E052: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E053 | 3.9. Итоговый проект. От наблюдений к проверенной модели *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03CarsProject`"];
$ContextPath = {$Context,"System`"};
$BookCompanionValue = (
meanT = Mean[speed]; meanY = Mean[distance];
scaleT = Sqrt[Total[(speed - meanT)^2]/count];
z = (speed - meanT)/scaleT;
designZ = Transpose[{ConstantArray[1, count], z}];
penalty = DiagonalMatrix[{0, 1}];
lambda = 5;
alpha = LinearSolve[Transpose[designZ].designZ +
 lambda penalty, Transpose[designZ].b];
betaRidge = {alpha[[1]] - alpha[[2]] meanT/scaleT,
 alpha[[2]]/scaleT};
rRidge = b - a.betaRidge;
{N[betaRidge, 10], N[rRidge.rRidge, 12],
 FullSimplify[Transpose[designZ].rRidge -
 lambda penalty.alpha]}
);
Print["P3-C03-E053: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P3-C03-E054 | 3.9. Итоговый проект. От наблюдений к проверенной модели *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part3`P3C03CarsProject`"];
$ContextPath = {$Context,"System`"};
$BookCompanionValue = (
results = Table[
 alpha = LinearSolve[Transpose[designZ].designZ +
  lam penalty, Transpose[designZ].b];
 coef = {alpha[[1]] - alpha[[2]] meanT/scaleT,
  alpha[[2]]/scaleT};
 rr = b - a.coef;
 {lam, coef, rr.rr,
  FullSimplify[Transpose[designZ].rr -
   lam penalty.alpha]},
 {lam, {0, 5, 50}}];
results // N[#, 12] &
);
Print["P3-C03-E054: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;
