(* 4. Регуляризация и обратные задачи *)
(* Код совпадает с книгой. Перед самостоятельным примером выполните Quit[] в отдельной ячейке. *)

(* 4.1. Почему точное обращение может усиливать шум *)
a = DiagonalMatrix[{1, 1/100}];
xtrue = {1, 0}; noise = {0, 1/100};
b = a.xtrue + noise; x = LinearSolve[a, b];
{b, x, a.x - b, Norm[x - xtrue], Norm[noise]}

(* 4.2. Квадратичный штраф и единственность решения *)
a = {{1, 1}, {2, 2}}; b = {1, 2};
lambda = 1;
normal = Transpose[a].a + lambda IdentityMatrix[2];
x = LinearSolve[normal, Transpose[a].b];
r = b - a.x;
{x, a.x, r, Transpose[a].r - lambda x,
 r.r, x.x, r.r + lambda x.x}

(* 4.3. Фильтрация сингулярных направлений *)
a = DiagonalMatrix[{1, 1/100}]; b = {1, 1/100};
lambda = 1/100; xtrue = {1, 0};
x = LinearSolve[Transpose[a].a + lambda IdentityMatrix[2],
 Transpose[a].b];
{x, FullSimplify[Norm[x - xtrue]],
 Transpose[a].(b - a.x) - lambda x}

(* 4.4. Общий оператор штрафа и исходное приближение *)
a = {{1, 1}}; b = {2}; l = {{-1, 1}};
normal = Transpose[a].a + Transpose[l].l;
x = LinearSolve[normal, Transpose[a].b];
{normal, x, a.x - b, l.x}

(* 4.5. Вычисление через расширенную систему *)
a = {{1, 1}, {2, 2}}; b = {1, 2};
lambda = 1; l = IdentityMatrix[2]; x0 = {0, 0};
c = Join[a, Sqrt[lambda] l];
d = Join[b, Sqrt[lambda] l.x0];
x = LeastSquares[c, d];
{x, Transpose[c].(c.x - d),
 (b - a.x).(b - a.x) + lambda Norm[l.(x - x0)]^2}

(* 4.6. Выбор параметра и ошибка восстановления *)
a = DiagonalMatrix[{1, 1/100}]; b = {1, 1/100};
xtrue = {1, 0}; parameters = {0, 1/100, 1};
Table[
 x = LinearSolve[Transpose[a].a + t IdentityMatrix[2],
   Transpose[a].b];
 {t, x, Norm[a.x - b], Norm[x - xtrue]},
 {t, parameters}]

(* 4.7. Масштаб признаков и свободный член *)
a = {{1, 0}, {1, 0}}; b = {2, 2}; l = {{0, 1}};
x = LinearSolve[Transpose[a].a + Transpose[l].l,
 Transpose[a].b];
wrong = LinearSolve[Transpose[a].a + IdentityMatrix[2],
 Transpose[a].b];
{x, wrong}

(* Задача 4.1 *)
x = 6/5;
{2 (2 x - 3) 2 + 2 x, (2 x - 3)^2 + x^2}

(* Задача 4.2 *)
a = DiagonalMatrix[{2, 1}]; b = {2, 1};
x = LinearSolve[Transpose[a].a + IdentityMatrix[2],
 Transpose[a].b];
{x, Transpose[a].(b - a.x) - x}

(* Задача 4.3 *)
s = {3, 1/10}; lambda = 1;
s^2/(s^2 + lambda)

(* Задача 4.4 *)
a = {{1, 1}}; b = {2};
LinearSolve[Transpose[a].a + IdentityMatrix[2],
 Transpose[a].b]

(* Задача 4.5 *)
x = {2, 2, 2}; l = {{-1, 1, 0}, {0, -1, 1}};
{x.x, (l.x).(l.x)}

(* Задача 4.6 *)
a = {{1, 1}}; l = {{-1, 1}}; b = {2};
x = LinearSolve[Transpose[a].a + Transpose[l].l,
 Transpose[a].b];
{x, a.x - b, l.x}

(* Задача 4.7 *)
a = {{1, 0}}; l = {{1, 0}};
normal = Transpose[a].a + Transpose[l].l;
{normal, NullSpace[normal], Det[normal]}

(* Задача 4.8 *)
a = IdentityMatrix[2]; b = {3, 1}; x0 = {1, 1};
lambda = 2;
x = LinearSolve[Transpose[a].a + lambda IdentityMatrix[2],
 Transpose[a].b + lambda x0];
{x, (x - b) + lambda (x - x0)}

(* Задача 4.9 *)
a = DiagonalMatrix[{1, 1/100}]; b = {1, 1/100};
c = Join[a, IdentityMatrix[2]/10]; d = Join[b, {0, 0}];
x1 = LeastSquares[c, d];
x2 = LinearSolve[Transpose[a].a + IdentityMatrix[2]/100,
 Transpose[a].b];
{x1, x1 - x2}

(* Задача 4.10 *)
a = DiagonalMatrix[{1, 1/100}];
m0 = Transpose[a].a; m1 = m0 + IdentityMatrix[2]/100;
{Norm[m0, 2] Norm[Inverse[m0], 2],
 Norm[m1, 2] Norm[Inverse[m1], 2]}

(* Задача 4.11 *)
s = 2; lambda = 4;
{s/(s^2 + lambda), 1/(2 Sqrt[lambda])}

(* Задача 4.12 *)
ClearAll[t]; x = {2/(2 + t), 2/(2 + t)};
{Limit[x, t -> 0], Limit[x, t -> Infinity]}

(* Задача 4.13 *)
d = DiagonalMatrix[{1, 10}]; b = {1, 1};
zGood = LinearSolve[2 Transpose[d].d, Transpose[d].b];
zOther = LinearSolve[Transpose[d].d + IdentityMatrix[2],
 Transpose[d].b];
{d.zGood, d.zOther}

(* Задача 4.14 *)
parameters = {1/10, 1, 10};
Table[x = 2/(1 + t); {t, x^2, (x - 2)^2},
 {t, parameters}]

(* Задача 4.15 *)
xtrue = {1, 2}; lambda = 1;
x = xtrue/(1 + lambda);
{x, Norm[x - xtrue],
 x - xtrue + lambda xtrue/(1 + lambda)}
