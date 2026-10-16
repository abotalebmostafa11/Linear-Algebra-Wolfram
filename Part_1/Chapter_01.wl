(* 1. Введение. Язык линейной алгебры *)

(* 1.1. Скаляр, вектор, матрица и тензор *)
u = {3, 1};
v = {1, 3};
total = u + v;
{total, Norm[u] + Norm[v], Norm[total]}

(* 1.1. Скаляр, вектор, матрица и тензор *)
quantity = {2, 3, 1};
price = {100, 40, 250};
quantity.price

(* 1.2. Линейность и принцип суперпозиции *)
ClearAll[f, t, x, y, a, b];
t[x_] := 50 x;
f[x_] := 50 x + 200;
Expand[t[a x + b y] - a t[x] - b t[y]]
Expand[f[a x + b y] - a f[x] - b f[y]]

(* 1.3. От жизненной задачи к проверенному ответу *)
a = {{2, 1}, {1, 2}};
b = {12, 12};
solution = LinearSolve[a, b];
residual = b - a.solution;
{solution, residual}

(* 1.4. Точная арифметика, округление и обусловленность *)
eps = 1/100000;
a = {{1, 1}, {1, 1 + eps}};
b = {2, 2 + eps};
x0 = LinearSolve[a, b];
x1 = LinearSolve[a, b + {0, eps}];
kappa = Norm[N[a], 2] Norm[Inverse[N[a]], 2];
{x0, x1, kappa}

(* 1.5. Как читать доказательство и проверять код *)
ClearAll[x1, x2, y1, y2, a, b];
m = {{1, -1}, {0, 2}};
Expand[m.(a {x1, x2} + b {y1, y2}) -
  a m.{x1, x2} - b m.{y1, y2}]
