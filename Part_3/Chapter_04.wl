(* 4. Практикум. Решения с промежуточными вычислениями *)
(* Код совпадает с книгой. Перед самостоятельным примером выполните Quit[] в отдельной ячейке. *)
(* Шесть ячеек проекта 4.9 выполняйте по порядку в одном ядре. *)

(* 4.1.1. Вариант 1. Переход между двумя категориями. Модель 1 *)
p = {{4/5, 1/5},
 {1/5, 4/5}};
x0 = {1, 0};
stationary = {1/2, 1/2};
lambda2 = 3/5;
x4 = stationary + lambda2^4 (x0 - stationary);
{Total /@ Transpose[p], p.x0, p.p.x0,
 stationary, x4, MatrixPower[p, 4].x0,
 p.stationary - stationary}

(* 4.1.2. Вариант 2. Переход между двумя категориями. Модель 2 *)
p = {{7/10, 1/5},
 {3/10, 4/5}};
x0 = {1, 0};
stationary = {2/5, 3/5};
lambda2 = 1/2;
x4 = stationary + lambda2^4 (x0 - stationary);
{Total /@ Transpose[p], p.x0, p.p.x0,
 stationary, x4, MatrixPower[p, 4].x0,
 p.stationary - stationary}

(* 4.1.3. Вариант 3. Переход между двумя категориями. Модель 3 *)
p = {{3/5, 1/5},
 {2/5, 4/5}};
x0 = {1, 0};
stationary = {1/3, 2/3};
lambda2 = 2/5;
x4 = stationary + lambda2^4 (x0 - stationary);
{Total /@ Transpose[p], p.x0, p.p.x0,
 stationary, x4, MatrixPower[p, 4].x0,
 p.stationary - stationary}

(* 4.1.4. Вариант 4. Переход между двумя категориями. Модель 4 *)
p = {{1/2, 1/5},
 {1/2, 4/5}};
x0 = {1, 0};
stationary = {2/7, 5/7};
lambda2 = 3/10;
x4 = stationary + lambda2^4 (x0 - stationary);
{Total /@ Transpose[p], p.x0, p.p.x0,
 stationary, x4, MatrixPower[p, 4].x0,
 p.stationary - stationary}

(* 4.1.5. Вариант 5. Переход между двумя категориями. Модель 5 *)
p = {{2/5, 1/5},
 {3/5, 4/5}};
x0 = {1, 0};
stationary = {1/4, 3/4};
lambda2 = 1/5;
x4 = stationary + lambda2^4 (x0 - stationary);
{Total /@ Transpose[p], p.x0, p.p.x0,
 stationary, x4, MatrixPower[p, 4].x0,
 p.stationary - stationary}

(* 4.1.6. Вариант 6. Переход между двумя категориями. Модель 6 *)
p = {{3/10, 1/5},
 {7/10, 4/5}};
x0 = {1, 0};
stationary = {2/9, 7/9};
lambda2 = 1/10;
x4 = stationary + lambda2^4 (x0 - stationary);
{Total /@ Transpose[p], p.x0, p.p.x0,
 stationary, x4, MatrixPower[p, 4].x0,
 p.stationary - stationary}

(* Исследование при изменении условия *)
p = {{0, 1}, {1, 0}};
{p.{1/2, 1/2},
 Table[MatrixPower[p, k].{1, 0}, {k, 0, 3}]}

(* 4.2.1. Вариант 1. Объясненная компонента сигнала. Направление 1 *)
u = {1, 1};
b = {3, 1};
norm2 = u.u;
coefficient = (u.b)/norm2;
p = coefficient u;
r = b - p;
{coefficient, p, r, u.r,
 b.b, p.p + r.r}

(* 4.2.2. Вариант 2. Объясненная компонента сигнала. Направление 2 *)
u = {1, 2};
b = {4, 1};
norm2 = u.u;
coefficient = (u.b)/norm2;
p = coefficient u;
r = b - p;
{coefficient, p, r, u.r,
 b.b, p.p + r.r}

(* 4.2.3. Вариант 3. Объясненная компонента сигнала. Направление 3 *)
u = {1, 3};
b = {5, 1};
norm2 = u.u;
coefficient = (u.b)/norm2;
p = coefficient u;
r = b - p;
{coefficient, p, r, u.r,
 b.b, p.p + r.r}

