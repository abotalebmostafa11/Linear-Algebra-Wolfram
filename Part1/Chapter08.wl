(* 8. Практикум. Решения с промежуточными вычислениями *)
(* Код совпадает с книгой. Перед самостоятельным примером выполните Quit[] в отдельной ячейке. *)

(* 8.1.1. Вариант 1. Мастерская *)
a = {{1, 1},
 {2, 4}};
b = {10, 34};
aug = MapThread[Append, {a, b}];
row2 = aug[[2]] - 2 aug[[1]];
y = row2[[3]]/row2[[2]];
x = (b[[1]] - a[[1, 2]] y)/a[[1, 1]];
answer = {x, y};
{row2, answer, a.answer, b - a.answer}

(* 8.1.2. Вариант 2. Смесь кормов *)
a = {{1, 1},
 {3, 5}};
b = {10, 42};
aug = MapThread[Append, {a, b}];
row2 = aug[[2]] - 3 aug[[1]];
y = row2[[3]]/row2[[2]];
x = (b[[1]] - a[[1, 2]] y)/a[[1, 1]];
answer = {x, y};
{row2, answer, a.answer, b - a.answer}

(* 8.1.3. Вариант 3. Доставка *)
a = {{1, 1},
 {4, 6}};
b = {10, 50};
aug = MapThread[Append, {a, b}];
row2 = aug[[2]] - 4 aug[[1]];
y = row2[[3]]/row2[[2]];
x = (b[[1]] - a[[1, 2]] y)/a[[1, 1]];
answer = {x, y};
{row2, answer, a.answer, b - a.answer}

(* 8.1.4. Вариант 4. Печать *)
a = {{1, 1},
 {5, 7}};
b = {10, 58};
aug = MapThread[Append, {a, b}];
row2 = aug[[2]] - 5 aug[[1]];
y = row2[[3]]/row2[[2]];
x = (b[[1]] - a[[1, 2]] y)/a[[1, 1]];
answer = {x, y};
{row2, answer, a.answer, b - a.answer}

(* 8.1.5. Вариант 5. Сборка *)
a = {{1, 1},
 {6, 8}};
b = {10, 66};
aug = MapThread[Append, {a, b}];
row2 = aug[[2]] - 6 aug[[1]];
y = row2[[3]]/row2[[2]];
x = (b[[1]] - a[[1, 2]] y)/a[[1, 1]];
answer = {x, y};
{row2, answer, a.answer, b - a.answer}

(* 8.1.6. Вариант 6. План лаборатории *)
a = {{1, 1},
 {7, 9}};
b = {10, 74};
aug = MapThread[Append, {a, b}];
row2 = aug[[2]] - 7 aug[[1]];
y = row2[[3]]/row2[[2]];
x = (b[[1]] - a[[1, 2]] y)/a[[1, 1]];
answer = {x, y};
{row2, answer, a.answer, b - a.answer}

(* 8.1.6. Вариант 6. План лаборатории *)
LinearSolve[{{1, 1}, {2, 4}}, {5, 13}]

(* 8.2.1. Вариант 1. Три измерительных канала. Набор 1 *)
a = {{2, 1, 1},
 {2, 4, 2},
 {2, 7, 5}};
b = {6, 14, 26};
m0 = MapThread[Append, {a, b}];
m1 = m0;
m1[[2]] = m0[[2]] - 1 m0[[1]];
m1[[3]] = m0[[3]] - m0[[1]];
m2 = m1;
m2[[3]] = m1[[3]] - 2 m1[[2]];
x3 = m2[[3, 4]]/m2[[3, 3]];
x2 = (m2[[2, 4]] - m2[[2, 3]] x3)/m2[[2, 2]];
x1 = (b[[1]] - x2 - x3)/2;
answer = {x1, x2, x3};
{m1, m2, answer, b - a.answer}

(* 8.2.2. Вариант 2. Три измерительных канала. Набор 2 *)
a = {{2, 1, 1},
 {4, 5, 3},
 {2, 7, 6}};
