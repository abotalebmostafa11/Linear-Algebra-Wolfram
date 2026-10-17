(* 7. Линейные преобразования *)
(* Перед самостоятельным примером выполните Quit[] в отдельной ячейке Mathematica. *)
(* Копируйте один пример целиком. Его код совпадает с блоком книги. *)

(* 7.1. Отображение и его свойства *)
ClearAll[t, a, b, c];
p = a + b t + c t^2;
{D[p, t], CoefficientList[D[p, t], t]}

(* 7.2. Матрица преобразования *)
dmat = {{0, 1, 0}, {0, 0, 2}};
coefficients = {3, -2, 4};
dmat.coefficients

(* 7.3. Композиция и умножение *)
stretch = {{2, 0}, {0, 1}};
rotation = {{0, -1}, {1, 0}};
x = {1, 1};
{rotation.stretch.x, stretch.rotation.x}

(* 7.4. Поворот, отражение и сдвиговое преобразование *)
q = {{3/5, -4/5}, {4/5, 3/5}};
x = {2, -1};
{Transpose[q].q, Norm[q.x], Norm[x], Det[q]}

(* 7.5. Смена базиса *)
a = {{2, 1}, {1, 2}};
p = {{1, 1}, {1, -1}};
new = Inverse[p].a.p;
{new, a.p == p.new}

(* 7.6. Ядро, образ и теорема о ранге *)
a = {{1, 0, 1}, {0, 1, 1}};
{NullSpace[a], MatrixRank[a],
 Length[NullSpace[a]] + MatrixRank[a]}

(* 7.8. Комплексная и вещественная линейность *)
{Conjugate[I*1], I Conjugate[1],
 Conjugate[2 + 3 I]}