(* 4.2.4. Вариант 4. Объясненная компонента сигнала. Направление 4 *)
u = {1, 4};
b = {6, 1};
norm2 = u.u;
coefficient = (u.b)/norm2;
p = coefficient u;
r = b - p;
{coefficient, p, r, u.r,
 b.b, p.p + r.r}

(* 4.2.5. Вариант 5. Объясненная компонента сигнала. Направление 5 *)
u = {1, 5};
b = {7, 1};
norm2 = u.u;
coefficient = (u.b)/norm2;
p = coefficient u;
r = b - p;
{coefficient, p, r, u.r,
 b.b, p.p + r.r}

(* 4.2.6. Вариант 6. Объясненная компонента сигнала. Направление 6 *)
u = {1, 6};
b = {8, 1};
norm2 = u.u;
coefficient = (u.b)/norm2;
p = coefficient u;
r = b - p;
{coefficient, p, r, u.r,
 b.b, p.p + r.r}

(* Исследование при изменении условия *)
u = {1, 1}; b = {2, 0}; w = DiagonalMatrix[{1, 4}];
p = (u.w.b)/(u.w.u) u;
{p, u.w.(b - p)}

(* 4.3.1. Вариант 1. Калибровка положения. Плоскость 1 *)
n = {1, 2, 1};
d = 3; b = {1, 1, 3};
delta = n.b - d;
shift = delta/(n.n) n;
p = b - shift;
{delta, shift, p, n.p,
 (b - p).(b - p), delta^2/(n.n)}

(* 4.3.2. Вариант 2. Калибровка положения. Плоскость 2 *)
n = {1, 2, 2};
d = 4; b = {2, 1, 3};
delta = n.b - d;
shift = delta/(n.n) n;
p = b - shift;
{delta, shift, p, n.p,
 (b - p).(b - p), delta^2/(n.n)}

(* 4.3.3. Вариант 3. Калибровка положения. Плоскость 3 *)
n = {1, 2, 3};
d = 5; b = {3, 1, 3};
delta = n.b - d;
shift = delta/(n.n) n;
p = b - shift;
{delta, shift, p, n.p,
 (b - p).(b - p), delta^2/(n.n)}

(* 4.3.4. Вариант 4. Калибровка положения. Плоскость 4 *)
n = {1, 2, 4};
d = 6; b = {4, 1, 3};
delta = n.b - d;
shift = delta/(n.n) n;
p = b - shift;
{delta, shift, p, n.p,
 (b - p).(b - p), delta^2/(n.n)}

(* 4.3.5. Вариант 5. Калибровка положения. Плоскость 5 *)
n = {1, 2, 5};
d = 7; b = {5, 1, 3};
delta = n.b - d;
shift = delta/(n.n) n;
p = b - shift;
{delta, shift, p, n.p,
 (b - p).(b - p), delta^2/(n.n)}

(* 4.3.6. Вариант 6. Калибровка положения. Плоскость 6 *)
n = {1, 2, 6};
d = 8; b = {6, 1, 3};
delta = n.b - d;
shift = delta/(n.n) n;
p = b - shift;
{delta, shift, p, n.p,
 (b - p).(b - p), delta^2/(n.n)}

(* Исследование при изменении условия *)
b = {0, 0, 0}; n = {1, 1, 1};
p = b - ((n.b - 2)/(n.n)) n;
{p, Simplify[Norm[b - p]]}

(* 4.4.1. Вариант 1. Четыре показания прибора. Серия 1 *)
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

(* 4.4.2. Вариант 2. Четыре показания прибора. Серия 2 *)
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

(* 4.4.3. Вариант 3. Четыре показания прибора. Серия 3 *)
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

(* 4.4.4. Вариант 4. Четыре показания прибора. Серия 4 *)
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

(* 4.4.5. Вариант 5. Четыре показания прибора. Серия 5 *)
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

(* 4.4.6. Вариант 6. Четыре показания прибора. Серия 6 *)
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

(* Исследование при изменении условия *)
a = {{1, 2}, {1, 2}, {1, 2}};
{MatrixRank[a], Simplify[a.{2 - 2 s, s}]}

(* 4.5.1. Вариант 1. Надежное среднее измерение. Вес 2 *)
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

(* 4.5.2. Вариант 2. Надежное среднее измерение. Вес 3 *)
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

(* 4.5.3. Вариант 3. Надежное среднее измерение. Вес 4 *)
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

(* 4.5.4. Вариант 4. Надежное среднее измерение. Вес 5 *)
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

(* 4.5.5. Вариант 5. Надежное среднее измерение. Вес 6 *)
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

