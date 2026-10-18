(* 7. Справочник и литература *)
(* Код совпадает с книгой. Перед самостоятельным примером выполните Quit[] в отдельной ячейке. *)

(* 7.2. Указатель команд Wolfram Language *)
a = {{1, 2, 3}, {2, 4, 6}};
p = PseudoInverse[a];
{a.p.a == a, p.a.p == p,
 ConjugateTranspose[a.p] == a.p,
 ConjugateTranspose[p.a] == p.a}

(* 7.2. Указатель команд Wolfram Language *)
ClearAll[t];
a = {{2, 1}, {0, 2}};
{s, j} = JordanDecomposition[a];
e = MatrixExp[t a];
{a.s == s.j, Det[s] != 0,
 FullSimplify[D[e, t] - a.e],
 FullSimplify[(e /. t -> 0) - IdentityMatrix[2]]}

(* Задача 7.1 *)
a = {{1, 0}, {1, 1}, {1, 2}, {1, 3}};
b = {1, 2, 2, 4};
{Dimensions[a], Dimensions[Transpose[a].a],
 Dimensions[Transpose[a].b]}

(* Задача 7.2 *)
r = {1, -1, 2, -2};
{r.r, (r.r)/Length[r]}

(* Задача 7.3 *)
e = DiagonalMatrix[{0, 1}];
{Norm[e, 2], Norm[e, "Frobenius"]^2}

(* Задача 7.4 *)
a = DiagonalMatrix[{2, 0}]; b = DiagonalMatrix[{1/2, 0}];
{a.b.a == a, b.a.b == b,
 Transpose[a.b] == a.b, Transpose[b.a] == b.a}

(* Задача 7.5 *)
r = {1, -2, 3};
{(100 r).(100 r)/(r.r),
 Sqrt[Mean[(100 r)^2]]/Sqrt[Mean[r^2]]}

(* Задача 7.6 *)
q = {{1, 0}, {0, 1}, {0, 0}};
{Transpose[q].q, q.Transpose[q]}

(* Задача 7.7 *)
a = {1, 1}; q = a/Norm[a];
v = a - (q.a) q;
{Simplify[v], Simplify[Norm[v]]}

(* Задача 7.8 *)
a = DiagonalMatrix[{1, 1/100000000}];
{MatrixRank[a], Det[a]}

(* Задача 7.9 *)
t = {100, 101, 102};
a = Transpose[{ConstantArray[1, 3], t}];
b = Transpose[{ConstantArray[1, 3], t - Mean[t]}];
{(Transpose[a].a)[[1, 2]],
 (Transpose[b].b)[[1, 2]]}

(* Задача 7.10 *)
p = {{1/2}, {1/2}};
{Dimensions[p], p.{1}}

(* Задача 7.11 *)
y = {0, 1, 2}; constant = {1, 1, 1};
linear = {0, 1, 2};
{Total[(y - constant)^2], Total[(y - linear)^2]}

(* Задача 7.12 *)
r = {-1, 9}; w = {9, 1};
{Total[r], w.r}

(* Задача 7.13 *)
a = DiagonalMatrix[{3, 1}];
b1 = DiagonalMatrix[{3, 0}]; b2 = DiagonalMatrix[{5/2, 0}];
{Norm[a - b1, 2], Norm[a - b2, 2],
 Norm[a - b1, "Frobenius"],
 Norm[a - b2, "Frobenius"]}

(* Задача 7.14 *)
a = {{0, 1}, {0, 2}}; l = {{0, 1}};
m = Transpose[a].a + Transpose[l].l;
{m, Det[m]}

(* Задача 7.15 *)
a = DiagonalMatrix[{4, 2, 1}];
p = DiagonalMatrix[{1, 0, 0}];
{Norm[a.(IdentityMatrix[3] - p), "Frobenius"]^2,
 2^2 + 1^2}
