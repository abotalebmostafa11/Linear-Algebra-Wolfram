(* 6. Линейная теория кодирования *)
(* Код совпадает с книгой. Перед самостоятельным примером выполните Quit[] в отдельной ячейке. *)

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

(* Задача 6.1 *)
u = {1, 0, 1, 1, 0, 0, 1};
v = {1, 0, 0, 1, 1, 0, 1};
Total[Mod[u + v, 2]]

(* Задача 6.2 *)
d = 5;
{Floor[(d - 1)/2], d - 1}

(* Задача 6.3 *)
r = {1, 0, 1}; words = {{0, 0, 0}, {1, 1, 1}};
Total[Mod[r + #, 2]] & /@ words

(* Задача 6.4 *)
u = {1, 0, 1, 1}; p = Mod[Total[u], 2];
{p, Mod[Total[Append[u, p]], 2]}

(* Задача 6.5 *)
digits = {0, 3, 0, 6, 4, 0, 6, 1, 5};
s = Range[10, 2, -1].digits;
{s, Mod[-s, 11]}

(* Задача 6.6 *)
h = {{1, 0, 1}, {0, 1, 1}}; e = {0, 0, 1};
Mod[h.e, 2]

(* Задача 6.7 *)
g = {{1, 0, 1}, {0, 1, 1}};
{Mod[{1, 1}.g, 2],
 Mod[#.g, 2] & /@ Tuples[{0, 1}, 2]}

(* Задача 6.8 *)
g = {{1, 0, 1}, {0, 1, 1}}; h = {{1, 1, 1}};
Mod[g.Transpose[h], 2]

(* Задача 6.9 *)
{16 (1 + 7), 2^7}

(* Задача 6.10 *)
Table[{n, 1/n, Floor[(n - 1)/2]}, {n, {3, 5}}]

(* Задача 6.11 *)
h = {{1, 1, 0}, {0, 0, 0}};
{h.{1, 0, 0}, h.{0, 1, 0}, h.{0, 0, 1}}

(* Задача 6.12 *)
g = {{1, 0, 1}, {0, 1, 1}};
c = Mod[#.g, 2] & /@ Tuples[{0, 1}, 2];
Min[Select[Total /@ c, # > 0 &]]

(* Задача 6.13 *)
r = {0, 1};
Total[Mod[r + #, 2]] & /@ {{0, 0}, {1, 1}}

(* Задача 6.14 *)
r = {1, 1, 0};
Total[Mod[r + #, 2]] & /@ {{0, 0, 0}, {1, 1, 1}}

(* Задача 6.15 *)
m = 20; n = 7; t = 1;
{m Sum[Binomial[n, j], {j, 0, t}],
 2^n, m (1 + n) <= 2^n}