(* 4.5.6. Вариант 6. Надежное среднее измерение. Вес 7 *)
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

(* Исследование при изменении условия *)
y = {1, 100}; w = {1, 0};
{w.y/Total[w], w.(y - 1)}

(* 4.6.1. Вариант 1. Два канала в трех координатах. Ортогонализация 1 *)
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

(* 4.6.2. Вариант 2. Два канала в трех координатах. Ортогонализация 2 *)
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

(* 4.6.3. Вариант 3. Два канала в трех координатах. Ортогонализация 3 *)
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

(* 4.6.4. Вариант 4. Два канала в трех координатах. Ортогонализация 4 *)
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

(* 4.6.5. Вариант 5. Два канала в трех координатах. Ортогонализация 5 *)
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

(* 4.6.6. Вариант 6. Два канала в трех координатах. Ортогонализация 6 *)
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

(* Исследование при изменении условия *)
a1 = {1, 0}; a2 = {1, e};
v = a2 - (a1.a2) a1;
{v, Expand[v.v]}

(* 4.7.1. Вариант 1. Один наблюдаемый режим. Вариант 1 *)
u = {1, 1}; v = {1, 2, 1};
a = Outer[Times, u, v];
pinv = Outer[Times, v, u]/((u.u) (v.v));
b = {1, 1};
x = pinv.b;
r = b - a.x;
{MatrixRank[a], Sqrt[(u.u) (v.v)], pinv, x, r,
 Transpose[a].r, a.pinv.a - a,
 pinv == PseudoInverse[a]}

(* 4.7.2. Вариант 2. Один наблюдаемый режим. Вариант 2 *)
u = {1, 2}; v = {1, 2, 1};
a = Outer[Times, u, v];
pinv = Outer[Times, v, u]/((u.u) (v.v));
b = {2, 1};
x = pinv.b;
r = b - a.x;
{MatrixRank[a], Sqrt[(u.u) (v.v)], pinv, x, r,
 Transpose[a].r, a.pinv.a - a,
 pinv == PseudoInverse[a]}

(* 4.7.3. Вариант 3. Один наблюдаемый режим. Вариант 3 *)
u = {1, 3}; v = {1, 2, 1};
a = Outer[Times, u, v];
pinv = Outer[Times, v, u]/((u.u) (v.v));
b = {3, 1};
x = pinv.b;
r = b - a.x;
{MatrixRank[a], Sqrt[(u.u) (v.v)], pinv, x, r,
 Transpose[a].r, a.pinv.a - a,
 pinv == PseudoInverse[a]}

(* 4.7.4. Вариант 4. Один наблюдаемый режим. Вариант 4 *)
u = {1, 4}; v = {1, 2, 1};
a = Outer[Times, u, v];
pinv = Outer[Times, v, u]/((u.u) (v.v));
b = {4, 1};
x = pinv.b;
r = b - a.x;
{MatrixRank[a], Sqrt[(u.u) (v.v)], pinv, x, r,
 Transpose[a].r, a.pinv.a - a,
 pinv == PseudoInverse[a]}

(* 4.7.5. Вариант 5. Один наблюдаемый режим. Вариант 5 *)
u = {1, 5}; v = {1, 2, 1};
a = Outer[Times, u, v];
pinv = Outer[Times, v, u]/((u.u) (v.v));
b = {5, 1};
x = pinv.b;
r = b - a.x;
{MatrixRank[a], Sqrt[(u.u) (v.v)], pinv, x, r,
 Transpose[a].r, a.pinv.a - a,
 pinv == PseudoInverse[a]}

(* 4.7.6. Вариант 6. Один наблюдаемый режим. Вариант 6 *)
u = {1, 6}; v = {1, 2, 1};
a = Outer[Times, u, v];
pinv = Outer[Times, v, u]/((u.u) (v.v));
b = {6, 1};
x = pinv.b;
r = b - a.x;
{MatrixRank[a], Sqrt[(u.u) (v.v)], pinv, x, r,
 Transpose[a].r, a.pinv.a - a,
 pinv == PseudoInverse[a]}

(* Исследование при изменении условия *)
u = {1, 0}; v = {1/2, 1/2}; a = {1, 1};
{a.u, a.v, u.u, v.v}

(* 4.8.1. Вариант 1. Зависимые признаки. Штраф 1/2 *)
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

(* 4.8.2. Вариант 2. Зависимые признаки. Штраф 1 *)
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

