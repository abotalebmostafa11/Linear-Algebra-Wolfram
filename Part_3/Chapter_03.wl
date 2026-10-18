(* 3. Метод главных компонент *)
(* Код совпадает с книгой. Перед самостоятельным примером выполните Quit[] в отдельной ячейке. *)

(* 3.1. Центрирование и ковариационная матрица *)
data = {{1, 2}, {3, 4}, {5, 6}};
mean = Mean[data];
x = (# - mean) & /@ data;
c = Transpose[x].x/(Length[x] - 1);
{mean, Total[x], c, MatrixRank[c]}

(* 3.4. Расчёт для шести наблюдений *)
x = {{-2, -4, 1/2}, {-1, -2, -1}, {0, 0, 1/2},
     {0, 0, -1/2}, {1, 2, 1}, {2, 4, -1/2}};
c = Transpose[x].x/(Length[x] - 1);
v1 = {1, 2, 0}/Sqrt[5];
z = x.v1; x1 = Outer[Times, z, v1];
error = FullSimplify[Total[Flatten[(x - x1)^2]]];
{Total[x], c, Sort[Eigenvalues[c]], error,
 FullSimplify[1 - error/Total[Flatten[x^2]]]}

(* 3.5. Масштаб признаков и стандартизация *)
c = {{2, 4, 0}, {4, 8, 0}, {0, 0, 3/5}};
scale = DiagonalMatrix[Sqrt[Diagonal[c]]];
correlation = FullSimplify[Inverse[scale].c.Inverse[scale]];
{correlation, Sort[Eigenvalues[correlation]], 2/3}

(* 3.6. SVD и применение к новым наблюдениям *)
mean = {2, 3}; v = {1, 1}/Sqrt[2];
new = {5, 4};
score = (new - mean).v;
restored = FullSimplify[mean + score v];
residual = new - restored;
{score, restored, FullSimplify[residual.v], residual.residual}

(* Задача 3.1 *)
data = {{1, 2}, {3, 4}, {5, 6}};
mean = Mean[data]; x = (# - mean) & /@ data;
{mean, Total[x]}

(* Задача 3.2 *)
x = {{-1, 0}, {1, 0}, {0, -2}, {0, 2}};
Transpose[x].x/(Length[x] - 1)

(* Задача 3.3 *)
x = {2, 1}; v = {3, 4}/5; z = x.v;
{z, z v, x - z v}

(* Задача 3.4 *)
x = {{-1, -1}, {1, 1}}; v = {1, 1}/Sqrt[2];
restored = FullSimplify[Outer[Times, x.v, v]];
restored == x

(* Задача 3.5 *)
values = {9, 1};
{First[values]/Total[values], Last[values]/Total[values]}

(* Задача 3.6 *)
h = IdentityMatrix[3] - ConstantArray[1, {3, 3}]/3;
{h.h == h, h.{1, 1, 1}, MatrixRank[h]}

(* Задача 3.7 *)
x = {{1, 0, 1}, {0, 1, 0}};
{Sort[DeleteCases[Eigenvalues[Transpose[x].x], 0]],
 Sort[Eigenvalues[x.Transpose[x]]]}

(* Задача 3.8 *)
data = IdentityMatrix[4]; mean = Mean[data];
x = (# - mean) & /@ data;
{MatrixRank[x], Total[x]}

(* Задача 3.9 *)
values = {10, 3/5, 0}; threshold = 19/20;
Min[Select[Range[Length[values]],
 Total[Take[values, #]]/Total[values] >= threshold &]]

(* Задача 3.10 *)
x = {{-1, 0}, {1, 0}, {0, -2}, {0, 2}};
w = DiagonalMatrix[{Sqrt[3/2], Sqrt[3/8]}];
y = x.w; FullSimplify[Transpose[y].y/(Length[y] - 1)]

(* Задача 3.11 *)
data = {{1, 2}, {3, 1}, {2, 6}}; shift = {10, -7};
shifted = (# + shift) & /@ data;
x = (# - Mean[data]) & /@ data;
y = (# - Mean[shifted]) & /@ shifted;
x == y

(* Задача 3.12 *)
c = IdentityMatrix[2]; v = {1, 0}; w = {1, 1}/Sqrt[2];
p = Outer[Times, v, v]; q = Outer[Times, w, w];
{v.c.v, FullSimplify[w.c.w],
 FullSimplify[Total[Flatten[(p - q)^2]]]}

(* Задача 3.13 *)
data = {{10, -1}, {10, 1}}; mean = Mean[data];
x = (# - mean) & /@ data;
{Transpose[data].data, Transpose[x].x}

(* Задача 3.14 *)
training = {{0, 0}, {2, 0}}; mean = Mean[training];
v = {1, 0}; new = {5, 1}; score = (new - mean).v;
restored = mean + score v; residual = new - restored;
{mean, score, restored, residual.residual}

(* Задача 3.15 *)
data = {{0, 1}, {2, 3}, {4, 2}};
p = DiagonalMatrix[{1, 0}];
affineError[a_] := Total[(Norm[(IdentityMatrix[2] - p).(# - a)]^2 &) /@ data];
mean = Mean[data];
{mean, affineError[{0, 0}], affineError[mean],
 Length[data] Norm[(IdentityMatrix[2] - p).mean]^2}
