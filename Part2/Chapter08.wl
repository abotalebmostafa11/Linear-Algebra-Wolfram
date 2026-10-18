(* 8. Справочник и литература *)
(* Код совпадает с книгой. Перед самостоятельным примером выполните Quit[] в отдельной ячейке. *)

(* 8.2. Указатель команд Wolfram Language *)
a = {{1, 2, 3}, {2, 4, 6}};
p = PseudoInverse[a];
{a.p.a == a, p.a.p == p,
 ConjugateTranspose[a.p] == a.p,
 ConjugateTranspose[p.a] == p.a}

(* 8.2. Указатель команд Wolfram Language *)
ClearAll[t];
a = {{2, 1}, {0, 2}};
{s, j} = JordanDecomposition[a];
e = MatrixExp[t a];
{a.s == s.j, Det[s] != 0,
 FullSimplify[D[e, t] - a.e],
 FullSimplify[(e /. t -> 0) - IdentityMatrix[2]]}

(* Задача 8.1 *)
a = {{2, 1}, {1, 2}}; v = {1, 1};
a.v - 3 v

(* Задача 8.2 *)
u = {-2, -2}; v = {1, 1};
{MatrixRank[{u, v}], Norm[u], Norm[v]}

(* Задача 8.3 *)
a = DiagonalMatrix[{3, 4}];
{Norm[a, 2], Norm[a, "Frobenius"]}

(* Задача 8.4 *)
a = {{3, 1}, {-1, 1}}; p = {{1, 1}, {-1, 0}};
j = {{2, 1}, {0, 2}};
{Det[p], a.p - p.j}

(* Задача 8.5 *)
lambda = {4, 1};
1/Sqrt[lambda]

(* Задача 8.6 *)
a = {{1, I}, {0, 2}};
{Transpose[a], ConjugateTranspose[a]}

(* Задача 8.7 *)
a = {{3, 1}, {1, 3}};
q = {{1, 1}, {-1, 1}}/Sqrt[2];
{Simplify[Transpose[q].q],
 Simplify[Transpose[q].a.q]}

(* Задача 8.8 *)
a = {{2, 0}, {1/100, 3}}; v = {1, 0};
r = a.v - 2 v;
{r, Norm[r]}

(* Задача 8.9 *)
a = DiagonalMatrix[{1, -2}];
{Det[DiagonalMatrix[Exp /@ Diagonal[a]]],
 Exp[Tr[a]]} // Simplify

(* Задача 8.10 *)
a = DiagonalMatrix[{1, 2}]; b = {{1, 10}, {0, 2}};
{Sort[Eigenvalues[a]], Sort[Eigenvalues[b]],
 a.{0, 1}, b.{0, 1}}

(* Задача 8.11 *)
q = {{0, -1}, {1, 0}};
{Transpose[q].q, Abs /@ Eigenvalues[q]}

(* Задача 8.12 *)
a = {{2, 1}, {1, 2}}; v = {7, 7};
(v.a.v)/(v.v)

(* Задача 8.13 *)
a = {{1, 4}, {0, 1}}; x = {1, -1};
{Eigenvalues[a], x.a.x}

(* Задача 8.14 *)
a = {{1, 1}, {1, 1}}; v = {1, -1};
{a.v, Det[a], Norm[v]}

(* Задача 8.15 *)
q = {1, 1}/Sqrt[2];
Outer[Times, q, q] == Outer[Times, -q, -q]
