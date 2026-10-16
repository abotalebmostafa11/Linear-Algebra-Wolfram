(* 8. Справочник и литература *)
(* Part 2; 2 source blocks; companion 1.0.0. *)
(* Evaluate the full file, or use Run_All.nb / Run_All.wls for execution reports. *)

(* P2-C08-E001 | 8.2. Указатель команд Wolfram Language *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C08E001`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C08E001`*"];
$BookCompanionValue = (
a = {{1, 2, 3}, {2, 4, 6}};
p = PseudoInverse[a];
{a.p.a == a, p.a.p == p,
 ConjugateTranspose[a.p] == a.p,
 ConjugateTranspose[p.a] == p.a}
);
Print["P2-C08-E001: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P2-C08-E002 | 8.2. Указатель команд Wolfram Language *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part2`P2C08E002`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part2`P2C08E002`*"];
$BookCompanionValue = (
ClearAll[t];
a = {{2, 1}, {0, 2}};
{s, j} = JordanDecomposition[a];
e = MatrixExp[t a];
{a.s == s.j, Det[s] != 0,
 FullSimplify[D[e, t] - a.e],
 FullSimplify[(e /. t -> 0) - IdentityMatrix[2]]}
);
Print["P2-C08-E002: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;