(* 4.8.3. Вариант 3. Зависимые признаки. Штраф 3/2 *)
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

(* 4.8.4. Вариант 4. Зависимые признаки. Штраф 2 *)
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

(* 4.8.5. Вариант 5. Зависимые признаки. Штраф 5/2 *)
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

(* 4.8.6. Вариант 6. Зависимые признаки. Штраф 3 *)
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

(* Исследование при изменении условия *)
a = {1, 1}; l = {1, 1};
m = Outer[Times, a, a] + Outer[Times, l, l];
{m, m.{1, -1}, Det[m]}

(* 4.9. Итоговый проект. От наблюдений к проверенной модели. Ячейка 1 из 6 *)
speed = {4, 4, 7, 7, 8, 9, 10, 10, 10, 11, 11, 12, 12, 12,
 12, 13, 13, 13, 13, 14, 14, 14, 14, 15, 15,
 15, 16, 16, 17, 17, 17, 18, 18, 18, 18, 19, 19, 19, 20, 20,
 20, 20, 20, 22, 23, 24, 24, 24, 24, 25};
distance = {2, 10, 4, 22, 16, 10, 18, 26, 34, 17, 28, 14, 20,
 24, 28, 26, 34, 34, 46, 26, 36, 60, 80, 20, 26,
 54, 32, 40, 32, 40, 50, 42, 56, 76, 84, 36, 46, 68, 32, 48,
 52, 56, 64, 66, 54, 70, 92, 93, 120, 85};

(* 4.9. Итоговый проект. От наблюдений к проверенной модели. Ячейка 2 из 6 *)
count = Length[speed];
a = Transpose[{ConstantArray[1, count], speed}];
b = distance;
normal = Transpose[a].a; rhs = Transpose[a].b;
beta = LinearSolve[normal, rhs];
residual = b - a.beta;
{Dimensions[a], MatrixRank[a], normal, rhs, beta,
 Transpose[a].residual, residual.residual}

(* 4.9. Итоговый проект. От наблюдений к проверенной модели. Ячейка 3 из 6 *)
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

(* 4.9. Итоговый проект. От наблюдений к проверенной модели. Ячейка 4 из 6 *)
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

(* 4.9. Итоговый проект. От наблюдений к проверенной модели. Ячейка 5 из 6 *)
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

(* 4.9. Итоговый проект. От наблюдений к проверенной модели. Ячейка 6 из 6 *)
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

(* 4.10.1. Вариант 1. Обусловленность матрицы плана и центрирование *)
a = {{1, 1}, {1, 2}, {1, 3}}; b = {2, 3, 5};
ac = {{1, -1}, {1, 0}, {1, 1}};
cond[m_] := Module[{s = SingularValueList[N[m]]},
  Max[s]/Min[s]];
{cond[a], cond[Transpose[a].a], cond[ac],
 LinearSolve[Transpose[a].a, Transpose[a].b],
 LinearSolve[Transpose[ac].ac, Transpose[ac].b]}

(* 4.10.2. Вариант 2. QR-разложение и нормальные уравнения *)
a = {{1, 3}, {2, 3}, {2, 0}}; b = {1, 2, 4};
{q, r} = QRDecomposition[a];
xqr = LinearSolve[r, q.b];
xne = LinearSolve[Transpose[a].a, Transpose[a].b];
res = b - a.xqr;
sv[m_] := SingularValueList[N[m]];
{r, xqr, xne == xqr, res, Transpose[a].res,
 Max[sv[a]]/Min[sv[a]],
   Max[sv[Transpose[a].a]]/Min[sv[Transpose[a].a]]}

(* 4.10.3. Вариант 3. Наилучшее приближение ранга один *)
a = {{3, 0}, {4, 5}};
{u, s, v} = SingularValueDecomposition[a];
a1 = s[[1, 1]] Outer[Times, u[[All, 1]], v[[All, 1]]];
{Diagonal[s], Simplify[a1], Simplify[Norm[a - a1, "Frobenius"]],
 Simplify[Norm[a - a1, 2]], s[[1, 1]]^2/Total[Diagonal[s]^2]}

(* 4.10.4. Вариант 4. QR-разложение отражением Хаусхолдера *)
sigma[t_] := If[t >= 0, 1, -1];
householder[x_] := Module[{n = Length[x], w},
  If[Norm[x] == 0, IdentityMatrix[n],
   w = x + sigma[x[[1]]] Norm[x] UnitVector[n, 1];
   IdentityMatrix[n] - 2 Outer[Times, w, w]/(w.w)]];
