(* 6. Линейная теория кодирования *)
(* Part 1; 6 source blocks; companion 1.0.0. *)
(* Evaluate the full file, or use Run_All.nb / Run_All.wls for execution reports. *)

(* P1-C06-E001 | 6.1. Код как подпространство *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C06E001`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C06E001`*"];
$BookCompanionValue = (
g = {{1, 0, 1}, {0, 1, 1}};
messages = Tuples[{0, 1}, 2];
code = Mod[messages.g, 2];
code
);
Print["P1-C06-E001: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C06-E002 | 6.2. Контрольные суммы и ISBN *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C06E002`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C06E002`*"];
$BookCompanionValue = (
digits = IntegerDigits[978030640615];
weights = Table[If[OddQ[j], 1, 3], {j, 12}];
sum = weights.digits;
check = Mod[-sum, 10];
{sum, check, Mod[sum + check, 10]}
);
Print["P1-C06-E002: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C06-E003 | 6.3. Расстояние и вес Хэмминга *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C06E003`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C06E003`*"];
$BookCompanionValue = (
words = {{0, 0, 0}, {0, 1, 1},
  {1, 0, 1}, {1, 1, 0}};
weights = Total /@ Rest[words];
{weights, Min[weights]}
);
Print["P1-C06-E003: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C06-E004 | 6.5. Полное кодирование и исправление *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C06E004`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C06E004`*"];
$BookCompanionValue = (
h = {{1, 0, 1, 0, 1, 0, 1},
 {0, 1, 1, 0, 0, 1, 1},
 {0, 0, 0, 1, 1, 1, 1}};
g = {{1, 1, 1, 0, 0, 0, 0},
 {1, 0, 0, 1, 1, 0, 0},
 {0, 1, 0, 1, 0, 1, 0},
 {1, 1, 0, 1, 0, 0, 1}};
message = {1, 0, 1, 1};
sent = Mod[message.g, 2];
received = Mod[sent + UnitVector[7, 5], 2];
syndrome = Mod[h.received, 2];
position = {1, 2, 4}.syndrome;
corrected = Mod[received +
  UnitVector[7, position], 2];
{sent, syndrome, position, corrected == sent}
);
Print["P1-C06-E004: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C06-E005 | 6.6. Совершенные коды и смежные классы *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C06E005`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C06E005`*"];
$BookCompanionValue = (
g = {{1, 1, 1, 0, 0, 0, 0},
 {1, 0, 0, 1, 1, 0, 0},
 {0, 1, 0, 1, 0, 1, 0},
 {1, 1, 0, 1, 0, 0, 1}};
code = Mod[Tuples[{0, 1}, 4].g, 2];
weights = Total /@ DeleteCases[code,
  ConstantArray[0, 7]];
{Length[code], Min[weights],
 Length[code]*(1 + 7), 2^7}
);
Print["P1-C06-E005: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;

(* P1-C06-E006 | 6.7. Коды Адамара и максимальное расстояние *)
LinearAlgebraCompanionScripts`SavedContextPath = $ContextPath;
Begin["LinearAlgebraCompanion`Part1`P1C06E006`"];
$ContextPath = {$Context,"System`"};
ClearAll["LinearAlgebraCompanion`Part1`P1C06E006`*"];
$BookCompanionValue = (
h = {{1}};
Do[h = ArrayFlatten[{{h, h}, {h, -h}}], {3}];
binary = (1 - h)/2;
{h.Transpose[h] == 8 IdentityMatrix[8],
 HammingDistance[binary[[1]], binary[[2]]]}
);
Print["P1-C06-E006: ", InputForm[$BookCompanionValue]];
End[];
$ContextPath = LinearAlgebraCompanionScripts`SavedContextPath;
