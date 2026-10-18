(* 5. Приложения спектральной теории *)
(* Код совпадает с книгой. Перед самостоятельным примером выполните Quit[] в отдельной ячейке. *)

(* 5.1. Квадратичные формы *)
ClearAll[x, y];
a = {{2, 1}, {1, 2}};
{Expand[{x, y}.a.{x, y}], Eigenvalues[a]}

(* 5.2. Инерция и закон Сильвестра *)
a = IdentityMatrix[2];
b = DiagonalMatrix[{1, -1}];
{Sort[Eigenvalues[a]], Sort[Eigenvalues[b]]}

(* 5.3. Критерий положительной определенности *)
a = {{4, 2, 0}, {2, 3, 1}, {0, 1, 2}};
minors = Table[Det[a[[1 ;; k, 1 ;; k]]],
 {k, 1, Length[a]}];
{minors, And @@ Thread[minors > 0]}

(* 5.4. Стационарные точки и гессиан *)
ClearAll[x, y];
f = x^2 + x y + y^2 - 4 x - 2 y;
vars = {x, y};
grad = D[f, #] & /@ vars;
hessian = Table[D[f, vars[[i]], vars[[j]]],
 {i, 2}, {j, 2}];
{Solve[Thread[grad == 0], vars],
 Eigenvalues[hessian]}

(* 5.5. Матрицы графа *)
a = {{0, 1, 0}, {1, 0, 1}, {0, 1, 0}};
l = DiagonalMatrix[Total /@ a] - a;
{Eigenvalues[l], NullSpace[l], a.a}

(* 5.5.1. Спектральная кластеризация *)
w = {{0, 1, 0, 0}, {1, 0, 1/10, 0},
 {0, 1/10, 0, 1}, {0, 0, 1, 0}};
lap = DiagonalMatrix[Total[w]] - w;
tau = (Sqrt[101] - 1)/10;
lambda2 = (11 - Sqrt[101])/10;
fiedler = {1, tau, -tau, -1};
{lap, FullSimplify[lap.fiedler - lambda2 fiedler],
 Total[fiedler], Sign[fiedler],
 Sort[N[Eigenvalues[lap], 8]]}

(* 5.6. Регулярные графы *)
a = {{0, 1, 0, 1}, {1, 0, 1, 0},
 {0, 1, 0, 1}, {1, 0, 1, 0}};
{a.ConstantArray[1, 4], Eigenvalues[a],
 a.{1, -1, 1, -1}}

(* 5.7. Степенной метод *)
a = N[{{2, 1}, {1, 2}}];
x = Normalize[{1., 0.}];
history = Table[
 x = Normalize[a.x];
 lambda = x.a.x;
 {k, lambda, Norm[a.x - lambda x]},
 {k, 1, 12}];
history

(* 5.8. QR-алгоритм и условия сходимости *)
a = N[{{4, 1}, {1, 2}}];
history = Table[
 {qs, r} = QRDecomposition[a];
 q = ConjugateTranspose[qs];
 a = r.q;
 {k, Diagonal[a], Abs[a[[2, 1]]]},
 {k, 1, 20}];
history

(* Задача 5.1 *)
a = {{3, 1}, {1, 3}};
Sort[Eigenvalues[a]]

(* Задача 5.2 *)
Sort[Eigenvalues[{{1, 2}, {2, 1}}]]

(* Задача 5.3 *)
a = {{2, 1}, {1, 2}};
{a[[1, 1]], Det[a]}

(* Задача 5.4 *)
l = {{1, -1, 0}, {-1, 2, -1}, {0, -1, 1}};
Sort[Eigenvalues[l]]

(* Задача 5.5 *)
l = {{1, -1, 0}, {-1, 2, -1}, {0, -1, 1}};
x = {0, 1, 1};
{x.l.x, (x[[1]] - x[[2]])^2 +
 (x[[2]] - x[[3]])^2}

(* Задача 5.6 *)
a = DiagonalMatrix[{1, 4}];
{Min[Eigenvalues[a]], {1, 0}.a.{1, 0}}

(* Задача 5.7 *)
a = {{1, t}, {t, 1}};
{Factor[Det[a]],
 Table[Sort[Eigenvalues[a /. t -> s]],
  {s, {-1, 0, 1}}]}

(* Задача 5.8 *)
l = {{1, -1, 0, 0}, {-1, 1, 0, 0},
 {0, 0, 1, -1}, {0, 0, -1, 1}};
{Sort[Eigenvalues[l]], Length[NullSpace[l]]}

(* Задача 5.9 *)
a = DiagonalMatrix[{3, 1}];
Table[With[{x = MatrixPower[a, k].{1, 1}},
 {x, x[[2]]/x[[1]]}], {k, 1, 3}]

(* Задача 5.10 *)
a = DiagonalMatrix[{3, 1}];
Table[MatrixPower[a, k].{0, 1}, {k, 1, 3}]

(* Задача 5.11 *)
a = DiagonalMatrix[{1, -1}]; p = {{1, 1}, {0, 1}};
b = Transpose[p].a.p;
{Det[b], Tr[b]}

(* Задача 5.12 *)
a = DiagonalMatrix[{0, -1}];
{a[[1, 1]], Det[a], {0, 1}.a.{0, 1}}

(* Задача 5.13 *)
l = {{-1, 1}, {1, -1}}; x = {1, 0};
x.l.x

(* Задача 5.14 *)
q = {{0, -1}, {1, 0}}; r = {{2, 1}, {0, 3}};
a = q.r; b = r.q;
Expand[CharacteristicPolynomial[a, t] -
 CharacteristicPolynomial[b, t]]

(* Задача 5.15 *)
a = DiagonalMatrix[{1, -1}];
Table[MatrixPower[a, k].{1, 1}, {k, 0, 3}]