a = {{2, 1}, {1, 1}, {2, 0}};
ha = householder[a[[All, 1]]].a;
g = {{1, 0, 0}, {0, 3/5, -4/5}, {0, 4/5, 3/5}};
rr = g.ha;
{ha, rr, Transpose[rr].rr == Transpose[a].a}

(* 4.10.5. Вариант 5. Отражение Хаусхолдера при нулевой первой компоненте *)
sigma[t_] := If[t >= 0, 1, -1];
householder[x_] := Module[{n = Length[x], w},
  If[Norm[x] == 0, IdentityMatrix[n],
   w = x + sigma[x[[1]]] Norm[x] UnitVector[n, 1];
   IdentityMatrix[n] - 2 Outer[Times, w, w]/(w.w)]];
x = {0, 3, 4};
wrong = x + Sign[x[[1]]] Norm[x] UnitVector[3, 1];
hWrong = IdentityMatrix[3] - 2 Outer[Times, wrong,
  wrong]/(wrong.wrong);
{householder[x].x, hWrong.x, householder[{0, 0, 0}]}

(* 4.10.6. Вариант 6. Вращение Гивенса и решение системы через QR *)
givens[{p_, q_}] := Module[{r = Sqrt[p^2 + q^2]},
  If[r == 0, IdentityMatrix[2], {{p, q}, {-q, p}}/r]];
a = {{3, 1}, {4, 2}}; b = {5, 6};
g = givens[a[[All, 1]]];
rr = g.a; gb = g.b;
x = LinearSolve[rr, gb];
{rr, gb, x, a.x - b, Transpose[g].g == IdentityMatrix[2]}

(* Задача 4.1 *)
p = {{4/5, 1/5}, {1/5, 4/5}};
MatrixPower[p, 2].{1, 0}

(* Задача 4.2 *)
u = {1, 1, 1}; b = {2, 1, 1};
p = (u.b)/(u.u) u; r = b - p;
{p, r.r, Total[r]}

(* Задача 4.3 *)
b = {2, 0, 0}; n = {1, 1, 1};
p = b - ((n.b - 1)/(n.n)) n;
{p, Simplify[Norm[b - p]]}

(* Задача 4.4 *)
y = {1, 4, 7}; w = {1, 2, 1}; c = w.y/Total[w];
{c, w.(y - c)}

(* Задача 4.5 *)
a = {{1, 0}, {1, 1}, {1, 2}}; y = {1, 3, 5};
beta = {1, 2}; r = y - a.beta;
{beta, r.r}

(* Задача 4.6 *)
a = {{1, 1}}; b = {2};
x = LinearSolve[Transpose[a].a + IdentityMatrix[2],
 Transpose[a].b];
{x, a.x}

(* Задача 4.7 *)
t = {0, 1, 2}; y = {0, 1, 2};
{Total[(y - Mean[y])^2], Total[(y - t)^2]}

(* Задача 4.8 *)
q = {{1, 1}, {1, -1}, {0, 0}}/Sqrt[2];
b = {2, 0, 3}; c = Transpose[q].b;
{c, q.c, Norm[b - q.c]} // Simplify

(* Задача 4.9 *)
a = {{1, 1}, {2, 2}, {3, 3}};
{MatrixRank[a], Simplify[a.{2 - t, t}]}

(* Задача 4.10 *)
s = {3, 1}; fraction = s[[1]]^2/Total[s^2];
{fraction, fraction >= 95/100}

(* Задача 4.11 *)
p = {{4/5, 1/5}, {1/5, 4/5}};
Table[MatrixPower[p, k].{1, 0} ==
 {1/2, 1/2} + (3/5)^k {1/2, -1/2},
 {k, 0, 5}]

(* Задача 4.12 *)
a = {{1, 1}};
m = Transpose[a].a + IdentityMatrix[2];
{Det[m], Sort[Eigenvalues[m]]}

(* Задача 4.13 *)
x = 2/(1 + alpha);
{Simplify[2 (x - 2) + 2 alpha x],
 x /. alpha -> 1}

(* Задача 4.14 *)
t = {10, 11, 12}; tc = t - Mean[t];
a = Transpose[{ConstantArray[1, 3], t}];
b = Transpose[{ConstantArray[1, 3], tc}];
{Total[tc], MatrixRank[a], MatrixRank[b]}

(* Задача 4.15 *)
x = {1 + s, 1 - s};
Expand[x.x]
