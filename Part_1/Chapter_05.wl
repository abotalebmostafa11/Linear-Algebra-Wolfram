(* 5. Конечномерные пространства *)

(* 5.1. Линейная независимость *)
u = {1, 0, 1}; v = {0, 1, 1}; w = {1, 1, 2};
a = Transpose[{u, v, w}];
{u + v - w, MatrixRank[a], NullSpace[a]}

(* 5.2. Базис и единственность координат *)
basisMatrix = Transpose[{{1, 1}, {1, -1}}];
x = {5, 1};
coordinates = LinearSolve[basisMatrix, x];
{coordinates, basisMatrix.coordinates}

(* 5.3. Теорема о размерности *)
ClearAll[a, b, c];
e1 = {{1, 0}, {0, 0}};
e2 = {{0, 0}, {0, 1}};
e3 = {{0, 1}, {1, 0}};
a e1 + c e2 + b e3

(* 5.4. Пространства строк и столбцов *)
a = {{1, 2, 0}, {2, 4, 1}, {0, 0, 1}};
{RowReduce[a], a[[All, {1, 3}]], MatrixRank[a]}

(* 5.6. Сумма, пересечение и формула Грассмана *)
u = {{1, 0, 0}, {0, 1, 0}};
w = {{0, 1, 0}, {0, 0, 1}};
sumDim = MatrixRank[Join[u, w]];
intersectionDim = MatrixRank[u] +
  MatrixRank[w] - sumDim;
{sumDim, intersectionDim}

(* 5.7. Прямая сумма *)
ClearAll[t];
p = 1 + 2 t + 3 t^2 + 4 t^3;
even = Expand[(p + (p /. t -> -t))/2];
odd = Expand[(p - (p /. t -> -t))/2];
{even, odd, Expand[even + odd - p]}

(* 5.8. Факторпространство *)
x = {4, 7, 10};
centered = x - Mean[x];
shifted = x + 100;
{centered, shifted - Mean[shifted]}
