(* 4. Поля и векторные пространства *)
(* Part 1; 8 source blocks; companion 1.0.0. *)
(* Evaluate the full file, or use Run_All.nb / Run_All.wls for execution reports. *)

(* P1-C04-E001 | 4.1. Поле и арифметические правила *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C04E001`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C04E001`*"];
$BookCompanionValue = (
{Mod[2*3, 6], Mod[2*1, 6], Mod[2*4, 6]}
);
Print["P1-C04-E001: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C04-E002 | 4.2. Поле по простому модулю *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C04E002`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C04E002`*"];
$BookCompanionValue = (
inverse2 = PowerMod[2, -1, 5];
x = Mod[inverse2*(1 - 3), 5];
{inverse2, x, Mod[2 x + 3, 5]}
);
Print["P1-C04-E002: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C04-E003 | 4.3. Четыре элемента и алгебраическое расширение *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C04E003`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C04E003`*"];
$BookCompanionValue = (
ClearAll[z];
f = z^2 + z + 1;
PolynomialRemainder[z (z + 1), f, z,
  Modulus -> 2]
);
Print["P1-C04-E003: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C04-E004 | 4.3. Четыре элемента и алгебраическое расширение *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C04E004`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C04E004`*"];
$BookCompanionValue = (
FullSimplify[1/(3 + 2 Sqrt[2])]
);
Print["P1-C04-E004: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C04-E005 | 4.4. Комплексные числа и геометрия *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C04E005`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C04E005`*"];
$BookCompanionValue = (
z = 2 + I;
{Conjugate[z], Abs[z], I z,
 Simplify[(1 + I)/(1 - I)]}
);
Print["P1-C04-E005: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C04-E006 | 4.5. Аксиомы векторного пространства *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C04E006`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C04E006`*"];
$BookCompanionValue = (
ClearAll[t];
p = 1 + 2 t;
q = t - t^2;
{Expand[2 p - q],
 CoefficientList[Expand[2 p - q], t]}
);
Print["P1-C04-E006: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C04-E007 | 4.6. Подпространства и линейная оболочка *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C04E007`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C04E007`*"];
$BookCompanionValue = (
ClearAll[s, t];
u = {1, 0, -1};
v = {0, 1, -1};
w = s u + t v;
{w, Simplify[Total[w]]}
);
Print["P1-C04-E007: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C04-E008 | 4.7. Вещественное и эрмитово скалярные произведения *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C04E008`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C04E008`*"];
$BookCompanionValue = (
x = {1, I};
y = {I, 1};
{Conjugate[x].x, Conjugate[x].y, x.x}
);
Print["P1-C04-E008: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;