b = {9, 27, 36};
m0 = MapThread[Append, {a, b}];
m1 = m0;
m1[[2]] = m0[[2]] - 2 m0[[1]];
m1[[3]] = m0[[3]] - m0[[1]];
m2 = m1;
m2[[3]] = m1[[3]] - 2 m1[[2]];
x3 = m2[[3, 4]]/m2[[3, 3]];
x2 = (m2[[2, 4]] - m2[[2, 3]] x3)/m2[[2, 2]];
x1 = (b[[1]] - x2 - x3)/2;
answer = {x1, x2, x3};
{m1, m2, answer, b - a.answer}

(* 8.2.3. Вариант 3. Три измерительных канала. Набор 3 *)
a = {{2, 1, 1},
 {6, 6, 4},
 {2, 7, 7}};
b = {12, 46, 48};
m0 = MapThread[Append, {a, b}];
m1 = m0;
m1[[2]] = m0[[2]] - 3 m0[[1]];
m1[[3]] = m0[[3]] - m0[[1]];
m2 = m1;
m2[[3]] = m1[[3]] - 2 m1[[2]];
x3 = m2[[3, 4]]/m2[[3, 3]];
x2 = (m2[[2, 4]] - m2[[2, 3]] x3)/m2[[2, 2]];
x1 = (b[[1]] - x2 - x3)/2;
answer = {x1, x2, x3};
{m1, m2, answer, b - a.answer}

(* 8.2.4. Вариант 4. Три измерительных канала. Набор 4 *)
a = {{2, 1, 1},
 {8, 7, 5},
 {2, 7, 8}};
b = {15, 71, 62};
m0 = MapThread[Append, {a, b}];
m1 = m0;
m1[[2]] = m0[[2]] - 4 m0[[1]];
m1[[3]] = m0[[3]] - m0[[1]];
m2 = m1;
m2[[3]] = m1[[3]] - 2 m1[[2]];
x3 = m2[[3, 4]]/m2[[3, 3]];
x2 = (m2[[2, 4]] - m2[[2, 3]] x3)/m2[[2, 2]];
x1 = (b[[1]] - x2 - x3)/2;
answer = {x1, x2, x3};
{m1, m2, answer, b - a.answer}

(* 8.2.5. Вариант 5. Три измерительных канала. Набор 5 *)
a = {{2, 1, 1},
 {10, 8, 6},
 {2, 7, 9}};
b = {18, 102, 78};
m0 = MapThread[Append, {a, b}];
m1 = m0;
m1[[2]] = m0[[2]] - 5 m0[[1]];
m1[[3]] = m0[[3]] - m0[[1]];
m2 = m1;
m2[[3]] = m1[[3]] - 2 m1[[2]];
x3 = m2[[3, 4]]/m2[[3, 3]];
x2 = (m2[[2, 4]] - m2[[2, 3]] x3)/m2[[2, 2]];
x1 = (b[[1]] - x2 - x3)/2;
answer = {x1, x2, x3};
{m1, m2, answer, b - a.answer}

(* 8.2.6. Вариант 6. Три измерительных канала. Набор 6 *)
a = {{2, 1, 1},
 {12, 9, 7},
 {2, 7, 10}};
b = {21, 139, 96};
m0 = MapThread[Append, {a, b}];
m1 = m0;
m1[[2]] = m0[[2]] - 6 m0[[1]];
m1[[3]] = m0[[3]] - m0[[1]];
m2 = m1;
m2[[3]] = m1[[3]] - 2 m1[[2]];
x3 = m2[[3, 4]]/m2[[3, 3]];
x2 = (m2[[2, 4]] - m2[[2, 3]] x3)/m2[[2, 2]];
x1 = (b[[1]] - x2 - x3)/2;
answer = {x1, x2, x3};
{m1, m2, answer, b - a.answer}

(* 8.2.6. Вариант 6. Три измерительных канала. Набор 6 *)
a = {{1, 1, 1}, {1, t, 1}, {1, 1, t}};
{Factor[Det[a]],
 Table[MatrixRank[a /. t -> s], {s, {1, 2}}]}

