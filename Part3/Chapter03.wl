(* 3. Нормы и обусловленность линейных задач *)
(* Код совпадает с книгой. Перед самостоятельным примером выполните Quit[] в отдельной ячейке. *)

(* 3.1. Нормы векторов и матриц *)
x = {3, -4};
{Norm[x, 1], Norm[x, 2], Norm[x, Infinity]}

(* 3.1. Нормы векторов и матриц *)
a = {{1, -2}, {3, 4}};
{Norm[a, 1], Norm[a, Infinity], Norm[a, "Frobenius"]}

(* 3.2. Число обусловленности и ошибка решения *)
a = DiagonalMatrix[{1, 1/1000}];
b = {1, 0}; db = {0, 1/100000};
x = LinearSolve[a, b];
dx = LinearSolve[a, b + db] - x;
kappa = Norm[a, Infinity] Norm[Inverse[a], Infinity];
inputError = Norm[db, Infinity]/Norm[b, Infinity];
outputError = Norm[dx, Infinity]/Norm[x, Infinity];
{kappa, inputError, outputError, outputError <= kappa inputError}

(* 3.2. Число обусловленности и ошибка решения *)
eps = 1/10^6;
a = DiagonalMatrix[{1, eps}]; b = {1, eps};
x = LinearSolve[a, b]; xhat = {1, 0};
r = b - a.xhat;
{Norm[a, Infinity] Norm[Inverse[a], Infinity], x, xhat,
 Norm[r, Infinity]/Norm[b, Infinity],
 Norm[x - xhat, Infinity]/Norm[x, Infinity]}

(* 3.3. Нормальные уравнения и QR *)
eps = 10.^-8;
a = {{1, 1}, {eps, 0}, {0, eps}};
b = {2, eps, eps};
normal = Transpose[a].a;
{qStored, r} = QRDecomposition[a];
xqr = LinearSolve[r, qStored.b];
{Det[normal], xqr, Norm[a.xqr - b]}

(* 3.4. Обратная ошибка и расстояние до вырожденности *)
a = DiagonalMatrix[{1, 1/10^6}];
b = {1, 1/10^6}; xhat = {1, 0};
x = LinearSolve[a, b]; r = b - a.xhat;
eta = Norm[r, Infinity]/Norm[b, Infinity];
kappa = Norm[a, Infinity] Norm[Inverse[a], Infinity];
{eta, Norm[x - xhat, Infinity]/Norm[x, Infinity],
 kappa eta}

(* 3.4. Обратная ошибка и расстояние до вырожденности *)
a = DiagonalMatrix[{4, 1/100}];
e = DiagonalMatrix[{0, -1/100}];
{Det[a + e], Norm[e, 2], Norm[e, 2]/Norm[a, 2],
 Norm[a, 2] Norm[Inverse[a], 2]}

(* 3.5. Масштабирование и предобусловливание *)
a = DiagonalMatrix[{1, 1000}]; b = {1, 1000};
d = DiagonalMatrix[{1, 1/1000}];
z = LinearSolve[a.d, b]; x = d.z;
{x, a.x - b,
 Norm[a, Infinity] Norm[Inverse[a], Infinity],
 Norm[a.d, Infinity] Norm[Inverse[a.d], Infinity]}

(* 3.6. Точность арифметики и проверяемый результат *)
eps = 1/10^8;
a = {{1, 1}, {1, 1 + eps}};
b = {2, 2 + eps}; db = {0, eps/100};
x = LinearSolve[a, b];
dx = LinearSolve[a, b + db] - x;
{x, dx, a.dx - db, N[dx, 20]}

(* Задача 3.1 *)
x = {1, -2, 2};
{Norm[x, 1], Norm[x, 2], Norm[x, Infinity]}

(* Задача 3.2 *)
a = {{1, -2}, {3, 4}};
{Norm[a, 1], Norm[a, Infinity],
 Sqrt[Total[Flatten[a^2]]]}

(* Задача 3.3 *)
a = DiagonalMatrix[{5, 1/20}];
kappa = Norm[a, 2] Norm[Inverse[a], 2];
{kappa, 1/kappa}

(* Задача 3.4 *)
a = DiagonalMatrix[{2, 1/10}]; b = {2, 1/10};
db = {0, 1/100}; x = LinearSolve[a, b];
{x, LinearSolve[a, b + db] - x}

(* Задача 3.5 *)
a = DiagonalMatrix[{1, 1/100}]; b = {1, 1/100};
xhat = {1, 0}; x = LinearSolve[a, b];
{b - a.xhat, Norm[b - a.xhat, Infinity]/Norm[b, Infinity],
 Norm[x - xhat, Infinity]/Norm[x, Infinity]}

(* Задача 3.6 *)
a = DiagonalMatrix[{4, 1/5}]; c = 100 a;
{Norm[a, Infinity] Norm[Inverse[a], Infinity],
 Norm[c, Infinity] Norm[Inverse[c], Infinity]}

(* Задача 3.7 *)
a = DiagonalMatrix[{3, 1/7}]; b = DiagonalMatrix[{3, 0}];
{Det[b], Norm[a - b, 2], Norm[a, 2]/Norm[a - b, 2]}

(* Задача 3.8 *)
a = DiagonalMatrix[{2, 1}]; e = DiagonalMatrix[{0, -1/10}];
b = {2, 1}; x = LinearSolve[a, b];
dx = LinearSolve[a + e, b] - x;
{dx, Norm[dx, Infinity]/Norm[x, Infinity],
 (2/20)/(1 - 2/20)}

(* Задача 3.9 *)
a = DiagonalMatrix[{1, 1/100}];
{LinearSolve[a, {1/1000, 0}],
 LinearSolve[a, {0, 1/1000}]}

(* Задача 3.10 *)
a = {{1, 1}, {1/10, 0}, {0, 1/10}};
values = Sort[Eigenvalues[Transpose[a].a]];
{values, Last[values]/First[values],
 Sqrt[Last[values]/First[values]]}

(* Задача 3.11 *)
x = {2, 0, 0}; y = {2, -2, 2};
{Norm[x, 1]/Norm[x, 2],
 FullSimplify[Norm[y, 1]/Norm[y, 2]]}

(* Задача 3.12 *)
a = IdentityMatrix[2]/10^6;
b = DiagonalMatrix[{10^6, 1/10^6}];
{Det[a], Det[b],
 Norm[a, Infinity] Norm[Inverse[a], Infinity],
 Norm[b, Infinity] Norm[Inverse[b], Infinity]}

(* Задача 3.13 *)
a = DiagonalMatrix[{3, 1}];
q = {{0, -1}, {1, 0}}; r = {{0, 1}, {1, 0}};
c = q.a.r;
{Sort[Eigenvalues[Transpose[a].a]],
 Sort[Eigenvalues[Transpose[c].c]]}

(* Задача 3.14 *)
a = {{1}, {1}}; b = {0, 2};
m = DiagonalMatrix[{2, 1}];
{LeastSquares[a, b], LeastSquares[m.a, m.b]}

(* Задача 3.15 *)
a = IdentityMatrix[2]; e = DiagonalMatrix[{-1, 0}];
{Norm[Inverse[a], 2] Norm[e, 2], Det[a + e]}
