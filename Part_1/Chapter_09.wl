(* 9. Справочник и литература *)
(* Код совпадает с книгой. Перед самостоятельным примером выполните Quit[] в отдельной ячейке. *)

(* 9.2. Указатель команд Wolfram Language *)
a = {{1, 2, 3}, {2, 4, 6}};
p = PseudoInverse[a];
{a.p.a == a, p.a.p == p,
 ConjugateTranspose[a.p] == a.p,
 ConjugateTranspose[p.a] == p.a}

(* 9.2. Указатель команд Wolfram Language *)
ClearAll[t];
a = {{2, 1}, {0, 2}};
{s, j} = JordanDecomposition[a];
e = MatrixExp[t a];
{a.s == s.j, Det[s] != 0,
 FullSimplify[D[e, t] - a.e],
 FullSimplify[(e /. t -> 0) - IdentityMatrix[2]]}

(* Задача 9.1 *)
a = {{1, 2}, {3, 4}}; b = {{2, 0}, {1, 2}};
{a.b, a*b}

(* Задача 9.2 *)
a = {{1, 2, 3}, {4, 5, 6}};
{Dimensions[a], Length[a], Length[First[a]]}

(* Задача 9.3 *)
a = {{1, 2, 3}}; z = NullSpace[a];
{Length[z], a.Transpose[z]}

(* Задача 9.4 *)
a = {{1, 0, 0}, {0, 1, 0}};
{MatrixRank[a], Length[NullSpace[a]]}

(* Задача 9.5 *)
x = {1, I};
{Norm[x], Sqrt[Conjugate[x].x]}

(* Задача 9.6 *)
a = {{1, 2}};
{a.{2, 1}, a.{1, 2}}

(* Задача 9.7 *)
a = {{3, 1}, {1, 2}}; b = {1, 4};
{LinearSolve[a, b], Inverse[a].b}

(* Задача 9.8 *)
a = {{1, 2, 3}};
u = {{-2, 1, 0}, {-3, 0, 1}};
v = {{2, -1, 0}, {1, 1, -1}};
{a.Transpose[u], a.Transpose[v],
 MatrixRank[u], MatrixRank[v]}

(* Задача 9.9 *)
a = {{1, 1}, {1, 1 + e}};
{Factor[Det[a]], Det[a /. e -> 1/1000]}

(* Задача 9.10 *)
a = {{1, 2}, {2, 4}}; b = {1, 2};
{a.{1, 0} - b, a.{-1, 1} - b}

(* Задача 9.11 *)
a = {{1, 1}, {0, 1}}; b = DiagonalMatrix[{1, 2}];
MatrixPower[a + b, 2] -
 MatrixPower[a, 2] - 2 a.b - MatrixPower[b, 2]

(* Задача 9.12 *)
u = {{1, 0, 1}, {0, 1, 1}};
v = {{2, 0, 2}, {1, 1, 2}};
{MatrixRank[u], MatrixRank[v],
 MatrixRank[Join[u, v]]}

(* Задача 9.13 *)
a = {{1, 0, 0}, {0, 1, 0}}; b = Transpose[a];
{a.b, b.a}

(* Задача 9.14 *)
a = {{t, 0}, {0, 1}};
{a.{0, 1}, (a /. t -> 0).{s, 1}}

(* Задача 9.15 *)
a = DiagonalMatrix[{1, 1/1000}];
x = {1, 1}; estimate = {1, 2}; b = a.x;
r = b - a.estimate;
{r, estimate - x, -Inverse[a].r}
