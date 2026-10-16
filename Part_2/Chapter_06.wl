(* 6. Геометрия плоскости и пространства *)
(* Part 2; 8 source blocks; companion 1.0.0. *)
(* Evaluate the full file, or use Run_All.nb / Run_All.wls for execution reports. *)

(* P2-C06-E001 | 6.1. Прямые и параметр *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C06E001`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C06E001`*"];
$BookCompanionValue = (
ClearAll[t];
p = {1, 2}; u = {3, -1};
point = p + t u;
{point, Expand[{1, 3}.point]}
);
Print["P2-C06-E001: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C06-E002 | 6.2. Плоскость и нормаль *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C06E002`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C06E002`*"];
$BookCompanionValue = (
n = {2, -1, 1}; p = {1, 0, 2};
points = {{2, 1, 1}, {0, 0, 0}};
(n.(# - p) &) /@ points
);
Print["P2-C06-E002: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C06-E003 | 6.3. Неравенство Коши–Шварца *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C06E003`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C06E003`*"];
$BookCompanionValue = (
u = {1, 2}; v = {2, -1}; w = {2, 4};
{u.v, Abs[u.w], Norm[u] Norm[w]}
);
Print["P2-C06-E003: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C06-E004 | 6.4. Углы и расстояния *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C06E004`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C06E004`*"];
$BookCompanionValue = (
n = {2, -1, 1}; d = 4; b = {2, 1, 4};
p = b - (n.b - d)/(n.n) n;
{p, n.p, FullSimplify[Norm[b - p]]}
);
Print["P2-C06-E004: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C06-E005 | 6.5. Векторное произведение *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C06E005`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C06E005`*"];
$BookCompanionValue = (
u = {1, 0, 1}; v = {0, 2, 1};
normal = Cross[u, v];
{normal, normal.u, normal.v,
 Norm[normal], Norm[normal]/2}
);
Print["P2-C06-E005: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C06-E006 | 6.6. Момент силы *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C06E006`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C06E006`*"];
$BookCompanionValue = (
r = {3/10, 0, 0};
force = {0, 10, 0};
{Cross[r, force], Cross[r, {10, 0, 0}]}
);
Print["P2-C06-E006: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C06-E007 | 6.7. Смешанное произведение и объем *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C06E007`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C06E007`*"];
$BookCompanionValue = (
u = {2, 0, 0}; v = {0, 3, 0}; w = {1, 1, 4};
mixed = u.Cross[v, w];
{mixed, Det[Transpose[{u, v, w}]], Abs[mixed]/6}
);
Print["P2-C06-E007: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C06-E008 | 6.8. Итоговый пример с плоскостями *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C06E008`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C06E008`*"];
$BookCompanionValue = (
ClearAll[t];
n1 = {1, 1, 1}; n2 = {1, -1, 1};
line = {2, 1, 0} + t {-1, 0, 1};
{Expand[n1.line], Expand[n2.line], Cross[n1, n2]}
);
Print["P2-C06-E008: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;
