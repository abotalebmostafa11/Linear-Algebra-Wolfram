(* 4. Приложения спектральной теории *)
(* Part 2; 8 source blocks; companion 1.0.0. *)
(* Evaluate the full file, or use Run_All.nb / Run_All.wls for execution reports. *)

(* P2-C04-E001 | 4.1. Квадратичные формы *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C04E001`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C04E001`*"];
$BookCompanionValue = (
ClearAll[x, y];
a = {{2, 1}, {1, 2}};
{Expand[{x, y}.a.{x, y}], Eigenvalues[a]}
);
Print["P2-C04-E001: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C04-E002 | 4.3. Критерий положительной определенности *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C04E002`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C04E002`*"];
$BookCompanionValue = (
a = {{4, 2, 0}, {2, 3, 1}, {0, 1, 2}};
minors = Table[Det[a[[1 ;; k, 1 ;; k]]],
 {k, 1, Length[a]}];
{minors, And @@ Thread[minors > 0]}
);
Print["P2-C04-E002: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C04-E003 | 4.4. Стационарные точки и гессиан *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C04E003`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C04E003`*"];
$BookCompanionValue = (
ClearAll[x, y];
f = x^2 + x y + y^2 - 4 x - 2 y;
vars = {x, y};
grad = D[f, #] & /@ vars;
hessian = Table[D[f, vars[[i]], vars[[j]]],
 {i, 2}, {j, 2}];
{Solve[Thread[grad == 0], vars],
 Eigenvalues[hessian]}
);
Print["P2-C04-E003: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C04-E004 | 4.5. Матрицы графа *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C04E004`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C04E004`*"];
$BookCompanionValue = (
a = {{0, 1, 0}, {1, 0, 1}, {0, 1, 0}};
l = DiagonalMatrix[Total /@ a] - a;
{Eigenvalues[l], NullSpace[l], a.a}
);
Print["P2-C04-E004: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C04-E005 | 4.5.1. Спектральная кластеризация *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C04E005`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C04E005`*"];
$BookCompanionValue = (
w = {{0, 1, 0, 0}, {1, 0, 1/10, 0},
 {0, 1/10, 0, 1}, {0, 0, 1, 0}};
lap = DiagonalMatrix[Total[w]] - w;
tau = (Sqrt[101] - 1)/10;
lambda2 = (11 - Sqrt[101])/10;
fiedler = {1, tau, -tau, -1};
{lap, FullSimplify[lap.fiedler - lambda2 fiedler],
 Total[fiedler], Sign[fiedler],
 Sort[N[Eigenvalues[lap], 8]]}
);
Print["P2-C04-E005: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C04-E006 | 4.6. Регулярные графы *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C04E006`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C04E006`*"];
$BookCompanionValue = (
a = {{0, 1, 0, 1}, {1, 0, 1, 0},
 {0, 1, 0, 1}, {1, 0, 1, 0}};
{a.ConstantArray[1, 4], Eigenvalues[a],
 a.{1, -1, 1, -1}}
);
Print["P2-C04-E006: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C04-E007 | 4.7. Степенной метод *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C04E007`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C04E007`*"];
$BookCompanionValue = (
a = N[{{2, 1}, {1, 2}}];
x = Normalize[{1., 0.}];
history = Table[
 x = Normalize[a.x];
 lambda = x.a.x;
 {k, lambda, Norm[a.x - lambda x]},
 {k, 1, 12}];
history
);
Print["P2-C04-E007: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C04-E008 | 4.8. QR-алгоритм и условия сходимости *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C04E008`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C04E008`*"];
$BookCompanionValue = (
a = N[{{4, 1}, {1, 2}}];
history = Table[
 {qs, r} = QRDecomposition[a];
 q = ConjugateTranspose[qs];
 a = r.q;
 {k, Diagonal[a], Abs[a[[2, 1]]]},
 {k, 1, 20}];
history
);
Print["P2-C04-E008: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;
