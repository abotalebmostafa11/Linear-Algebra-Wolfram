(* 2. Ортогональные и сингулярные разложения *)
(* Перед самостоятельным примером выполните Quit[] в отдельной ячейке Mathematica. *)
(* Копируйте один пример целиком. Его код совпадает с блоком книги. *)

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

(* 2.3.1. Главные компоненты: сжатие признаков *)
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

(* 2.6. Обусловленность: нормальные уравнения или QR *)
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
