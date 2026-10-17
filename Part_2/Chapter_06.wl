(* 6. Геометрия плоскости и пространства *)
(* Код совпадает с книгой. Перед самостоятельным примером выполните Quit[] в отдельной ячейке. *)

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

(* Задача 6.1 *)
u = {1, 0, 1}; v = {0, 1, 1};
{u.v, Simplify[u.v/(Norm[u] Norm[v])]}

(* Задача 6.2 *)
{Cross[{1, 0, 0}, {0, 1, 0}],
 Cross[{0, 1, 0}, {1, 0, 0}]}

(* Задача 6.3 *)
n = {1, 1, 1}; p = {1, 2, 3};
Simplify[Abs[n.p]/Norm[n]]

(* Задача 6.4 *)
p = {1, 0, 2} + t {2, -1, 1};
p /. t -> 3

(* Задача 6.5 *)
u = {1, 1, 0}; v = {0, 1, 1}; w = {1, 0, 1};
{u.Cross[v, w], Abs[Det[Transpose[{u, v, w}]]]}

(* Задача 6.6 *)
p = {2, 1, 0}; u = {1, 1, 0}; q = (p.u)/(u.u) u;
{q, (p - q).u}

(* Задача 6.7 *)
p = {1, 0, 0} + t {1, 1, 1};
{Total[p] // Expand, p /. t -> 1}

(* Задача 6.8 *)
r = {2/5, 0, 0}; f = {0, 5, 0};
Cross[r, f]

(* Задача 6.9 *)
p = {2 - t, -1, t};
{{1, 1, 1}.p, {1, -1, 1}.p} // Expand

(* Задача 6.10 *)
Abs[7 - 1]/Norm[{2, -1, 2}]

(* Задача 6.11 *)
n = {1, 2, 2}; p = {3, 0, 0}; d = 1;
q = p - ((n.p - d)/(n.n)) n;
{n.q, Simplify[Norm[p - q]]}

(* Задача 6.12 *)
u = {1, 0, 1}; v = {0, 1, 1}; w = u + v;
{u.Cross[v, w], MatrixRank[Transpose[{u, v, w}]]}

(* Задача 6.13 *)
difference = {t, -s, -1};
{Expand[difference.difference],
 difference.difference /. {s -> 0, t -> 0}}

(* Задача 6.14 *)
u = {1, 2, 0}; v = {2, -1, 0};
{u.v, Norm[Cross[u, v]], Norm[u] Norm[v]}

(* Задача 6.15 *)
zero = {{0, 0, 0}}; normal = {{1, 0, 0}};
{MatrixRank[zero], MatrixRank[normal]}
