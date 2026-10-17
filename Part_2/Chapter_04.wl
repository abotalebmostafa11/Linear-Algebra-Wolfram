(* 4. Приложения спектральной теории *)
(* Перед самостоятельным примером выполните Quit[] в отдельной ячейке Mathematica. *)
(* Копируйте один пример целиком. Его код совпадает с блоком книги. *)

(* 4.1. Квадратичные формы *)
ClearAll[x, y];
a = {{2, 1}, {1, 2}};
{Expand[{x, y}.a.{x, y}], Eigenvalues[a]}

(* 4.3. Критерий положительной определенности *)
a = {{4, 2, 0}, {2, 3, 1}, {0, 1, 2}};
minors = Table[Det[a[[1 ;; k, 1 ;; k]]],
 {k, 1, Length[a]}];
{minors, And @@ Thread[minors > 0]}

(* 4.4. Стационарные точки и гессиан *)
ClearAll[x, y];
f = x^2 + x y + y^2 - 4 x - 2 y;
vars = {x, y};
grad = D[f, #] & /@ vars;
hessian = Table[D[f, vars[[i]], vars[[j]]],
 {i, 2}, {j, 2}];
{Solve[Thread[grad == 0], vars],
 Eigenvalues[hessian]}

(* 4.5. Матрицы графа *)
a = {{0, 1, 0}, {1, 0, 1}, {0, 1, 0}};
l = DiagonalMatrix[Total /@ a] - a;
{Eigenvalues[l], NullSpace[l], a.a}

(* 4.5.1. Спектральная кластеризация *)
w = {{0, 1, 0, 0}, {1, 0, 1/10, 0},
 {0, 1/10, 0, 1}, {0, 0, 1, 0}};
lap = DiagonalMatrix[Total[w]] - w;
tau = (Sqrt[101] - 1)/10;
lambda2 = (11 - Sqrt[101])/10;
fiedler = {1, tau, -tau, -1};
{lap, FullSimplify[lap.fiedler - lambda2 fiedler],
 Total[fiedler], Sign[fiedler],
 Sort[N[Eigenvalues[lap], 8]]}

(* 4.6. Регулярные графы *)
a = {{0, 1, 0, 1}, {1, 0, 1, 0},
 {0, 1, 0, 1}, {1, 0, 1, 0}};
{a.ConstantArray[1, 4], Eigenvalues[a],
 a.{1, -1, 1, -1}}

(* 4.7. Степенной метод *)
a = N[{{2, 1}, {1, 2}}];
x = Normalize[{1., 0.}];
history = Table[
 x = Normalize[a.x];
 lambda = x.a.x;
 {k, lambda, Norm[a.x - lambda x]},
 {k, 1, 12}];
history

(* 4.8. QR-алгоритм и условия сходимости *)
a = N[{{4, 1}, {1, 2}}];
history = Table[
 {qs, r} = QRDecomposition[a];
 q = ConjugateTranspose[qs];
 a = r.q;
 {k, Diagonal[a], Abs[a[[2, 1]]]},
 {k, 1, 20}];
history