(* 8.3.1. Вариант 1. Неопределенный третий источник. Набор 1 *)
ClearAll[t];
a = {{1, 0, 1},
 {0, 1, 2}};
b = {4, 3};
xp = {4, 3, 0};
z = {-1, -2, 1};
family = xp + t z;
{family, a.z, Expand[a.family],
 MatrixRank[a], NullSpace[a]}

(* 8.3.2. Вариант 2. Неопределенный третий источник. Набор 2 *)
ClearAll[t];
a = {{1, 0, 2},
 {0, 1, 3}};
b = {5, 5};
xp = {5, 5, 0};
z = {-2, -3, 1};
family = xp + t z;
{family, a.z, Expand[a.family],
 MatrixRank[a], NullSpace[a]}

(* 8.3.3. Вариант 3. Неопределенный третий источник. Набор 3 *)
ClearAll[t];
a = {{1, 0, 3},
 {0, 1, 4}};
b = {6, 7};
xp = {6, 7, 0};
z = {-3, -4, 1};
family = xp + t z;
{family, a.z, Expand[a.family],
 MatrixRank[a], NullSpace[a]}

(* 8.3.4. Вариант 4. Неопределенный третий источник. Набор 4 *)
ClearAll[t];
a = {{1, 0, 4},
 {0, 1, 5}};
b = {7, 9};
xp = {7, 9, 0};
z = {-4, -5, 1};
family = xp + t z;
{family, a.z, Expand[a.family],
 MatrixRank[a], NullSpace[a]}

(* 8.3.5. Вариант 5. Неопределенный третий источник. Набор 5 *)
ClearAll[t];
a = {{1, 0, 5},
 {0, 1, 6}};
b = {8, 11};
xp = {8, 11, 0};
z = {-5, -6, 1};
family = xp + t z;
{family, a.z, Expand[a.family],
 MatrixRank[a], NullSpace[a]}

(* 8.3.6. Вариант 6. Неопределенный третий источник. Набор 6 *)
ClearAll[t];
a = {{1, 0, 6},
 {0, 1, 7}};
b = {9, 13};
xp = {9, 13, 0};
z = {-6, -7, 1};
family = xp + t z;
{family, a.z, Expand[a.family],
 MatrixRank[a], NullSpace[a]}

(* 8.3.6. Вариант 6. Неопределенный третий источник. Набор 6 *)
x = {t, t, 4 - 2 t};
{Expand[Total[x]], x /. t -> 0, x /. t -> 2}

(* 8.4.1. Вариант 1. Расчет трех связанных узлов. Нагрузка 1 *)
l = {{1, 0, 0},
 {1, 1, 0},
 {2, 1, 1}};
u = {{2, 1, 0},
 {0, 3, 1},
 {0, 0, 3}};
a = {{2, 1, 0},
 {2, 4, 1},
 {4, 5, 4}};
b = {3, 8, 17};
y1 = b[[1]];
y2 = b[[2]] - 1 y1;
y3 = b[[3]] - 2 y1 - y2;
y = {y1, y2, y3};
x3 = y3/3;
x2 = (y2 - x3)/3;
x1 = (y1 - x2)/2;
x = {x1, x2, x3};
{l.u == a, y, x, b - a.x}

(* 8.4.2. Вариант 2. Расчет трех связанных узлов. Нагрузка 2 *)
l = {{1, 0, 0},
 {2, 1, 0},
 {2, 1, 1}};
u = {{2, 1, 0},
 {0, 4, 1},
 {0, 0, 3}};
a = {{2, 1, 0},
 {4, 6, 1},
 {4, 6, 4}};
b = {4, 18, 24};
y1 = b[[1]];
y2 = b[[2]] - 2 y1;
y3 = b[[3]] - 2 y1 - y2;
y = {y1, y2, y3};
x3 = y3/3;
x2 = (y2 - x3)/4;
x1 = (y1 - x2)/2;
x = {x1, x2, x3};
{l.u == a, y, x, b - a.x}

