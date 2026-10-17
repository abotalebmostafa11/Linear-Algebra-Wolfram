(* 3. Унитарная диагонализация *)
(* Перед самостоятельным примером выполните Quit[] в отдельной ячейке Mathematica. *)
(* Копируйте один пример целиком. Его код совпадает с блоком книги. *)

(* 3.1. Сопряженный оператор и нормальность *)
a = {{1, -2}, {2, 1}};
{ConjugateTranspose[a].a,
 a.ConjugateTranspose[a], Eigenvalues[a]}

(* 3.3. Эрмитовы матрицы и главные оси *)
a = {{3, 1}, {1, 3}};
q = {{1, 1}, {1, -1}}/Sqrt[2];
{FullSimplify[Transpose[q].a.q],
 FullSimplify[Transpose[q].q]}

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
