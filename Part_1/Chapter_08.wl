(* 8. Практикум. Решения с промежуточными вычислениями *)
(* Part 1; 48 source blocks; companion 1.0.0. *)
(* Evaluate the full file, or use Run_All.nb / Run_All.wls for execution reports. *)

(* P1-C08-E001 | 8.1.1. Вариант 1. Мастерская *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E001`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E001`*"];
$BookCompanionValue = (
a = {{1, 1},
 {2, 4}};
b = {10, 34};
aug = MapThread[Append, {a, b}];
row2 = aug[[2]] - 2 aug[[1]];
y = row2[[3]]/row2[[2]];
x = b[[1]] - y;
answer = {x, y};
{row2, answer, a.answer, b - a.answer}
);
Print["P1-C08-E001: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E002 | 8.1.2. Вариант 2. Смесь кормов *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E002`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E002`*"];
$BookCompanionValue = (
a = {{1, 1},
 {3, 5}};
b = {10, 42};
aug = MapThread[Append, {a, b}];
row2 = aug[[2]] - 3 aug[[1]];
y = row2[[3]]/row2[[2]];
x = b[[1]] - y;
answer = {x, y};
{row2, answer, a.answer, b - a.answer}
);
Print["P1-C08-E002: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E003 | 8.1.3. Вариант 3. Доставка *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E003`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E003`*"];
$BookCompanionValue = (
a = {{1, 1},
 {4, 6}};
b = {10, 50};
aug = MapThread[Append, {a, b}];
row2 = aug[[2]] - 4 aug[[1]];
y = row2[[3]]/row2[[2]];
x = b[[1]] - y;
answer = {x, y};
{row2, answer, a.answer, b - a.answer}
);
Print["P1-C08-E003: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E004 | 8.1.4. Вариант 4. Печать *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E004`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E004`*"];
$BookCompanionValue = (
a = {{1, 1},
 {5, 7}};
b = {10, 58};
aug = MapThread[Append, {a, b}];
row2 = aug[[2]] - 5 aug[[1]];
y = row2[[3]]/row2[[2]];
x = b[[1]] - y;
answer = {x, y};
{row2, answer, a.answer, b - a.answer}
);
Print["P1-C08-E004: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E005 | 8.1.5. Вариант 5. Сборка *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E005`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E005`*"];
$BookCompanionValue = (
a = {{1, 1},
 {6, 8}};
b = {10, 66};
aug = MapThread[Append, {a, b}];
row2 = aug[[2]] - 6 aug[[1]];
y = row2[[3]]/row2[[2]];
x = b[[1]] - y;
answer = {x, y};
{row2, answer, a.answer, b - a.answer}
);
Print["P1-C08-E005: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E006 | 8.1.6. Вариант 6. План лаборатории *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E006`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E006`*"];
$BookCompanionValue = (
a = {{1, 1},
 {7, 9}};
b = {10, 74};
aug = MapThread[Append, {a, b}];
row2 = aug[[2]] - 7 aug[[1]];
y = row2[[3]]/row2[[2]];
x = b[[1]] - y;
answer = {x, y};
{row2, answer, a.answer, b - a.answer}
);
Print["P1-C08-E006: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E007 | 8.2.1. Вариант 1. Три измерительных канала. Набор 1 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E007`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E007`*"];
$BookCompanionValue = (
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
);
Print["P1-C08-E007: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E008 | 8.2.2. Вариант 2. Три измерительных канала. Набор 2 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E008`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E008`*"];
$BookCompanionValue = (
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
);
Print["P1-C08-E008: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E009 | 8.2.3. Вариант 3. Три измерительных канала. Набор 3 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E009`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E009`*"];
$BookCompanionValue = (
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
);
Print["P1-C08-E009: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E010 | 8.2.4. Вариант 4. Три измерительных канала. Набор 4 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E010`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E010`*"];
$BookCompanionValue = (
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
);
Print["P1-C08-E010: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E011 | 8.2.5. Вариант 5. Три измерительных канала. Набор 5 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E011`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E011`*"];
$BookCompanionValue = (
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
);
Print["P1-C08-E011: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E012 | 8.2.6. Вариант 6. Три измерительных канала. Набор 6 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E012`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E012`*"];
$BookCompanionValue = (
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
);
Print["P1-C08-E012: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E013 | 8.3.1. Вариант 1. Неопределенный третий источник. Набор 1 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E013`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E013`*"];
$BookCompanionValue = (
ClearAll[t];
a = {{1, 0, 1},
 {0, 1, 2}};
b = {4, 3};
xp = {4, 3, 0};
z = {-1, -2, 1};
family = xp + t z;
{family, a.z, Expand[a.family],
 MatrixRank[a], NullSpace[a]}
);
Print["P1-C08-E013: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E014 | 8.3.2. Вариант 2. Неопределенный третий источник. Набор 2 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E014`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E014`*"];
$BookCompanionValue = (
ClearAll[t];
a = {{1, 0, 2},
 {0, 1, 3}};
b = {5, 5};
xp = {5, 5, 0};
z = {-2, -3, 1};
family = xp + t z;
{family, a.z, Expand[a.family],
 MatrixRank[a], NullSpace[a]}
);
Print["P1-C08-E014: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E015 | 8.3.3. Вариант 3. Неопределенный третий источник. Набор 3 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E015`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E015`*"];
$BookCompanionValue = (
ClearAll[t];
a = {{1, 0, 3},
 {0, 1, 4}};
b = {6, 7};
xp = {6, 7, 0};
z = {-3, -4, 1};
family = xp + t z;
{family, a.z, Expand[a.family],
 MatrixRank[a], NullSpace[a]}
);
Print["P1-C08-E015: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E016 | 8.3.4. Вариант 4. Неопределенный третий источник. Набор 4 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E016`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E016`*"];
$BookCompanionValue = (
ClearAll[t];
a = {{1, 0, 4},
 {0, 1, 5}};
b = {7, 9};
xp = {7, 9, 0};
z = {-4, -5, 1};
family = xp + t z;
{family, a.z, Expand[a.family],
 MatrixRank[a], NullSpace[a]}
);
Print["P1-C08-E016: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E017 | 8.3.5. Вариант 5. Неопределенный третий источник. Набор 5 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E017`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E017`*"];
$BookCompanionValue = (
ClearAll[t];
a = {{1, 0, 5},
 {0, 1, 6}};
b = {8, 11};
xp = {8, 11, 0};
z = {-5, -6, 1};
family = xp + t z;
{family, a.z, Expand[a.family],
 MatrixRank[a], NullSpace[a]}
);
Print["P1-C08-E017: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E018 | 8.3.6. Вариант 6. Неопределенный третий источник. Набор 6 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E018`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E018`*"];
$BookCompanionValue = (
ClearAll[t];
a = {{1, 0, 6},
 {0, 1, 7}};
b = {9, 13};
xp = {9, 13, 0};
z = {-6, -7, 1};
family = xp + t z;
{family, a.z, Expand[a.family],
 MatrixRank[a], NullSpace[a]}
);
Print["P1-C08-E018: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E019 | 8.4.1. Вариант 1. Расчет трех связанных узлов. Нагрузка 1 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E019`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E019`*"];
$BookCompanionValue = (
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
);
Print["P1-C08-E019: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E020 | 8.4.2. Вариант 2. Расчет трех связанных узлов. Нагрузка 2 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E020`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E020`*"];
$BookCompanionValue = (
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
);
Print["P1-C08-E020: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E021 | 8.4.3. Вариант 3. Расчет трех связанных узлов. Нагрузка 3 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E021`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E021`*"];
$BookCompanionValue = (
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
);
Print["P1-C08-E021: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E022 | 8.4.4. Вариант 4. Расчет трех связанных узлов. Нагрузка 4 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E022`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E022`*"];
$BookCompanionValue = (
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
);
Print["P1-C08-E022: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E023 | 8.4.5. Вариант 5. Расчет трех связанных узлов. Нагрузка 5 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E023`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E023`*"];
$BookCompanionValue = (
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
);
Print["P1-C08-E023: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E024 | 8.4.6. Вариант 6. Расчет трех связанных узлов. Нагрузка 6 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E024`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E024`*"];
$BookCompanionValue = (
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
);
Print["P1-C08-E024: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E025 | 8.5.1. Вариант 1. Два символа по модулю 5 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E025`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E025`*"];
$BookCompanionValue = (
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
);
Print["P1-C08-E025: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E026 | 8.5.2. Вариант 2. Два символа по модулю 7 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E026`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E026`*"];
$BookCompanionValue = (
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
);
Print["P1-C08-E026: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E027 | 8.5.3. Вариант 3. Два символа по модулю 11 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E027`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E027`*"];
$BookCompanionValue = (
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
);
Print["P1-C08-E027: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E028 | 8.5.4. Вариант 4. Два символа по модулю 13 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E028`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E028`*"];
$BookCompanionValue = (
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
);
Print["P1-C08-E028: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E029 | 8.5.5. Вариант 5. Два символа по модулю 17 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E029`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E029`*"];
$BookCompanionValue = (
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
);
Print["P1-C08-E029: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E030 | 8.5.6. Вариант 6. Два символа по модулю 19 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E030`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E030`*"];
$BookCompanionValue = (
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
);
Print["P1-C08-E030: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E031 | 8.6.1. Вариант 1. Два измерительных направления. Базис 1 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E031`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E031`*"];
$BookCompanionValue = (
p = {{1, 1},
 {1, 2}};
v = {4, 6};
a = {{2, 1},
 {0, 3}};
coordinates = LinearSolve[p, v];
new = Inverse[p].a.p;
{coordinates, p.coordinates, new,
 a.v, p.new.coordinates}
);
Print["P1-C08-E031: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E032 | 8.6.2. Вариант 2. Два измерительных направления. Базис 2 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E032`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E032`*"];
$BookCompanionValue = (
p = {{1, 2},
 {1, 3}};
v = {7, 9};
a = {{2, 1},
 {0, 3}};
coordinates = LinearSolve[p, v];
new = Inverse[p].a.p;
{coordinates, p.coordinates, new,
 a.v, p.new.coordinates}
);
Print["P1-C08-E032: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E033 | 8.6.3. Вариант 3. Два измерительных направления. Базис 3 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E033`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E033`*"];
$BookCompanionValue = (
p = {{1, 3},
 {1, 4}};
v = {10, 12};
a = {{2, 1},
 {0, 3}};
coordinates = LinearSolve[p, v];
new = Inverse[p].a.p;
{coordinates, p.coordinates, new,
 a.v, p.new.coordinates}
);
Print["P1-C08-E033: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E034 | 8.6.4. Вариант 4. Два измерительных направления. Базис 4 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E034`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E034`*"];
$BookCompanionValue = (
p = {{1, 4},
 {1, 5}};
v = {13, 15};
a = {{2, 1},
 {0, 3}};
coordinates = LinearSolve[p, v];
new = Inverse[p].a.p;
{coordinates, p.coordinates, new,
 a.v, p.new.coordinates}
);
Print["P1-C08-E034: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E035 | 8.6.5. Вариант 5. Два измерительных направления. Базис 5 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E035`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E035`*"];
$BookCompanionValue = (
p = {{1, 5},
 {1, 6}};
v = {16, 18};
a = {{2, 1},
 {0, 3}};
coordinates = LinearSolve[p, v];
new = Inverse[p].a.p;
{coordinates, p.coordinates, new,
 a.v, p.new.coordinates}
);
Print["P1-C08-E035: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E036 | 8.6.6. Вариант 6. Два измерительных направления. Базис 6 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E036`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E036`*"];
$BookCompanionValue = (
p = {{1, 6},
 {1, 7}};
v = {19, 21};
a = {{2, 1},
 {0, 3}};
coordinates = LinearSolve[p, v];
new = Inverse[p].a.p;
{coordinates, p.coordinates, new,
 a.v, p.new.coordinates}
);
Print["P1-C08-E036: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E037 | 8.7.1. Вариант 1. Пересечение двух ограничений. Геометрия 1 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E037`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E037`*"];
$BookCompanionValue = (
ClearAll[t];
a = {{1, 1, 1},
 {1, -1, 1}};
b = {2, 0};
xp = {1, 1, 0};
z = Cross[a[[1]], a[[2]]];
line = xp + t z;
{z, a.z, Expand[a.line],
 MatrixRank[a], NullSpace[a]}
);
Print["P1-C08-E037: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E038 | 8.7.2. Вариант 2. Пересечение двух ограничений. Геометрия 2 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E038`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E038`*"];
$BookCompanionValue = (
ClearAll[t];
a = {{1, 1, 1},
 {1, -1, 2}};
b = {3, 1};
xp = {2, 1, 0};
z = Cross[a[[1]], a[[2]]];
line = xp + t z;
{z, a.z, Expand[a.line],
 MatrixRank[a], NullSpace[a]}
);
Print["P1-C08-E038: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E039 | 8.7.3. Вариант 3. Пересечение двух ограничений. Геометрия 3 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E039`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E039`*"];
$BookCompanionValue = (
ClearAll[t];
a = {{1, 1, 1},
 {1, -1, 3}};
b = {4, 2};
xp = {3, 1, 0};
z = Cross[a[[1]], a[[2]]];
line = xp + t z;
{z, a.z, Expand[a.line],
 MatrixRank[a], NullSpace[a]}
);
Print["P1-C08-E039: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E040 | 8.7.4. Вариант 4. Пересечение двух ограничений. Геометрия 4 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E040`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E040`*"];
$BookCompanionValue = (
ClearAll[t];
a = {{1, 1, 1},
 {1, -1, 4}};
b = {5, 3};
xp = {4, 1, 0};
z = Cross[a[[1]], a[[2]]];
line = xp + t z;
{z, a.z, Expand[a.line],
 MatrixRank[a], NullSpace[a]}
);
Print["P1-C08-E040: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E041 | 8.7.5. Вариант 5. Пересечение двух ограничений. Геометрия 5 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E041`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E041`*"];
$BookCompanionValue = (
ClearAll[t];
a = {{1, 1, 1},
 {1, -1, 5}};
b = {6, 4};
xp = {5, 1, 0};
z = Cross[a[[1]], a[[2]]];
line = xp + t z;
{z, a.z, Expand[a.line],
 MatrixRank[a], NullSpace[a]}
);
Print["P1-C08-E041: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E042 | 8.7.6. Вариант 6. Пересечение двух ограничений. Геометрия 6 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E042`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E042`*"];
$BookCompanionValue = (
ClearAll[t];
a = {{1, 1, 1},
 {1, -1, 6}};
b = {7, 5};
xp = {6, 1, 0};
z = Cross[a[[1]], a[[2]]];
line = xp + t z;
{z, a.z, Expand[a.line],
 MatrixRank[a], NullSpace[a]}
);
Print["P1-C08-E042: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E043 | 8.8.1. Вариант 1. Ошибка в позиции 1 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E043`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E043`*"];
$BookCompanionValue = (
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
);
Print["P1-C08-E043: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E044 | 8.8.2. Вариант 2. Ошибка в позиции 2 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E044`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E044`*"];
$BookCompanionValue = (
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
);
Print["P1-C08-E044: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E045 | 8.8.3. Вариант 3. Ошибка в позиции 3 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E045`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E045`*"];
$BookCompanionValue = (
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
);
Print["P1-C08-E045: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E046 | 8.8.4. Вариант 4. Ошибка в позиции 4 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E046`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E046`*"];
$BookCompanionValue = (
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
);
Print["P1-C08-E046: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E047 | 8.8.5. Вариант 5. Ошибка в позиции 5 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E047`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E047`*"];
$BookCompanionValue = (
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
);
Print["P1-C08-E047: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C08-E048 | 8.8.6. Вариант 6. Ошибка в позиции 6 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C08E048`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C08E048`*"];
$BookCompanionValue = (
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
);
Print["P1-C08-E048: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;