(* 8.4.3. Вариант 3. Расчет трех связанных узлов. Нагрузка 3 *)
l = {{1, 0, 0},
 {3, 1, 0},
 {2, 1, 1}};
u = {{2, 1, 0},
 {0, 5, 1},
 {0, 0, 3}};
a = {{2, 1, 0},
 {6, 8, 1},
 {4, 7, 4}};
b = {5, 32, 33};
y1 = b[[1]];
y2 = b[[2]] - 3 y1;
y3 = b[[3]] - 2 y1 - y2;
y = {y1, y2, y3};
x3 = y3/3;
x2 = (y2 - x3)/5;
x1 = (y1 - x2)/2;
x = {x1, x2, x3};
{l.u == a, y, x, b - a.x}

(* 8.4.4. Вариант 4. Расчет трех связанных узлов. Нагрузка 4 *)
l = {{1, 0, 0},
 {4, 1, 0},
 {2, 1, 1}};
u = {{2, 1, 0},
 {0, 6, 1},
 {0, 0, 3}};
a = {{2, 1, 0},
 {8, 10, 1},
 {4, 8, 4}};
b = {6, 50, 44};
y1 = b[[1]];
y2 = b[[2]] - 4 y1;
y3 = b[[3]] - 2 y1 - y2;
y = {y1, y2, y3};
x3 = y3/3;
x2 = (y2 - x3)/6;
x1 = (y1 - x2)/2;
x = {x1, x2, x3};
{l.u == a, y, x, b - a.x}

(* 8.4.5. Вариант 5. Расчет трех связанных узлов. Нагрузка 5 *)
l = {{1, 0, 0},
 {5, 1, 0},
 {2, 1, 1}};
u = {{2, 1, 0},
 {0, 7, 1},
 {0, 0, 3}};
a = {{2, 1, 0},
 {10, 12, 1},
 {4, 9, 4}};
b = {7, 72, 57};
y1 = b[[1]];
y2 = b[[2]] - 5 y1;
y3 = b[[3]] - 2 y1 - y2;
y = {y1, y2, y3};
x3 = y3/3;
x2 = (y2 - x3)/7;
x1 = (y1 - x2)/2;
x = {x1, x2, x3};
{l.u == a, y, x, b - a.x}

(* 8.4.6. Вариант 6. Расчет трех связанных узлов. Нагрузка 6 *)
l = {{1, 0, 0},
 {6, 1, 0},
 {2, 1, 1}};
u = {{2, 1, 0},
 {0, 8, 1},
 {0, 0, 3}};
a = {{2, 1, 0},
 {12, 14, 1},
 {4, 10, 4}};
b = {8, 98, 72};
y1 = b[[1]];
y2 = b[[2]] - 6 y1;
y3 = b[[3]] - 2 y1 - y2;
y = {y1, y2, y3};
x3 = y3/3;
x2 = (y2 - x3)/8;
x1 = (y1 - x2)/2;
x = {x1, x2, x3};
{l.u == a, y, x, b - a.x}

(* 8.4.6. Вариант 6. Расчет трех связанных узлов. Нагрузка 6 *)
a = {{0, 1}, {2, 3}}; p = {{0, 1}, {1, 0}};
{p.a, Det[a]}

(* 8.5.1. Вариант 1. Два символа по модулю 5 *)
modulus = 5;
a = {{1, 1},
 {2, 3}};
b = {4, 1};
det = Mod[Det[a], modulus];
inverseDet = PowerMod[det, -1, modulus];
adj = {{3, -1},
 {-2, 1}};
ainv = Mod[inverseDet adj, modulus];
x = Mod[ainv.b, modulus];
{det, inverseDet, ainv, x, Mod[a.x, modulus]}

(* 8.5.2. Вариант 2. Два символа по модулю 7 *)
modulus = 7;
a = {{1, 2},
 {3, 1}};
