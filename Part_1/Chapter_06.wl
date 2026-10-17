(* 6. Линейная теория кодирования *)
(* Перед самостоятельным примером выполните Quit[] в отдельной ячейке Mathematica. *)
(* Копируйте один пример целиком. Его код совпадает с блоком книги. *)

(* 6.1. Код как подпространство *)
g = {{1, 0, 1}, {0, 1, 1}};
messages = Tuples[{0, 1}, 2];
code = Mod[messages.g, 2];
code

(* 6.2. Контрольные суммы и ISBN *)
digits = IntegerDigits[978030640615];
weights = Table[If[OddQ[j], 1, 3], {j, 12}];
sum = weights.digits;
check = Mod[-sum, 10];
{sum, check, Mod[sum + check, 10]}

(* 6.3. Расстояние и вес Хэмминга *)
words = {{0, 0, 0}, {0, 1, 1},
  {1, 0, 1}, {1, 1, 0}};
weights = Total /@ Rest[words];
{weights, Min[weights]}

(* 6.5. Полное кодирование и исправление *)
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

(* 6.6. Совершенные коды и смежные классы *)
g = {{1, 1, 1, 0, 0, 0, 0},
 {1, 0, 0, 1, 1, 0, 0},
 {0, 1, 0, 1, 0, 1, 0},
 {1, 1, 0, 1, 0, 0, 1}};
code = Mod[Tuples[{0, 1}, 4].g, 2];
weights = Total /@ DeleteCases[code,
  ConstantArray[0, 7]];
{Length[code], Min[weights],
 Length[code]*(1 + 7), 2^7}

(* 6.7. Коды Адамара и максимальное расстояние *)
h = {{1}};
Do[h = ArrayFlatten[{{h, h}, {h, -h}}], {3}];
binary = (1 - h)/2;
{h.Transpose[h] == 8 IdentityMatrix[8],
 HammingDistance[binary[[1]], binary[[2]]]}
