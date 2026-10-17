(* 4. Справочник и литература *)
(* Перед самостоятельным примером выполните Quit[] в отдельной ячейке Mathematica. *)
(* Копируйте один пример целиком. Его код совпадает с блоком книги. *)

(* 4.2. Указатель команд Wolfram Language *)
a = {{1, 2, 3}, {2, 4, 6}};
p = PseudoInverse[a];
{a.p.a == a, p.a.p == p,
 ConjugateTranspose[a.p] == a.p,
 ConjugateTranspose[p.a] == p.a}

(* 4.2. Указатель команд Wolfram Language *)
ClearAll[t];
a = {{2, 1}, {0, 2}};
{s, j} = JordanDecomposition[a];
e = MatrixExp[t a];
{a.s == s.j, Det[s] != 0,
 FullSimplify[D[e, t] - a.e],
 FullSimplify[(e /. t -> 0) - IdentityMatrix[2]]}