b = {3, 3};
det = Mod[Det[a], modulus];
inverseDet = PowerMod[det, -1, modulus];
adj = {{1, -2},
 {-3, 1}};
ainv = Mod[inverseDet adj, modulus];
x = Mod[ainv.b, modulus];
{det, inverseDet, ainv, x, Mod[a.x, modulus]}

(* 8.5.3. Вариант 3. Два символа по модулю 11 *)
modulus = 11;
a = {{1, 2},
 {3, 1}};
b = {2, 3};
det = Mod[Det[a], modulus];
inverseDet = PowerMod[det, -1, modulus];
adj = {{1, -2},
 {-3, 1}};
ainv = Mod[inverseDet adj, modulus];
x = Mod[ainv.b, modulus];
{det, inverseDet, ainv, x, Mod[a.x, modulus]}

(* 8.5.4. Вариант 4. Два символа по модулю 13 *)
modulus = 13;
a = {{1, 2},
 {3, 1}};
b = {3, 5};
det = Mod[Det[a], modulus];
inverseDet = PowerMod[det, -1, modulus];
adj = {{1, -2},
 {-3, 1}};
ainv = Mod[inverseDet adj, modulus];
x = Mod[ainv.b, modulus];
{det, inverseDet, ainv, x, Mod[a.x, modulus]}

(* 8.5.5. Вариант 5. Два символа по модулю 17 *)
modulus = 17;
a = {{1, 2},
 {3, 1}};
b = {2, 5};
det = Mod[Det[a], modulus];
inverseDet = PowerMod[det, -1, modulus];
adj = {{1, -2},
 {-3, 1}};
ainv = Mod[inverseDet adj, modulus];
x = Mod[ainv.b, modulus];
{det, inverseDet, ainv, x, Mod[a.x, modulus]}

(* 8.5.6. Вариант 6. Два символа по модулю 19 *)
modulus = 19;
a = {{1, 2},
 {3, 1}};
b = {3, 7};
det = Mod[Det[a], modulus];
inverseDet = PowerMod[det, -1, modulus];
adj = {{1, -2},
 {-3, 1}};
ainv = Mod[inverseDet adj, modulus];
x = Mod[ainv.b, modulus];
{det, inverseDet, ainv, x, Mod[a.x, modulus]}

