(* 2. Ортогональные и сингулярные разложения *)
(* Код совпадает с книгой. Перед самостоятельным примером выполните Quit[] в отдельной ячейке. *)

(* 2.1. Метод Грама–Шмидта *)
a1 = {1, 1, 0}; a2 = {1, 0, 1};
q1 = a1/Norm[a1];
v2 = a2 - q1 (Conjugate[q1].a2);
q2 = FullSimplify[v2/Norm[v2]];
{q1, q2, FullSimplify[Conjugate[q1].q2]}

(* 2.2. QR-разложение *)
a = {{1, 1}, {1, 0}, {0, 1}};
{qStored, r} = QRDecomposition[a];
q = ConjugateTranspose[qStored];
{FullSimplify[q.r - a],
 FullSimplify[ConjugateTranspose[q].q]}

(* 2.3. Сингулярное разложение и псевдообратная *)
a = {{1, 1}};
b = {2};
pinv = PseudoInverse[a];
x = pinv.b;
{pinv, x, a.x}

(* 2.3.1. Связь SVD с главными компонентами *)
x = {{-2, -1}, {-1, -2}, {1, 2}, {2, 1}};
mean = Mean[x];
xc = (# - mean) & /@ x;
v1 = {1, 1}/Sqrt[2];
z = xc.v1;
xOne = Outer[Times, z, v1];
err = Total[Flatten[(xc - xOne)^2]];
{mean, Transpose[xc].xc, z, xOne, err,
 1 - err/Total[Flatten[xc^2]]}

(* 2.3.2. Регуляризация и гребневая регрессия *)
a = {{1, 1}, {2, 2}}; b = {1, 2};
lambda = 1;
normal = Transpose[a].a + lambda IdentityMatrix[2];
x = LinearSolve[normal, Transpose[a].b];
r = b - a.x;
{x, a.x, r, Transpose[a].r - lambda x,
 r.r, x.x, r.r + lambda x.x}

(* 2.4. Скалярное произведение функций *)
ClearAll[t];
c = Integrate[t^2, {t, -1, 1}]/
  Integrate[1, {t, -1, 1}];
{c, Integrate[t^2 - c, {t, -1, 1}],
 Integrate[(t^2 - c)^2, {t, -1, 1}]}

(* 2.5. Изометрии и вращения пространства *)
q = {{0, -1, 0}, {1, 0, 0}, {0, 0, 1}};
{Transpose[q].q, Det[q],
 NullSpace[q - IdentityMatrix[3]]}

(* 2.6.1. Нормы векторов и матриц *)
x = {3, -4};
{Norm[x, 1], Norm[x, 2], Norm[x, Infinity]}

(* 2.6.1. Нормы векторов и матриц *)
a = {{1, -2}, {3, 4}};
{Norm[a, 1], Norm[a, Infinity], Norm[a, "Frobenius"]}

(* 2.6.2. Число обусловленности и ошибка решения *)
a = DiagonalMatrix[{1, 1/1000}];
b = {1, 0}; db = {0, 1/100000};
x = LinearSolve[a, b];
dx = LinearSolve[a, b + db] - x;
kappa = Norm[a, Infinity] Norm[Inverse[a], Infinity];
inputError = Norm[db, Infinity]/Norm[b, Infinity];
outputError = Norm[dx, Infinity]/Norm[x, Infinity];
{kappa, inputError, outputError, outputError <= kappa inputError}

(* 2.6.2. Число обусловленности и ошибка решения *)
eps = 1/10^6;
a = DiagonalMatrix[{1, eps}]; b = {1, eps};
x = LinearSolve[a, b]; xhat = {1, 0};
r = b - a.xhat;
{Norm[a, Infinity] Norm[Inverse[a], Infinity], x, xhat,
 Norm[r, Infinity]/Norm[b, Infinity],
 Norm[x - xhat, Infinity]/Norm[x, Infinity]}

(* 2.6.3. Нормальные уравнения и QR *)
eps = 10.^-8;
a = {{1, 1}, {eps, 0}, {0, eps}};
b = {2, eps, eps};
normal = Transpose[a].a;
{qStored, r} = QRDecomposition[a];
xqr = LinearSolve[r, qStored.b];
{Det[normal], xqr, Norm[a.xqr - b]}

(* 2.7. Наилучшее приближение малого ранга *)
a = {{3, 1}, {1, 3}};
{u, s, v} = SingularValueDecomposition[a];
a1 = s[[1, 1]] Outer[Times, u[[All, 1]],
  Conjugate[v[[All, 1]]]];
{Diagonal[s], a1, Norm[a - a1, 2], Norm[a - a1, "Frobenius"]}

(* 2.8. Отражения Хаусхолдера и вращения Гивенса *)
sigma[t_] := If[t >= 0, 1, -1];
householder[x_] := Module[{n = Length[x], w},
  If[Norm[x] == 0, IdentityMatrix[n],
   w = x + sigma[x[[1]]] Norm[x] UnitVector[n, 1];
   IdentityMatrix[n] - 2 Outer[Times, w, w]/(w.w)]];
givens[{a_, b_}] := Module[{r = Sqrt[a^2 + b^2]},
  If[r == 0, IdentityMatrix[2], {{a, b}, {-b, a}}/r]];
x = {3, 4}; h = householder[x]; g = givens[x];
{h, h.x, g.x, Transpose[h].h == IdentityMatrix[2],
 householder[{0, 3, 4}].{0, 3, 4}, householder[{0, 0, 0}],
   givens[{0, 0}]}

(* Задача 2.1 *)
q1 = {1, 1, 0}/Sqrt[2];
q2 = {1, -1, 2}/Sqrt[6];
Simplify[{q1.q1, q2.q2, q1.q2}]

(* Задача 2.2 *)
q = {{1, 0}, {0, 1}, {0, 0}};
r = {{1, 1}, {0, 1}};
{Dimensions[q], Dimensions[r], q.r}

(* Задача 2.3 *)
a = DiagonalMatrix[{3, -2}];
{Sort[Eigenvalues[a]],
 Sqrt[Sort[Eigenvalues[Transpose[a].a]]]}

(* Задача 2.4 *)
a = DiagonalMatrix[{5, 2, 1}];
b = DiagonalMatrix[{5, 0, 0}];
{Norm[a - b, 2], Norm[a - b, "Frobenius"]}

(* Задача 2.5 *)
a = DiagonalMatrix[{2, 0}];
p = DiagonalMatrix[{1/2, 0}];
{p, a.p.a == a}

(* Задача 2.6 *)
v = {8, 4};
h = IdentityMatrix[2] - 2 Outer[Times, v, v]/(v.v);
{h, h.{3, 4}, h.h}

(* Задача 2.7 *)
g = {{3/5, 4/5}, {-4/5, 3/5}};
{g.{3, 4}, Det[g], Transpose[g].g}

(* Задача 2.8 *)
a = DiagonalMatrix[{1, 1/100}];
{Norm[a, 2] Norm[Inverse[a], 2],
 Norm[Transpose[a].a, 2]
  Norm[Inverse[Transpose[a].a], 2]}

(* Задача 2.9 *)
s = {4, 2, 1};
{Total[Take[s, 1]^2], Total[Take[s, 2]^2]}/Total[s^2]

(* Задача 2.10 *)
a = DiagonalMatrix[{3, 1}];
b1 = DiagonalMatrix[{3, 0}];
b2 = DiagonalMatrix[{5/2, 0}];
{MatrixRank[b1], MatrixRank[b2],
 Norm[a - b1, 2], Norm[a - b2, 2]}

(* Задача 2.11 *)
v = {1, 2, 3};
p = Outer[Times, v, v]/(v.v); h = IdentityMatrix[3] - 2 p;
{p.p == p, Transpose[h].h == IdentityMatrix[3]}

(* Задача 2.12 *)
x = {0, 2}; v = {2, 2};
h = IdentityMatrix[2] - 2 Outer[Times, v, v]/(v.v);
h.x

(* Задача 2.13 *)
a = {{1, 0}, {0, 0}, {0, 0}};
{MatrixRank[a], Det[Transpose[a].a]}

(* Задача 2.14 *)
a = DiagonalMatrix[{5, 2, 1}];
b = DiagonalMatrix[{4, 0, 0}]; w = {0, 1, 0};
{Norm[(a - b).w], Norm[a - b, 2]}

(* Задача 2.15 *)
q = {{1, 0}, {0, 1}, {0, 0}};
r = {{1, 2}, {0, 1}}; x = {2, -1}; b = {1, 1, 3};
{Norm[q.r.x - b]^2,
 Norm[r.x - Transpose[q].b]^2 +
 Norm[(IdentityMatrix[3] - q.Transpose[q]).b]^2}
