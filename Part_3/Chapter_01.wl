(* 1. Ортогональные проекции и наименьшие квадраты *)
(* Код совпадает с книгой. Перед самостоятельным примером выполните Quit[] в отдельной ячейке. *)

(* 1.1. Проекция на прямую *)
u = {2, 1}; b = {1, 3};
p = (Conjugate[u].b)/(Conjugate[u].u) u;
r = b - p;
{p, r, Conjugate[u].r, Norm[r]}

(* 1.3. Ортогональное дополнение *)
normal = {1, 1, 1};
basis = NullSpace[{normal}];
{basis, basis.normal, MatrixRank[basis]}

(* 1.4. Наименьшие квадраты *)
a = {{1, 0}, {1, 1}, {1, 2}};
b = {1, 2, 2};
x = LeastSquares[a, b];
r = b - a.x;
{x, r, Transpose[a].r, r.r}

(* 1.4.1. Линейная регрессия как задача приближения *)
t = {0, 1, 2}; y = {1, 2, 2};
tc = t - Mean[t]; yc = y - Mean[y];
slope = (tc.yc)/(tc.tc);
intercept = Mean[y] - slope Mean[t];
design = Transpose[{ConstantArray[1, Length[t]], t}];
beta = {intercept, slope};
residual = y - design.beta;
{beta, Total[residual], tc.residual,
 beta == LeastSquares[design, y]}

(* Задача 1.1 *)
u = {1, 1}; b = {3, 1}; p = (u.b)/(u.u) u;
{p, b - p, u.(b - p)}

(* Задача 1.2 *)
a = {{1}, {1}, {1}}; b = {1, 2, 6};
c = {Total[b]/3}; r = b - a.c;
{c, r, Total[r]}

(* Задача 1.3 *)
b = {1, 2, 3}; p = {1, 2, 0};
{p, Norm[b - p]}

(* Задача 1.4 *)
b = {1, 2, 3}; r = b - {2, 2, 2};
{r.r, Total[r]}

(* Задача 1.5 *)
p = DiagonalMatrix[{1, 0, 0}];
{p.p == p, MatrixRank[p], Length[NullSpace[p]]}

(* Задача 1.6 *)
a = {{1, 0}, {1, 1}, {1, 2}}; b = {1, 2, 2};
x = LinearSolve[Transpose[a].a, Transpose[a].b];
{x, Simplify[Transpose[a].(b - a.x)]}

(* Задача 1.7 *)
values = {0, 10}; weights = {9, 1};
{weights.values/Total[weights], Mean[values]}

(* Задача 1.8 *)
a = {{1, 1}, {2, 2}}; b = {1, 2};
Simplify[a.{1 - t, t} - b]

(* Задача 1.9 *)
u = {1, I}; b = {1, 0};
p = ((Conjugate[u].b)/(Conjugate[u].u)) u;
{p, Conjugate[u].(b - p)}

(* Задача 1.10 *)
a = {{1, 0}, {0, 1}, {1, 1}}; b = {1, 1, 3};
x = LinearSolve[Transpose[a].a, Transpose[a].b];
{x, a.x, Transpose[a].(b - a.x)}

(* Задача 1.11 *)
b = {3, 1}; p = {2, 2}; v = {1, 1};
Expand[(b - p - t v).(b - p - t v)]

(* Задача 1.12 *)
a = {{1, 1}, {2, 2}}; b = {1, 0};
x = {1/5 - t, t};
Simplify[Transpose[a].(a.x - b)]

(* Задача 1.13 *)
a = {{1, 0}, {0, 1}, {1, 1}};
{Det[Transpose[a].a], MatrixRank[a]}

(* Задача 1.14 *)
g = DiagonalMatrix[{1, 0}]; x = {0, 1};
{x.g.x, x.x}

(* Задача 1.15 *)
data = {0, 0, 9};
{Mean[data], Median[data],
 Total[(data - Mean[data])^2],
 Total[Abs[data - Median[data]]]}