(* 8.5.6. Вариант 6. Два символа по модулю 19 *)
a = {{1, 1}, {1, -1}};
{LinearSolve[a, {1, 0}],
 Select[Tuples[{0, 1}, 2], Mod[a.#, 2] == {1, 0} &]}

(* 8.6.1. Вариант 1. Два измерительных направления. Базис 1 *)
p = {{1, 1},
 {1, 2}};
v = {4, 6};
a = {{2, 1},
 {0, 3}};
coordinates = LinearSolve[p, v];
new = Inverse[p].a.p;
{coordinates, p.coordinates, new,
 a.v, p.new.coordinates}

(* 8.6.2. Вариант 2. Два измерительных направления. Базис 2 *)
p = {{1, 2},
 {1, 3}};
v = {7, 9};
a = {{2, 1},
 {0, 3}};
coordinates = LinearSolve[p, v];
new = Inverse[p].a.p;
{coordinates, p.coordinates, new,
 a.v, p.new.coordinates}

(* 8.6.3. Вариант 3. Два измерительных направления. Базис 3 *)
p = {{1, 3},
 {1, 4}};
v = {10, 12};
a = {{2, 1},
 {0, 3}};
coordinates = LinearSolve[p, v];
new = Inverse[p].a.p;
{coordinates, p.coordinates, new,
 a.v, p.new.coordinates}

(* 8.6.4. Вариант 4. Два измерительных направления. Базис 4 *)
p = {{1, 4},
 {1, 5}};
v = {13, 15};
a = {{2, 1},
 {0, 3}};
coordinates = LinearSolve[p, v];
new = Inverse[p].a.p;
{coordinates, p.coordinates, new,
 a.v, p.new.coordinates}

(* 8.6.5. Вариант 5. Два измерительных направления. Базис 5 *)
p = {{1, 5},
 {1, 6}};
v = {16, 18};
a = {{2, 1},
 {0, 3}};
coordinates = LinearSolve[p, v];
new = Inverse[p].a.p;
{coordinates, p.coordinates, new,
 a.v, p.new.coordinates}

(* 8.6.6. Вариант 6. Два измерительных направления. Базис 6 *)
p = {{1, 6},
 {1, 7}};
v = {19, 21};
a = {{2, 1},
 {0, 3}};
coordinates = LinearSolve[p, v];
new = Inverse[p].a.p;
{coordinates, p.coordinates, new,
 a.v, p.new.coordinates}

(* 8.6.6. Вариант 6. Два измерительных направления. Базис 6 *)
p = {{1, 1}, {0, 1}}; g = Transpose[p].p; c = {0, 1};
{g, c.c, c.g.c}

(* 8.7.1. Вариант 1. Пересечение двух ограничений. Геометрия 1 *)
ClearAll[t];
a = {{1, 1, 1},
 {1, -1, 1}};
b = {2, 0};
xp = {1, 1, 0};
z = Cross[a[[1]], a[[2]]];
line = xp + t z;
{z, a.z, Expand[a.line],
 MatrixRank[a], NullSpace[a]}

(* 8.7.2. Вариант 2. Пересечение двух ограничений. Геометрия 2 *)
ClearAll[t];
a = {{1, 1, 1},
 {1, -1, 2}};
b = {3, 1};
xp = {2, 1, 0};
z = Cross[a[[1]], a[[2]]];
line = xp + t z;
{z, a.z, Expand[a.line],
 MatrixRank[a], NullSpace[a]}

(* 8.7.3. Вариант 3. Пересечение двух ограничений. Геометрия 3 *)
ClearAll[t];
a = {{1, 1, 1},
 {1, -1, 3}};
b = {4, 2};
xp = {3, 1, 0};
z = Cross[a[[1]], a[[2]]];
line = xp + t z;
{z, a.z, Expand[a.line],
 MatrixRank[a], NullSpace[a]}

(* 8.7.4. Вариант 4. Пересечение двух ограничений. Геометрия 4 *)
ClearAll[t];
a = {{1, 1, 1},
 {1, -1, 4}};
b = {5, 3};
xp = {4, 1, 0};
z = Cross[a[[1]], a[[2]]];
line = xp + t z;
{z, a.z, Expand[a.line],
 MatrixRank[a], NullSpace[a]}

(* 8.7.5. Вариант 5. Пересечение двух ограничений. Геометрия 5 *)
ClearAll[t];
a = {{1, 1, 1},
 {1, -1, 5}};
b = {6, 4};
xp = {5, 1, 0};
z = Cross[a[[1]], a[[2]]];
line = xp + t z;
{z, a.z, Expand[a.line],
 MatrixRank[a], NullSpace[a]}

(* 8.7.6. Вариант 6. Пересечение двух ограничений. Геометрия 6 *)
ClearAll[t];
a = {{1, 1, 1},
 {1, -1, 6}};
b = {7, 5};
xp = {6, 1, 0};
z = Cross[a[[1]], a[[2]]];
line = xp + t z;
{z, a.z, Expand[a.line],
 MatrixRank[a], NullSpace[a]}

(* 8.7.6. Вариант 6. Пересечение двух ограничений. Геометрия 6 *)
a = {{1, 1, 1}, {2, 2, 2}};
{MatrixRank[a],
 MatrixRank[{{1, 1, 1, 1}, {2, 2, 2, 2}}],
 MatrixRank[{{1, 1, 1, 1}, {2, 2, 2, 3}}]}

(* 8.8.1. Вариант 1. Ошибка в позиции 1 *)
h = {{1, 0, 1, 0, 1, 0, 1},
 {0, 1, 1, 0, 0, 1, 1},
 {0, 0, 0, 1, 1, 1, 1}};
g = {{1, 1, 1, 0, 0, 0, 0},
 {1, 0, 0, 1, 1, 0, 0},
 {0, 1, 0, 1, 0, 1, 0},
 {1, 1, 0, 1, 0, 0, 1}};
message = {0, 1, 0, 1};
sent = Mod[message.g, 2];
received = Mod[sent + UnitVector[7, 1], 2];
syndrome = Mod[h.received, 2];
position = {1, 2, 4}.syndrome;
corrected = If[position == 0, received,
 Mod[received + UnitVector[7, position], 2]];
{sent, received, syndrome, position,
 corrected == sent, Mod[h.corrected, 2]}

(* 8.8.2. Вариант 2. Ошибка в позиции 2 *)
h = {{1, 0, 1, 0, 1, 0, 1},
 {0, 1, 1, 0, 0, 1, 1},
 {0, 0, 0, 1, 1, 1, 1}};
g = {{1, 1, 1, 0, 0, 0, 0},
 {1, 0, 0, 1, 1, 0, 0},
 {0, 1, 0, 1, 0, 1, 0},
 {1, 1, 0, 1, 0, 0, 1}};
message = {0, 1, 1, 0};
sent = Mod[message.g, 2];
received = Mod[sent + UnitVector[7, 2], 2];
syndrome = Mod[h.received, 2];
position = {1, 2, 4}.syndrome;
corrected = If[position == 0, received,
 Mod[received + UnitVector[7, position], 2]];
{sent, received, syndrome, position,
 corrected == sent, Mod[h.corrected, 2]}

(* 8.8.3. Вариант 3. Ошибка в позиции 3 *)
h = {{1, 0, 1, 0, 1, 0, 1},
 {0, 1, 1, 0, 0, 1, 1},
 {0, 0, 0, 1, 1, 1, 1}};
g = {{1, 1, 1, 0, 0, 0, 0},
 {1, 0, 0, 1, 1, 0, 0},
 {0, 1, 0, 1, 0, 1, 0},
 {1, 1, 0, 1, 0, 0, 1}};
message = {0, 1, 1, 1};
sent = Mod[message.g, 2];
received = Mod[sent + UnitVector[7, 3], 2];
syndrome = Mod[h.received, 2];
position = {1, 2, 4}.syndrome;
corrected = If[position == 0, received,
 Mod[received + UnitVector[7, position], 2]];
{sent, received, syndrome, position,
 corrected == sent, Mod[h.corrected, 2]}

(* 8.8.4. Вариант 4. Ошибка в позиции 4 *)
h = {{1, 0, 1, 0, 1, 0, 1},
 {0, 1, 1, 0, 0, 1, 1},
 {0, 0, 0, 1, 1, 1, 1}};
g = {{1, 1, 1, 0, 0, 0, 0},
 {1, 0, 0, 1, 1, 0, 0},
 {0, 1, 0, 1, 0, 1, 0},
 {1, 1, 0, 1, 0, 0, 1}};
message = {1, 0, 0, 0};
sent = Mod[message.g, 2];
received = Mod[sent + UnitVector[7, 4], 2];
syndrome = Mod[h.received, 2];
position = {1, 2, 4}.syndrome;
corrected = If[position == 0, received,
 Mod[received + UnitVector[7, position], 2]];
{sent, received, syndrome, position,
 corrected == sent, Mod[h.corrected, 2]}

(* 8.8.5. Вариант 5. Ошибка в позиции 5 *)
h = {{1, 0, 1, 0, 1, 0, 1},
 {0, 1, 1, 0, 0, 1, 1},
 {0, 0, 0, 1, 1, 1, 1}};
g = {{1, 1, 1, 0, 0, 0, 0},
 {1, 0, 0, 1, 1, 0, 0},
 {0, 1, 0, 1, 0, 1, 0},
 {1, 1, 0, 1, 0, 0, 1}};
message = {1, 0, 0, 1};
sent = Mod[message.g, 2];
received = Mod[sent + UnitVector[7, 5], 2];
syndrome = Mod[h.received, 2];
position = {1, 2, 4}.syndrome;
corrected = If[position == 0, received,
 Mod[received + UnitVector[7, position], 2]];
{sent, received, syndrome, position,
 corrected == sent, Mod[h.corrected, 2]}

(* 8.8.6. Вариант 6. Ошибка в позиции 6 *)
h = {{1, 0, 1, 0, 1, 0, 1},
 {0, 1, 1, 0, 0, 1, 1},
 {0, 0, 0, 1, 1, 1, 1}};
g = {{1, 1, 1, 0, 0, 0, 0},
 {1, 0, 0, 1, 1, 0, 0},
 {0, 1, 0, 1, 0, 1, 0},
 {1, 1, 0, 1, 0, 0, 1}};
message = {1, 0, 1, 0};
sent = Mod[message.g, 2];
received = Mod[sent + UnitVector[7, 6], 2];
syndrome = Mod[h.received, 2];
position = {1, 2, 4}.syndrome;
corrected = If[position == 0, received,
 Mod[received + UnitVector[7, position], 2]];
{sent, received, syndrome, position,
 corrected == sent, Mod[h.corrected, 2]}

(* 8.8.6. Вариант 6. Ошибка в позиции 6 *)
h = {{1, 0, 1, 0, 1, 0, 1},
 {0, 1, 1, 0, 0, 1, 1},
 {0, 0, 0, 1, 1, 1, 1}};
{Mod[h.{1, 1, 0, 0, 0, 0, 0}, 2],
 Mod[h.{1, 1, 1, 0, 0, 0, 0}, 2]}

(* Задача 8.1 *)
a = {{1, 1}, {1/5, 1/2}};
LinearSolve[a, {10, 3}]

(* Задача 8.2 *)
a = {{1, 1}, {1, -1}};
x = LinearSolve[a, {7, 1}];
{x, a.x}

(* Задача 8.3 *)
a = {{1, 2, 1}};
b = {{-2, 1, 0}, {-1, 0, 1}};
{a.Transpose[b], MatrixRank[b]}

(* Задача 8.4 *)
{Mod[PowerMod[4, -1, 7]*3, 7], 3/4}

(* Задача 8.5 *)
LinearSolve[{{1, 1}, {0, 1}}, {4, 2}]

(* Задача 8.6 *)
a = {{1, 1}, {2, 3}};
{LinearSolve[a, {8, 19}],
 LinearSolve[a, {8, 39/2}]}

(* Задача 8.7 *)
a = {{1, 1}, {2, 2}};
{MatrixRank[a], MatrixRank[Append[a, {1, -1}]]}

(* Задача 8.8 *)
a = {{1, 1}, {1, -1}};
Simplify[Inverse[a].{6 + d, 2} - Inverse[a].{6, 2}]

(* Задача 8.9 *)
Table[LinearSolve[{{1, 1}, {1, t}}, {4, 6}],
 {t, {2, 3/2}}]

(* Задача 8.10 *)
a = {{1, 0, 1}, {0, 1, 1}}; x = {2 - t, 3 - t, t};
{Expand[a.x], x /. t -> 1}

(* Задача 8.11 *)
a = {{1, 2, 0}, {0, 1, 1}};
b = Append[a, 3 a[[1]] - 2 a[[2]]];
{MatrixRank[a], MatrixRank[b]}

(* Задача 8.12 *)
x = {4 - t, t};
{x /. t -> 0, x /. t -> 4, Expand[Total[x]]}

(* Задача 8.13 *)
a = {{1, 1}, {1, 1 + e}};
{Factor[Det[a]], Simplify[Inverse[a].{0, d}]}

(* Задача 8.14 *)
u = {{1, 0, 0}, {0, 1, 0}};
v = {{0, 1, 0}, {0, 0, 1}};
{MatrixRank[u] + MatrixRank[v] -
 MatrixRank[Join[u, v]], {0, 1, 0}}

(* Задача 8.15 *)
a = {{1, 1}, {2, 2}};
Simplify[a.{b - t, t}]
