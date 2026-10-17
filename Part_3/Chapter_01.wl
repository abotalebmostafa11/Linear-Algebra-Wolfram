(* 1. Ортогональные проекции и наименьшие квадраты *)
(* Перед самостоятельным примером выполните Quit[] в отдельной ячейке Mathematica. *)
(* Копируйте один пример целиком. Его код совпадает с блоком книги. *)

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
