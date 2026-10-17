(* 2. Линейные уравнения и матрицы *)
(* Перед самостоятельным примером выполните Quit[] в отдельной ячейке Mathematica. *)
(* Копируйте один пример целиком. Его код совпадает с блоком книги. *)

(* 2.1. Уравнение как ограничение *)
a = {{1, 1}, {1/5, 1/2}};
b = {10, 16/5};
x = LinearSolve[a, b];
{x, a.x}

(* 2.2. Матрицы, сложение и произведение *)
orders = {{2, 3}, {4, 1}};
prices = {{5, 7}, {2, 3}};
cost = orders.prices;
{Dimensions[cost], cost}

(* 2.3. Элементарные преобразования и эквивалентность *)
aug = {{1, 1, 3}, {2, 3, 8}};
next = aug;
next[[2]] = aug[[2]] - 2 aug[[1]];
{next, RowReduce[aug]}

(* 2.4. Метод Гаусса по шагам *)
a = {{1, 1, 1}, {2, -1, 1}, {1, 2, -1}};
b = {6, 3, 2};
aug = MapThread[Append, {a, b}];
rref = RowReduce[aug];
x = LinearSolve[a, b];
{rref, x, b - a.x}

(* 2.5. Приведенная ступенчатая форма *)
ClearAll[s, t];
a = {{1, 2, 0, -1}, {0, 0, 1, 4}};
x = {3 - 2 s + t, s, 5 - 4 t, t};
{Expand[a.x], NullSpace[a]}

(* 2.6. Однородная и неоднородная системы *)
ClearAll[t];
xp = {6, 0};
direction = {-2, 1};
family = xp + t direction;
{family, Expand[{1, 2}.family]}

(* 2.7. Совместность, ранг и единственность *)
a = {{1, 1}, {2, 2}};
Table[
 {c, MatrixRank[a],
  MatrixRank[MapThread[Append, {a, {2, c}}]]},
 {c, {4, 5}}]

(* 2.8. Контрольная задача с интерпретацией *)
a = {{1, 1}, {1, -1}};
b = {120, 20};
flow = LinearSolve[a, b];
{flow, Min[flow] >= 0, a.flow == b}
