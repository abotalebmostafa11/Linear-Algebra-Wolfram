(* 7. Практикум. Решения с промежуточными вычислениями *)
(* Код совпадает с книгой. Перед самостоятельным примером выполните Quit[] в отдельной ячейке. *)

(* 7.1.1. Вариант 1. Три направления. Определитель 1 *)
a = {{2, 1, 2},
 {1, 3, 1},
 {2, 0, 4}};
minors = Table[Det[Delete[#, j] & /@ Rest[a]],
 {j, 1, 3}];
cofactors = {1, -1, 1} minors;
contributions = a[[1]] cofactors;
result = Total[contributions];
{minors, cofactors, contributions, result, Det[a]}

(* 7.1.2. Вариант 2. Три направления. Определитель 2 *)
a = {{3, 1, 2},
 {1, 4, 1},
 {2, 0, 5}};
minors = Table[Det[Delete[#, j] & /@ Rest[a]],
 {j, 1, 3}];
cofactors = {1, -1, 1} minors;
contributions = a[[1]] cofactors;
result = Total[contributions];
{minors, cofactors, contributions, result, Det[a]}

(* 7.1.3. Вариант 3. Три направления. Определитель 3 *)
a = {{4, 1, 2},
 {1, 5, 1},
 {2, 0, 6}};
minors = Table[Det[Delete[#, j] & /@ Rest[a]],
 {j, 1, 3}];
cofactors = {1, -1, 1} minors;
contributions = a[[1]] cofactors;
result = Total[contributions];
{minors, cofactors, contributions, result, Det[a]}

(* 7.1.4. Вариант 4. Три направления. Определитель 4 *)
a = {{5, 1, 2},
 {1, 6, 1},
 {2, 0, 7}};
minors = Table[Det[Delete[#, j] & /@ Rest[a]],
 {j, 1, 3}];
cofactors = {1, -1, 1} minors;
contributions = a[[1]] cofactors;
result = Total[contributions];
{minors, cofactors, contributions, result, Det[a]}

(* 7.1.5. Вариант 5. Три направления. Определитель 5 *)
a = {{6, 1, 2},
 {1, 7, 1},
 {2, 0, 8}};
minors = Table[Det[Delete[#, j] & /@ Rest[a]],
 {j, 1, 3}];
cofactors = {1, -1, 1} minors;
contributions = a[[1]] cofactors;
result = Total[contributions];
{minors, cofactors, contributions, result, Det[a]}

(* 7.1.6. Вариант 6. Три направления. Определитель 6 *)
a = {{7, 1, 2},
 {1, 8, 1},
 {2, 0, 9}};
minors = Table[Det[Delete[#, j] & /@ Rest[a]],
 {j, 1, 3}];
cofactors = {1, -1, 1} minors;
contributions = a[[1]] cofactors;
result = Total[contributions];
{minors, cofactors, contributions, result, Det[a]}

(* 7.1.6. Вариант 6. Три направления. Определитель 6 *)
a = IdentityMatrix[3]; b = DiagonalMatrix[{2, 1/2, 1}];
{Det[a], Det[b], b.{1, 0, 0}}

(* 7.2.1. Вариант 1. Преобразование участка. Масштаб 1 *)
p = {{2, 1},
 {1, 3}};
a = {{2, 1},
 {0, 2}};
u = p[[All, 1]]; v = p[[All, 2]];
new = Transpose[{a.u, a.v}];
{Det[p], Det[a], new, Abs[Det[new]],
 Det[new] == Det[a] Det[p]}

(* 7.2.2. Вариант 2. Преобразование участка. Масштаб 2 *)
p = {{2, 1},
 {1, 4}};
a = {{3, 1},
 {0, 2}};
u = p[[All, 1]]; v = p[[All, 2]];
new = Transpose[{a.u, a.v}];
{Det[p], Det[a], new, Abs[Det[new]],
 Det[new] == Det[a] Det[p]}

(* 7.2.3. Вариант 3. Преобразование участка. Масштаб 3 *)
p = {{2, 1},
 {1, 5}};
a = {{4, 1},
 {0, 2}};
u = p[[All, 1]]; v = p[[All, 2]];
new = Transpose[{a.u, a.v}];
{Det[p], Det[a], new, Abs[Det[new]],
 Det[new] == Det[a] Det[p]}

(* 7.2.4. Вариант 4. Преобразование участка. Масштаб 4 *)
p = {{2, 1},
 {1, 6}};
a = {{5, 1},
 {0, 2}};
u = p[[All, 1]]; v = p[[All, 2]];
new = Transpose[{a.u, a.v}];
{Det[p], Det[a], new, Abs[Det[new]],
 Det[new] == Det[a] Det[p]}

(* 7.2.5. Вариант 5. Преобразование участка. Масштаб 5 *)
p = {{2, 1},
 {1, 7}};
a = {{6, 1},
 {0, 2}};
u = p[[All, 1]]; v = p[[All, 2]];
new = Transpose[{a.u, a.v}];
{Det[p], Det[a], new, Abs[Det[new]],
 Det[new] == Det[a] Det[p]}

(* 7.2.6. Вариант 6. Преобразование участка. Масштаб 6 *)
p = {{2, 1},
 {1, 8}};
a = {{7, 1},
 {0, 2}};
u = p[[All, 1]]; v = p[[All, 2]];
new = Transpose[{a.u, a.v}];
{Det[p], Det[a], new, Abs[Det[new]],
 Det[new] == Det[a] Det[p]}

(* 7.2.6. Вариант 6. Преобразование участка. Масштаб 6 *)
Table[{t, Det[DiagonalMatrix[{t, 2}]],
 Abs[Det[DiagonalMatrix[{t, 2}]]]}, {t, {-1, 0, 1}}]

(* 7.3.1. Вариант 1. Два связанных процесса. Связь 1 *)
a = {{3, 1},
 {1, 3}};
q = {{1, 1},
 {1, -1}}/Sqrt[2];
x = {1, 1};
diagonal = FullSimplify[Transpose[q].a.q];
coordinates = FullSimplify[Transpose[q].x];
{Eigenvalues[a], diagonal, coordinates,
 FullSimplify[q.diagonal.coordinates - a.x]}

(* 7.3.2. Вариант 2. Два связанных процесса. Связь 2 *)
a = {{4, 1},
 {1, 4}};
q = {{1, 1},
 {1, -1}}/Sqrt[2];
x = {2, 1};
diagonal = FullSimplify[Transpose[q].a.q];
coordinates = FullSimplify[Transpose[q].x];
{Eigenvalues[a], diagonal, coordinates,
 FullSimplify[q.diagonal.coordinates - a.x]}

(* 7.3.3. Вариант 3. Два связанных процесса. Связь 3 *)
a = {{5, 1},
 {1, 5}};
q = {{1, 1},
 {1, -1}}/Sqrt[2];
x = {3, 1};
diagonal = FullSimplify[Transpose[q].a.q];
coordinates = FullSimplify[Transpose[q].x];
{Eigenvalues[a], diagonal, coordinates,
 FullSimplify[q.diagonal.coordinates - a.x]}

(* 7.3.4. Вариант 4. Два связанных процесса. Связь 4 *)
a = {{6, 1},
 {1, 6}};
q = {{1, 1},
 {1, -1}}/Sqrt[2];
x = {4, 1};
diagonal = FullSimplify[Transpose[q].a.q];
coordinates = FullSimplify[Transpose[q].x];
{Eigenvalues[a], diagonal, coordinates,
 FullSimplify[q.diagonal.coordinates - a.x]}

(* 7.3.5. Вариант 5. Два связанных процесса. Связь 5 *)
a = {{7, 1},
 {1, 7}};
q = {{1, 1},
 {1, -1}}/Sqrt[2];
x = {5, 1};
diagonal = FullSimplify[Transpose[q].a.q];
coordinates = FullSimplify[Transpose[q].x];
{Eigenvalues[a], diagonal, coordinates,
 FullSimplify[q.diagonal.coordinates - a.x]}

(* 7.3.6. Вариант 6. Два связанных процесса. Связь 6 *)
a = {{8, 1},
 {1, 8}};
q = {{1, 1},
 {1, -1}}/Sqrt[2];
x = {6, 1};
diagonal = FullSimplify[Transpose[q].a.q];
coordinates = FullSimplify[Transpose[q].x];
{Eigenvalues[a], diagonal, coordinates,
 FullSimplify[q.diagonal.coordinates - a.x]}

(* 7.3.6. Вариант 6. Два связанных процесса. Связь 6 *)
a = {{3, 1}, {1, 3}}; lambda = {4, 2};
{Sort[Eigenvalues[a]], lambda, 1/Sqrt[lambda]}

(* 7.4.1. Вариант 1. Повторное действие. Степень 4 *)
a = {{2, 1},
 {1, 2}};
power = 4;
coeff = {0, 1};
history = Table[
 coeff = {4 coeff[[1]] + coeff[[2]],
   -3 coeff[[1]]};
 Prepend[coeff, k], {k, 1, power}];
result = coeff[[1]] a + coeff[[2]] IdentityMatrix[2];
{history, result, result - MatrixPower[a, power]}

(* 7.4.2. Вариант 2. Повторное действие. Степень 5 *)
a = {{2, 1},
 {1, 2}};
power = 5;
coeff = {0, 1};
history = Table[
 coeff = {4 coeff[[1]] + coeff[[2]],
   -3 coeff[[1]]};
 Prepend[coeff, k], {k, 1, power}];
result = coeff[[1]] a + coeff[[2]] IdentityMatrix[2];
{history, result, result - MatrixPower[a, power]}

(* 7.4.3. Вариант 3. Повторное действие. Степень 6 *)
a = {{2, 1},
 {1, 2}};
power = 6;
coeff = {0, 1};
history = Table[
 coeff = {4 coeff[[1]] + coeff[[2]],
   -3 coeff[[1]]};
 Prepend[coeff, k], {k, 1, power}];
result = coeff[[1]] a + coeff[[2]] IdentityMatrix[2];
{history, result, result - MatrixPower[a, power]}

(* 7.4.4. Вариант 4. Повторное действие. Степень 7 *)
a = {{2, 1},
 {1, 2}};
power = 7;
coeff = {0, 1};
history = Table[
 coeff = {4 coeff[[1]] + coeff[[2]],
   -3 coeff[[1]]};
 Prepend[coeff, k], {k, 1, power}];
result = coeff[[1]] a + coeff[[2]] IdentityMatrix[2];
{history, result, result - MatrixPower[a, power]}

(* 7.4.5. Вариант 5. Повторное действие. Степень 8 *)
a = {{2, 1},
 {1, 2}};
power = 8;
coeff = {0, 1};
history = Table[
 coeff = {4 coeff[[1]] + coeff[[2]],
   -3 coeff[[1]]};
 Prepend[coeff, k], {k, 1, power}];
result = coeff[[1]] a + coeff[[2]] IdentityMatrix[2];
{history, result, result - MatrixPower[a, power]}

(* 7.4.6. Вариант 6. Повторное действие. Степень 9 *)
a = {{2, 1},
 {1, 2}};
power = 9;
coeff = {0, 1};
history = Table[
 coeff = {4 coeff[[1]] + coeff[[2]],
   -3 coeff[[1]]};
 Prepend[coeff, k], {k, 1, power}];
result = coeff[[1]] a + coeff[[2]] IdentityMatrix[2];
{history, result, result - MatrixPower[a, power]}

(* 7.4.6. Вариант 6. Повторное действие. Степень 9 *)
a = 2 IdentityMatrix[2]; b = {{2, 1}, {0, 2}};
{MatrixPower[a, 4], MatrixPower[b, 4]}

(* 7.5.1. Вариант 1. Энергия двух координат. Форма 1 *)
ClearAll[x, y];
a = {{2, 1},
 {1, 2}};
d1 = a[[1, 1]];
ell = a[[2, 1]]/d1;
d2 = a[[2, 2]] - ell a[[1, 2]];
l = {{1, 0},
 {ell, 1}};
d = DiagonalMatrix[{d1, d2}];
form = {x, y}.a.{x, y};
squares = d1 (x + ell y)^2 + d2 y^2;
{l.d.Transpose[l] == a, Expand[form - squares],
 d1 > 0 && d2 > 0}

(* 7.5.2. Вариант 2. Энергия двух координат. Форма 2 *)
ClearAll[x, y];
a = {{3, 1},
 {1, 2}};
d1 = a[[1, 1]];
ell = a[[2, 1]]/d1;
d2 = a[[2, 2]] - ell a[[1, 2]];
l = {{1, 0},
 {ell, 1}};
d = DiagonalMatrix[{d1, d2}];
form = {x, y}.a.{x, y};
squares = d1 (x + ell y)^2 + d2 y^2;
{l.d.Transpose[l] == a, Expand[form - squares],
 d1 > 0 && d2 > 0}

(* 7.5.3. Вариант 3. Энергия двух координат. Форма 3 *)
ClearAll[x, y];
a = {{4, 1},
 {1, 2}};
d1 = a[[1, 1]];
ell = a[[2, 1]]/d1;
d2 = a[[2, 2]] - ell a[[1, 2]];
l = {{1, 0},
 {ell, 1}};
d = DiagonalMatrix[{d1, d2}];
form = {x, y}.a.{x, y};
squares = d1 (x + ell y)^2 + d2 y^2;
{l.d.Transpose[l] == a, Expand[form - squares],
 d1 > 0 && d2 > 0}

(* 7.5.4. Вариант 4. Энергия двух координат. Форма 4 *)
ClearAll[x, y];
a = {{5, 1},
 {1, 2}};
d1 = a[[1, 1]];
ell = a[[2, 1]]/d1;
d2 = a[[2, 2]] - ell a[[1, 2]];
l = {{1, 0},
 {ell, 1}};
d = DiagonalMatrix[{d1, d2}];
form = {x, y}.a.{x, y};
squares = d1 (x + ell y)^2 + d2 y^2;
{l.d.Transpose[l] == a, Expand[form - squares],
 d1 > 0 && d2 > 0}

(* 7.5.5. Вариант 5. Энергия двух координат. Форма 5 *)
ClearAll[x, y];
a = {{6, 1},
 {1, 2}};
d1 = a[[1, 1]];
ell = a[[2, 1]]/d1;
d2 = a[[2, 2]] - ell a[[1, 2]];
l = {{1, 0},
 {ell, 1}};
d = DiagonalMatrix[{d1, d2}];
form = {x, y}.a.{x, y};
squares = d1 (x + ell y)^2 + d2 y^2;
{l.d.Transpose[l] == a, Expand[form - squares],
 d1 > 0 && d2 > 0}

(* 7.5.6. Вариант 6. Энергия двух координат. Форма 6 *)
ClearAll[x, y];
a = {{7, 1},
 {1, 2}};
d1 = a[[1, 1]];
ell = a[[2, 1]]/d1;
d2 = a[[2, 2]] - ell a[[1, 2]];
l = {{1, 0},
 {ell, 1}};
d = DiagonalMatrix[{d1, d2}];
form = {x, y}.a.{x, y};
squares = d1 (x + ell y)^2 + d2 y^2;
{l.d.Transpose[l] == a, Expand[form - squares],
 d1 > 0 && d2 > 0}

(* 7.5.6. Вариант 6. Энергия двух координат. Форма 6 *)
a = {{0, 1}, {1, 0}};
{Det[a], Sort[Eigenvalues[a]],
 {1, 1}.a.{1, 1}, {1, -1}.a.{1, -1}}

(* 7.6.1. Вариант 1. Оптимальная настройка. Энергия 1 *)
ClearAll[x, y, h1, h2];
a = {{3, 1},
 {1, 2}}; b = {1, 3};
vec = {x, y};
f = Expand[vec.a.vec/2 - b.vec];
point = LinearSolve[a, b];
minimum = f /. Thread[vec -> point];
shifted = f /. Thread[vec -> point + {h1, h2}];
{point, minimum,
 Expand[shifted - minimum], a.point - b}

(* 7.6.2. Вариант 2. Оптимальная настройка. Энергия 2 *)
ClearAll[x, y, h1, h2];
a = {{4, 1},
 {1, 2}}; b = {2, 3};
vec = {x, y};
f = Expand[vec.a.vec/2 - b.vec];
point = LinearSolve[a, b];
minimum = f /. Thread[vec -> point];
shifted = f /. Thread[vec -> point + {h1, h2}];
{point, minimum,
 Expand[shifted - minimum], a.point - b}

(* 7.6.3. Вариант 3. Оптимальная настройка. Энергия 3 *)
ClearAll[x, y, h1, h2];
a = {{5, 1},
 {1, 2}}; b = {3, 3};
vec = {x, y};
f = Expand[vec.a.vec/2 - b.vec];
point = LinearSolve[a, b];
minimum = f /. Thread[vec -> point];
shifted = f /. Thread[vec -> point + {h1, h2}];
{point, minimum,
 Expand[shifted - minimum], a.point - b}

(* 7.6.4. Вариант 4. Оптимальная настройка. Энергия 4 *)
ClearAll[x, y, h1, h2];
a = {{6, 1},
 {1, 2}}; b = {4, 3};
vec = {x, y};
f = Expand[vec.a.vec/2 - b.vec];
point = LinearSolve[a, b];
minimum = f /. Thread[vec -> point];
shifted = f /. Thread[vec -> point + {h1, h2}];
{point, minimum,
 Expand[shifted - minimum], a.point - b}

(* 7.6.5. Вариант 5. Оптимальная настройка. Энергия 5 *)
ClearAll[x, y, h1, h2];
a = {{7, 1},
 {1, 2}}; b = {5, 3};
vec = {x, y};
f = Expand[vec.a.vec/2 - b.vec];
point = LinearSolve[a, b];
minimum = f /. Thread[vec -> point];
shifted = f /. Thread[vec -> point + {h1, h2}];
{point, minimum,
 Expand[shifted - minimum], a.point - b}

(* 7.6.6. Вариант 6. Оптимальная настройка. Энергия 6 *)
ClearAll[x, y, h1, h2];
a = {{8, 1},
 {1, 2}}; b = {6, 3};
vec = {x, y};
f = Expand[vec.a.vec/2 - b.vec];
point = LinearSolve[a, b];
minimum = f /. Thread[vec -> point];
shifted = f /. Thread[vec -> point + {h1, h2}];
{point, minimum,
 Expand[shifted - minimum], a.point - b}

(* 7.6.6. Вариант 6. Оптимальная настройка. Энергия 6 *)
Table[Sort[Eigenvalues[2 {{1, t}, {t, 1}}]],
 {t, {0, 2}}]

(* 7.7.1. Вариант 1. Три последовательных звена. Связь 1 *)
ClearAll[t];
n = {{0, 1, 0},
 {0, 0, 1},
 {0, 0, 0}};
a = -IdentityMatrix[3] + n;
poly = IdentityMatrix[3] + t n + t^2 n.n/2;
x = Exp[-t] poly.{0, 0, 1};
{n.n, MatrixPower[n, 3], x,
 FullSimplify[D[x, t] - a.x], x /. t -> 0,
 FullSimplify[x - MatrixExp[t a].{0, 0, 1}]}

(* 7.7.2. Вариант 2. Три последовательных звена. Связь 2 *)
ClearAll[t];
n = {{0, 2, 0},
 {0, 0, 1},
 {0, 0, 0}};
a = -IdentityMatrix[3] + n;
poly = IdentityMatrix[3] + t n + t^2 n.n/2;
x = Exp[-t] poly.{0, 0, 1};
{n.n, MatrixPower[n, 3], x,
 FullSimplify[D[x, t] - a.x], x /. t -> 0,
 FullSimplify[x - MatrixExp[t a].{0, 0, 1}]}

(* 7.7.3. Вариант 3. Три последовательных звена. Связь 3 *)
ClearAll[t];
n = {{0, 3, 0},
 {0, 0, 1},
 {0, 0, 0}};
a = -IdentityMatrix[3] + n;
poly = IdentityMatrix[3] + t n + t^2 n.n/2;
x = Exp[-t] poly.{0, 0, 1};
{n.n, MatrixPower[n, 3], x,
 FullSimplify[D[x, t] - a.x], x /. t -> 0,
 FullSimplify[x - MatrixExp[t a].{0, 0, 1}]}

(* 7.7.4. Вариант 4. Три последовательных звена. Связь 4 *)
ClearAll[t];
n = {{0, 4, 0},
 {0, 0, 1},
 {0, 0, 0}};
a = -IdentityMatrix[3] + n;
poly = IdentityMatrix[3] + t n + t^2 n.n/2;
x = Exp[-t] poly.{0, 0, 1};
{n.n, MatrixPower[n, 3], x,
 FullSimplify[D[x, t] - a.x], x /. t -> 0,
 FullSimplify[x - MatrixExp[t a].{0, 0, 1}]}

(* 7.7.5. Вариант 5. Три последовательных звена. Связь 5 *)
ClearAll[t];
n = {{0, 5, 0},
 {0, 0, 1},
 {0, 0, 0}};
a = -IdentityMatrix[3] + n;
poly = IdentityMatrix[3] + t n + t^2 n.n/2;
x = Exp[-t] poly.{0, 0, 1};
{n.n, MatrixPower[n, 3], x,
 FullSimplify[D[x, t] - a.x], x /. t -> 0,
 FullSimplify[x - MatrixExp[t a].{0, 0, 1}]}

(* 7.7.6. Вариант 6. Три последовательных звена. Связь 6 *)
ClearAll[t];
n = {{0, 6, 0},
 {0, 0, 1},
 {0, 0, 0}};
a = -IdentityMatrix[3] + n;
poly = IdentityMatrix[3] + t n + t^2 n.n/2;
x = Exp[-t] poly.{0, 0, 1};
{n.n, MatrixPower[n, 3], x,
 FullSimplify[D[x, t] - a.x], x /. t -> 0,
 FullSimplify[x - MatrixExp[t a].{0, 0, 1}]}

(* 7.7.6. Вариант 6. Три последовательных звена. Связь 6 *)
n = {{0, 1, 0}, {0, 0, 1}, {0, 0, 0}};
e = IdentityMatrix[3] + t n + t^2 n.n/2;
{Expand[e.{0, 0, 1}],
 Simplify[D[e, t] - n.e]}

(* 7.8.1. Вариант 1. Геометрия пространственной ячейки. Размер 1 *)
u = {1, 0, 1}; v = {0, 2, 1}; w = {1, 1, 3};
n = Cross[u, v];
area = Norm[n];
mixed = n.w;
height = Abs[mixed]/area;
volume = Abs[mixed]/6;
{n, n.u, n.v, area, mixed,
 Det[Transpose[{u, v, w}]], height, volume}

(* 7.8.2. Вариант 2. Геометрия пространственной ячейки. Размер 2 *)
u = {2, 0, 1}; v = {0, 2, 1}; w = {1, 1, 4};
n = Cross[u, v];
area = Norm[n];
mixed = n.w;
height = Abs[mixed]/area;
volume = Abs[mixed]/6;
{n, n.u, n.v, area, mixed,
 Det[Transpose[{u, v, w}]], height, volume}

(* 7.8.3. Вариант 3. Геометрия пространственной ячейки. Размер 3 *)
u = {3, 0, 1}; v = {0, 2, 1}; w = {1, 1, 5};
n = Cross[u, v];
area = Norm[n];
mixed = n.w;
height = Abs[mixed]/area;
volume = Abs[mixed]/6;
{n, n.u, n.v, area, mixed,
 Det[Transpose[{u, v, w}]], height, volume}

(* 7.8.4. Вариант 4. Геометрия пространственной ячейки. Размер 4 *)
u = {4, 0, 1}; v = {0, 2, 1}; w = {1, 1, 6};
n = Cross[u, v];
area = Norm[n];
mixed = n.w;
height = Abs[mixed]/area;
volume = Abs[mixed]/6;
{n, n.u, n.v, area, mixed,
 Det[Transpose[{u, v, w}]], height, volume}

(* 7.8.5. Вариант 5. Геометрия пространственной ячейки. Размер 5 *)
u = {5, 0, 1}; v = {0, 2, 1}; w = {1, 1, 7};
n = Cross[u, v];
area = Norm[n];
mixed = n.w;
height = Abs[mixed]/area;
volume = Abs[mixed]/6;
{n, n.u, n.v, area, mixed,
 Det[Transpose[{u, v, w}]], height, volume}

(* 7.8.6. Вариант 6. Геометрия пространственной ячейки. Размер 6 *)
u = {6, 0, 1}; v = {0, 2, 1}; w = {1, 1, 8};
n = Cross[u, v];
area = Norm[n];
mixed = n.w;
height = Abs[mixed]/area;
volume = Abs[mixed]/6;
{n, n.u, n.v, area, mixed,
 Det[Transpose[{u, v, w}]], height, volume}

(* 7.8.6. Вариант 6. Геометрия пространственной ячейки. Размер 6 *)
u = {1, 1, 0}; v = {2, 2, t}; w = Cross[u, v];
{w, Expand[w.w]}

(* Задача 7.1 *)
a = Transpose[{{1, 0, 0}, {1, 1, 0}, {0, 1, 2}}];
{Det[a], MatrixRank[a]}

(* Задача 7.2 *)
a = {{3/4, 1/4}, {1/4, 3/4}};
{MatrixPower[a, 2].{1, 0}, Total[a.{1, 0}]}

(* Задача 7.3 *)
lambda = {9, 4}; radii = 1/Sqrt[lambda];
{radii, Pi Times @@ radii}

(* Задача 7.4 *)
j = {{1, 1}, {0, 1}};
MatrixPower[j, 10].{0, 1}

(* Задача 7.5 *)
p = {2, -1, 1}; n = {1, 2, 2};
Abs[n.p]/Norm[n]

(* Задача 7.6 *)
a = {{3, 2}, {2, 3}};
{a.{1, 1}, a.{1, -1}}

(* Задача 7.7 *)
a = {{1, t}, {t, 1}};
{a.{1, 1}, a.{1, -1}} // Expand

(* Задача 7.8 *)
l = {{1, -1, 0}, {-1, 2, -1}, {0, -1, 1}};
{Sort[Eigenvalues[2 l]], (2 l).{1, 0, -1}}

(* Задача 7.9 *)
f = t Exp[-t];
{Simplify[D[f, t]], f /. t -> 1}

(* Задача 7.10 *)
d = {0, 3, 5, 6, 6};
{Differences[d], Total[{3, 2, 1}]}

(* Задача 7.11 *)
a = {{2, 0}, {-1, 1}}; x = a.{1, 0};
{Total[x], x}

(* Задача 7.12 *)
a = DiagonalMatrix[{4, 9}];
s = DiagonalMatrix[{1/2, 1/3}];
Transpose[s].a.s

(* Задача 7.13 *)
a = IdentityMatrix[2]; p = DiagonalMatrix[{2, 1}];
{Eigenvalues[a], Sort[Eigenvalues[Transpose[p].a.p]]}

(* Задача 7.14 *)
a = {{0, 1, 0, 0}, {0, 0, 1, 0},
 {0, 0, 0, 0}, {0, 0, 0, 0}};
b = {{0, 1, 0, 0}, {0, 0, 0, 0},
 {0, 0, 0, 1}, {0, 0, 0, 0}};
{4 - MatrixRank[a.a], 4 - MatrixRank[b.b]}

(* Задача 7.15 *)
l = {{1, -1, 0}, {-1, 2, -1}, {0, -1, 1}};
{l.{1, 1, 1}, Length[NullSpace[l]]}
