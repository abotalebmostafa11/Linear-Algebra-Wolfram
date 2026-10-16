(* 6. Геометрия плоскости и пространства *)

(* 6.1. Прямые и параметр *)
ClearAll[t];
p = {1, 2}; u = {3, -1};
point = p + t u;
{point, Expand[{1, 3}.point]}

(* 6.2. Плоскость и нормаль *)
n = {2, -1, 1}; p = {1, 0, 2};
points = {{2, 1, 1}, {0, 0, 0}};
(n.(# - p) &) /@ points

(* 6.3. Неравенство Коши–Шварца *)
u = {1, 2}; v = {2, -1}; w = {2, 4};
{u.v, Abs[u.w], Norm[u] Norm[w]}

(* 6.4. Углы и расстояния *)
n = {2, -1, 1}; d = 4; b = {2, 1, 4};
p = b - (n.b - d)/(n.n) n;
{p, n.p, FullSimplify[Norm[b - p]]}

(* 6.5. Векторное произведение *)
u = {1, 0, 1}; v = {0, 2, 1};
normal = Cross[u, v];
{normal, normal.u, normal.v,
 Norm[normal], Norm[normal]/2}

(* 6.6. Момент силы *)
r = {3/10, 0, 0};
force = {0, 10, 0};
{Cross[r, force], Cross[r, {10, 0, 0}]}

(* 6.7. Смешанное произведение и объем *)
u = {2, 0, 0}; v = {0, 3, 0}; w = {1, 1, 4};
mixed = u.Cross[v, w];
{mixed, Det[Transpose[{u, v, w}]], Abs[mixed]/6}

(* 6.8. Итоговый пример с плоскостями *)
ClearAll[t];
n1 = {1, 1, 1}; n2 = {1, -1, 1};
line = {2, 1, 0} + t {-1, 0, 1};
{Expand[n1.line], Expand[n2.line], Cross[n1, n2]}
