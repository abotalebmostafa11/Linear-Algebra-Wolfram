(* 7. Практикум. Решения с промежуточными вычислениями *)
(* Part 2; 48 source blocks; companion 1.0.0. *)
(* Evaluate the full file, or use Run_All.nb / Run_All.wls for execution reports. *)

(* P2-C07-E001 | 7.1.1. Вариант 1. Три направления. Определитель 1 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E001`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E001`*"];
$BookCompanionValue = (
a = {{2, 1, 2},
 {1, 3, 1},
 {2, 0, 4}};
minors = Table[Det[Delete[#, j] & /@ Rest[a]],
 {j, 1, 3}];
cofactors = {1, -1, 1} minors;
contributions = a[[1]] cofactors;
result = Total[contributions];
{minors, cofactors, contributions, result, Det[a]}
);
Print["P2-C07-E001: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E002 | 7.1.2. Вариант 2. Три направления. Определитель 2 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E002`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E002`*"];
$BookCompanionValue = (
a = {{3, 1, 2},
 {1, 4, 1},
 {2, 0, 5}};
minors = Table[Det[Delete[#, j] & /@ Rest[a]],
 {j, 1, 3}];
cofactors = {1, -1, 1} minors;
contributions = a[[1]] cofactors;
result = Total[contributions];
{minors, cofactors, contributions, result, Det[a]}
);
Print["P2-C07-E002: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E003 | 7.1.3. Вариант 3. Три направления. Определитель 3 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E003`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E003`*"];
$BookCompanionValue = (
a = {{4, 1, 2},
 {1, 5, 1},
 {2, 0, 6}};
minors = Table[Det[Delete[#, j] & /@ Rest[a]],
 {j, 1, 3}];
cofactors = {1, -1, 1} minors;
contributions = a[[1]] cofactors;
result = Total[contributions];
{minors, cofactors, contributions, result, Det[a]}
);
Print["P2-C07-E003: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E004 | 7.1.4. Вариант 4. Три направления. Определитель 4 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E004`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E004`*"];
$BookCompanionValue = (
a = {{5, 1, 2},
 {1, 6, 1},
 {2, 0, 7}};
minors = Table[Det[Delete[#, j] & /@ Rest[a]],
 {j, 1, 3}];
cofactors = {1, -1, 1} minors;
contributions = a[[1]] cofactors;
result = Total[contributions];
{minors, cofactors, contributions, result, Det[a]}
);
Print["P2-C07-E004: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E005 | 7.1.5. Вариант 5. Три направления. Определитель 5 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E005`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E005`*"];
$BookCompanionValue = (
a = {{6, 1, 2},
 {1, 7, 1},
 {2, 0, 8}};
minors = Table[Det[Delete[#, j] & /@ Rest[a]],
 {j, 1, 3}];
cofactors = {1, -1, 1} minors;
contributions = a[[1]] cofactors;
result = Total[contributions];
{minors, cofactors, contributions, result, Det[a]}
);
Print["P2-C07-E005: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E006 | 7.1.6. Вариант 6. Три направления. Определитель 6 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E006`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E006`*"];
$BookCompanionValue = (
a = {{7, 1, 2},
 {1, 8, 1},
 {2, 0, 9}};
minors = Table[Det[Delete[#, j] & /@ Rest[a]],
 {j, 1, 3}];
cofactors = {1, -1, 1} minors;
contributions = a[[1]] cofactors;
result = Total[contributions];
{minors, cofactors, contributions, result, Det[a]}
);
Print["P2-C07-E006: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E007 | 7.2.1. Вариант 1. Преобразование участка. Масштаб 1 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E007`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E007`*"];
$BookCompanionValue = (
p = {{2, 1},
 {1, 3}};
a = {{2, 1},
 {0, 2}};
u = p[[All, 1]]; v = p[[All, 2]];
new = Transpose[{a.u, a.v}];
{Det[p], Det[a], new, Abs[Det[new]],
 Det[new] == Det[a] Det[p]}
);
Print["P2-C07-E007: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E008 | 7.2.2. Вариант 2. Преобразование участка. Масштаб 2 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E008`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E008`*"];
$BookCompanionValue = (
p = {{2, 1},
 {1, 4}};
a = {{3, 1},
 {0, 2}};
u = p[[All, 1]]; v = p[[All, 2]];
new = Transpose[{a.u, a.v}];
{Det[p], Det[a], new, Abs[Det[new]],
 Det[new] == Det[a] Det[p]}
);
Print["P2-C07-E008: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E009 | 7.2.3. Вариант 3. Преобразование участка. Масштаб 3 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E009`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E009`*"];
$BookCompanionValue = (
p = {{2, 1},
 {1, 5}};
a = {{4, 1},
 {0, 2}};
u = p[[All, 1]]; v = p[[All, 2]];
new = Transpose[{a.u, a.v}];
{Det[p], Det[a], new, Abs[Det[new]],
 Det[new] == Det[a] Det[p]}
);
Print["P2-C07-E009: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E010 | 7.2.4. Вариант 4. Преобразование участка. Масштаб 4 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E010`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E010`*"];
$BookCompanionValue = (
p = {{2, 1},
 {1, 6}};
a = {{5, 1},
 {0, 2}};
u = p[[All, 1]]; v = p[[All, 2]];
new = Transpose[{a.u, a.v}];
{Det[p], Det[a], new, Abs[Det[new]],
 Det[new] == Det[a] Det[p]}
);
Print["P2-C07-E010: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E011 | 7.2.5. Вариант 5. Преобразование участка. Масштаб 5 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E011`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E011`*"];
$BookCompanionValue = (
p = {{2, 1},
 {1, 7}};
a = {{6, 1},
 {0, 2}};
u = p[[All, 1]]; v = p[[All, 2]];
new = Transpose[{a.u, a.v}];
{Det[p], Det[a], new, Abs[Det[new]],
 Det[new] == Det[a] Det[p]}
);
Print["P2-C07-E011: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E012 | 7.2.6. Вариант 6. Преобразование участка. Масштаб 6 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E012`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E012`*"];
$BookCompanionValue = (
p = {{2, 1},
 {1, 8}};
a = {{7, 1},
 {0, 2}};
u = p[[All, 1]]; v = p[[All, 2]];
new = Transpose[{a.u, a.v}];
{Det[p], Det[a], new, Abs[Det[new]],
 Det[new] == Det[a] Det[p]}
);
Print["P2-C07-E012: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E013 | 7.3.1. Вариант 1. Два связанных процесса. Связь 1 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E013`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E013`*"];
$BookCompanionValue = (
a = {{3, 1},
 {1, 3}};
q = {{1, 1},
 {1, -1}}/Sqrt[2];
x = {1, 1};
diagonal = FullSimplify[Transpose[q].a.q];
coordinates = FullSimplify[Transpose[q].x];
{Eigenvalues[a], diagonal, coordinates,
 FullSimplify[q.diagonal.coordinates - a.x]}
);
Print["P2-C07-E013: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E014 | 7.3.2. Вариант 2. Два связанных процесса. Связь 2 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E014`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E014`*"];
$BookCompanionValue = (
a = {{4, 1},
 {1, 4}};
q = {{1, 1},
 {1, -1}}/Sqrt[2];
x = {2, 1};
diagonal = FullSimplify[Transpose[q].a.q];
coordinates = FullSimplify[Transpose[q].x];
{Eigenvalues[a], diagonal, coordinates,
 FullSimplify[q.diagonal.coordinates - a.x]}
);
Print["P2-C07-E014: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E015 | 7.3.3. Вариант 3. Два связанных процесса. Связь 3 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E015`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E015`*"];
$BookCompanionValue = (
a = {{5, 1},
 {1, 5}};
q = {{1, 1},
 {1, -1}}/Sqrt[2];
x = {3, 1};
diagonal = FullSimplify[Transpose[q].a.q];
coordinates = FullSimplify[Transpose[q].x];
{Eigenvalues[a], diagonal, coordinates,
 FullSimplify[q.diagonal.coordinates - a.x]}
);
Print["P2-C07-E015: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E016 | 7.3.4. Вариант 4. Два связанных процесса. Связь 4 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E016`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E016`*"];
$BookCompanionValue = (
a = {{6, 1},
 {1, 6}};
q = {{1, 1},
 {1, -1}}/Sqrt[2];
x = {4, 1};
diagonal = FullSimplify[Transpose[q].a.q];
coordinates = FullSimplify[Transpose[q].x];
{Eigenvalues[a], diagonal, coordinates,
 FullSimplify[q.diagonal.coordinates - a.x]}
);
Print["P2-C07-E016: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E017 | 7.3.5. Вариант 5. Два связанных процесса. Связь 5 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E017`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E017`*"];
$BookCompanionValue = (
a = {{7, 1},
 {1, 7}};
q = {{1, 1},
 {1, -1}}/Sqrt[2];
x = {5, 1};
diagonal = FullSimplify[Transpose[q].a.q];
coordinates = FullSimplify[Transpose[q].x];
{Eigenvalues[a], diagonal, coordinates,
 FullSimplify[q.diagonal.coordinates - a.x]}
);
Print["P2-C07-E017: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E018 | 7.3.6. Вариант 6. Два связанных процесса. Связь 6 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E018`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E018`*"];
$BookCompanionValue = (
a = {{8, 1},
 {1, 8}};
q = {{1, 1},
 {1, -1}}/Sqrt[2];
x = {6, 1};
diagonal = FullSimplify[Transpose[q].a.q];
coordinates = FullSimplify[Transpose[q].x];
{Eigenvalues[a], diagonal, coordinates,
 FullSimplify[q.diagonal.coordinates - a.x]}
);
Print["P2-C07-E018: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E019 | 7.4.1. Вариант 1. Повторное действие. Степень 4 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E019`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E019`*"];
$BookCompanionValue = (
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
);
Print["P2-C07-E019: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E020 | 7.4.2. Вариант 2. Повторное действие. Степень 5 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E020`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E020`*"];
$BookCompanionValue = (
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
);
Print["P2-C07-E020: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E021 | 7.4.3. Вариант 3. Повторное действие. Степень 6 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E021`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E021`*"];
$BookCompanionValue = (
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
);
Print["P2-C07-E021: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E022 | 7.4.4. Вариант 4. Повторное действие. Степень 7 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E022`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E022`*"];
$BookCompanionValue = (
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
);
Print["P2-C07-E022: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E023 | 7.4.5. Вариант 5. Повторное действие. Степень 8 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E023`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E023`*"];
$BookCompanionValue = (
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
);
Print["P2-C07-E023: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E024 | 7.4.6. Вариант 6. Повторное действие. Степень 9 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E024`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E024`*"];
$BookCompanionValue = (
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
);
Print["P2-C07-E024: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E025 | 7.5.1. Вариант 1. Энергия двух координат. Форма 1 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E025`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E025`*"];
$BookCompanionValue = (
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
);
Print["P2-C07-E025: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E026 | 7.5.2. Вариант 2. Энергия двух координат. Форма 2 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E026`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E026`*"];
$BookCompanionValue = (
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
);
Print["P2-C07-E026: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E027 | 7.5.3. Вариант 3. Энергия двух координат. Форма 3 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E027`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E027`*"];
$BookCompanionValue = (
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
);
Print["P2-C07-E027: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E028 | 7.5.4. Вариант 4. Энергия двух координат. Форма 4 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E028`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E028`*"];
$BookCompanionValue = (
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
);
Print["P2-C07-E028: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E029 | 7.5.5. Вариант 5. Энергия двух координат. Форма 5 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E029`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E029`*"];
$BookCompanionValue = (
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
);
Print["P2-C07-E029: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E030 | 7.5.6. Вариант 6. Энергия двух координат. Форма 6 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E030`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E030`*"];
$BookCompanionValue = (
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
);
Print["P2-C07-E030: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E031 | 7.6.1. Вариант 1. Оптимальная настройка. Энергия 1 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E031`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E031`*"];
$BookCompanionValue = (
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
);
Print["P2-C07-E031: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E032 | 7.6.2. Вариант 2. Оптимальная настройка. Энергия 2 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E032`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E032`*"];
$BookCompanionValue = (
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
);
Print["P2-C07-E032: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E033 | 7.6.3. Вариант 3. Оптимальная настройка. Энергия 3 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E033`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E033`*"];
$BookCompanionValue = (
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
);
Print["P2-C07-E033: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E034 | 7.6.4. Вариант 4. Оптимальная настройка. Энергия 4 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E034`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E034`*"];
$BookCompanionValue = (
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
);
Print["P2-C07-E034: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E035 | 7.6.5. Вариант 5. Оптимальная настройка. Энергия 5 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E035`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E035`*"];
$BookCompanionValue = (
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
);
Print["P2-C07-E035: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E036 | 7.6.6. Вариант 6. Оптимальная настройка. Энергия 6 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E036`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E036`*"];
$BookCompanionValue = (
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
);
Print["P2-C07-E036: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E037 | 7.7.1. Вариант 1. Три последовательных звена. Связь 1 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E037`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E037`*"];
$BookCompanionValue = (
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
);
Print["P2-C07-E037: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E038 | 7.7.2. Вариант 2. Три последовательных звена. Связь 2 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E038`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E038`*"];
$BookCompanionValue = (
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
);
Print["P2-C07-E038: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E039 | 7.7.3. Вариант 3. Три последовательных звена. Связь 3 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E039`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E039`*"];
$BookCompanionValue = (
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
);
Print["P2-C07-E039: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E040 | 7.7.4. Вариант 4. Три последовательных звена. Связь 4 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E040`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E040`*"];
$BookCompanionValue = (
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
);
Print["P2-C07-E040: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E041 | 7.7.5. Вариант 5. Три последовательных звена. Связь 5 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E041`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E041`*"];
$BookCompanionValue = (
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
);
Print["P2-C07-E041: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E042 | 7.7.6. Вариант 6. Три последовательных звена. Связь 6 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E042`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E042`*"];
$BookCompanionValue = (
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
);
Print["P2-C07-E042: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E043 | 7.8.1. Вариант 1. Геометрия пространственной ячейки. Размер 1 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E043`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E043`*"];
$BookCompanionValue = (
u = {1, 0, 1}; v = {0, 2, 1}; w = {1, 1, 3};
n = Cross[u, v];
area = Norm[n];
mixed = n.w;
height = Abs[mixed]/area;
volume = Abs[mixed]/6;
{n, n.u, n.v, area, mixed,
 Det[Transpose[{u, v, w}]], height, volume}
);
Print["P2-C07-E043: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E044 | 7.8.2. Вариант 2. Геометрия пространственной ячейки. Размер 2 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E044`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E044`*"];
$BookCompanionValue = (
u = {2, 0, 1}; v = {0, 2, 1}; w = {1, 1, 4};
n = Cross[u, v];
area = Norm[n];
mixed = n.w;
height = Abs[mixed]/area;
volume = Abs[mixed]/6;
{n, n.u, n.v, area, mixed,
 Det[Transpose[{u, v, w}]], height, volume}
);
Print["P2-C07-E044: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E045 | 7.8.3. Вариант 3. Геометрия пространственной ячейки. Размер 3 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E045`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E045`*"];
$BookCompanionValue = (
u = {3, 0, 1}; v = {0, 2, 1}; w = {1, 1, 5};
n = Cross[u, v];
area = Norm[n];
mixed = n.w;
height = Abs[mixed]/area;
volume = Abs[mixed]/6;
{n, n.u, n.v, area, mixed,
 Det[Transpose[{u, v, w}]], height, volume}
);
Print["P2-C07-E045: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E046 | 7.8.4. Вариант 4. Геометрия пространственной ячейки. Размер 4 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E046`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E046`*"];
$BookCompanionValue = (
u = {4, 0, 1}; v = {0, 2, 1}; w = {1, 1, 6};
n = Cross[u, v];
area = Norm[n];
mixed = n.w;
height = Abs[mixed]/area;
volume = Abs[mixed]/6;
{n, n.u, n.v, area, mixed,
 Det[Transpose[{u, v, w}]], height, volume}
);
Print["P2-C07-E046: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E047 | 7.8.5. Вариант 5. Геометрия пространственной ячейки. Размер 5 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E047`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E047`*"];
$BookCompanionValue = (
u = {5, 0, 1}; v = {0, 2, 1}; w = {1, 1, 7};
n = Cross[u, v];
area = Norm[n];
mixed = n.w;
height = Abs[mixed]/area;
volume = Abs[mixed]/6;
{n, n.u, n.v, area, mixed,
 Det[Transpose[{u, v, w}]], height, volume}
);
Print["P2-C07-E047: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C07-E048 | 7.8.6. Вариант 6. Геометрия пространственной ячейки. Размер 6 *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C07E048`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C07E048`*"];
$BookCompanionValue = (
u = {6, 0, 1}; v = {0, 2, 1}; w = {1, 1, 8};
n = Cross[u, v];
area = Norm[n];
mixed = n.w;
height = Abs[mixed]/area;
volume = Abs[mixed]/6;
{n, n.u, n.v, area, mixed,
 Det[Transpose[{u, v, w}]], height, volume}
);
Print["P2-C07-E048: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;
