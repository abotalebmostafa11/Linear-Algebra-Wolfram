(* 2. Ортогональные и сингулярные разложения *)

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
