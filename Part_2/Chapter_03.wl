(* 3. Унитарная диагонализация *)
(* Код совпадает с книгой. Перед самостоятельным примером выполните Quit[] в отдельной ячейке. *)

(* 3.1. Сопряженный оператор и нормальность *)
a = {{1, -2}, {2, 1}};
{ConjugateTranspose[a].a,
 a.ConjugateTranspose[a], Eigenvalues[a]}

(* 3.3. Эрмитовы матрицы и главные оси *)
a = {{3, 1}, {1, 3}};
q = {{1, 1}, {1, -1}}/Sqrt[2];
diagonal = FullSimplify[Transpose[q].a.q];
{diagonal, FullSimplify[Transpose[q].q],
 1/Sqrt[Diagonal[diagonal]]}

(* 3.4. Спектральные проекторы *)
a = {{3, 1}, {1, 3}};
p4 = (a - 2 IdentityMatrix[2])/2;
p2 = (4 IdentityMatrix[2] - a)/2;
{p4.p4 == p4, p4.p2,
 4 p4 + 2 p2 == a}

(* 3.5. Самосопряженность вне стандартных координат *)
p = {{1, 1}, {0, 1}};
d = DiagonalMatrix[{1, 2}];
b = Inverse[p].d.p;
g = Transpose[p].p;
{b, g, Transpose[b].g == g.b}

(* Задача 3.1 *)
lambda = {4, 9};
1/Sqrt[lambda]

(* Задача 3.2 *)
a = {{3, 1}, {1, 3}};
q = {{1, 1}, {1, -1}}/Sqrt[2];
{Simplify[Transpose[q].a.q],
 1/Sqrt[{4, 2}]}

(* Задача 3.3 *)
q = {{3, -4}, {4, 3}}/5;
{Transpose[q].q, Det[q]}

(* Задача 3.4 *)
a = DiagonalMatrix[{I, 2}];
{ConjugateTranspose[a].a == a.ConjugateTranspose[a],
 ConjugateTranspose[a] == a}

(* Задача 3.5 *)
q = {1, 1}/Sqrt[2]; p = Outer[Times, q, q];
{p, p.p == p, Transpose[p] == p}

(* Задача 3.6 *)
p4 = {{1, 1}, {1, 1}}/2;
p2 = {{1, -1}, {-1, 1}}/2;
{4 p4 + 2 p2, p4.p2, p4 + p2}

(* Задача 3.7 *)
lambda = {4, 2};
Simplify[(1/Sqrt[4 lambda])/(1/Sqrt[lambda])]

(* Задача 3.8 *)
a = DiagonalMatrix[{4, 2}];
{a.{1, 0}, a.{0, 1}, 1/Sqrt[Diagonal[a]]}

(* Задача 3.9 *)
b = {{2, 1}, {1, 2}};
{b.b, Sort[Eigenvalues[b]]}

(* Задача 3.10 *)
a = {{2, 1}, {0, 3}}; u = {1, 0}; v = {1, 1};
{a.u - 2 u, a.v - 3 v, u.v,
 Transpose[a].a == a.Transpose[a]}

(* Задача 3.11 *)
a = {{2, I}, {-I, 2}};
{ConjugateTranspose[a] == a, Sort[Eigenvalues[a]]}

(* Задача 3.12 *)
a = {{2, I}, {-I, 2}}; u = {I, 1}; v = {-I, 1};
{a.u - 3 u, a.v - v, Conjugate[u].v}

(* Задача 3.13 *)
a = {{2, 1}, {0, 3}};
{Sort[Eigenvalues[a]],
 Transpose[a].a - a.Transpose[a]}

(* Задача 3.14 *)
a = {{3, 1}, {1, 3}};
q = {{1, 1}, {1, -1}}/Sqrt[2];
r = q.DiagonalMatrix[{-1, 1}];
{Simplify[Transpose[r].r],
 Simplify[Transpose[r].a.r]}

(* Задача 3.15 *)
{Eigenvalues[DiagonalMatrix[{4, 2}]],
 Eigenvalues[DiagonalMatrix[{4, 0}]],
 Eigenvalues[DiagonalMatrix[{4, -2}]]}
