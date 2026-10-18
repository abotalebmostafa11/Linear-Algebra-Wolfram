(* 3. Собственные значения и динамика *)
(* Код совпадает с книгой. Перед самостоятельным примером выполните Quit[] в отдельной ячейке. *)

(* 3.1. Дискретная динамика и Фибоначчи *)
a = {{1, 1}, {1, 0}};
states = NestList[a.# &, {1, 0}, 8];
{states, MatrixPower[a, 8].{1, 0}}

(* 3.2. Собственные пары и характеристический многочлен *)
ClearAll[t];
a = {{2, 1}, {1, 2}};
{Factor[CharacteristicPolynomial[a, t]],
 Eigensystem[a]}

(* 3.4. Диагонализация и кратности *)
j = {{2, 1}, {0, 2}};
{CharacteristicPolynomial[j, t],
 NullSpace[j - 2 IdentityMatrix[2]],
 MatrixPower[j, 4]}

(* 3.5. Формула Фибоначчи *)
phi = (1 + Sqrt[5])/2;
psi = (1 - Sqrt[5])/2;
Table[FullSimplify[(phi^k - psi^k)/Sqrt[5]],
 {k, 0, 10}]

(* 3.7. Теорема Кэли–Гамильтона *)
a = {{2, 1}, {1, 2}};
{a.a - 4 a + 3 IdentityMatrix[2],
 (4 IdentityMatrix[2] - a)/3 == Inverse[a]}

(* 3.8. Экспонента и системы дифференциальных уравнений *)
ClearAll[t];
a = {{-2, 1}, {1, -2}};
x = FullSimplify[MatrixExp[t a].{1, 0}];
{x, FullSimplify[D[x, t] - a.x], x /. t -> 0}

(* Задача 3.1 *)
a = {{2, 1}, {1, 2}};
{Sort[Eigenvalues[a]], a.{1, 1}, a.{1, -1}}

(* Задача 3.2 *)
a = {{1, 2}, {0, 3}};
{CharacteristicPolynomial[a, t], Tr[a], Det[a]}

(* Задача 3.3 *)
a = DiagonalMatrix[{2, 1/2}];
MatrixPower[a, 5].{1, 4}

(* Задача 3.4 *)
j = {{2, 1}, {0, 2}};
{Factor[CharacteristicPolynomial[j, t]],
 Length[NullSpace[j - 2 IdentityMatrix[2]]]}

(* Задача 3.5 *)
a = {{0, -1}, {1, 0}};
{CharacteristicPolynomial[a, t],
 Det[a - I IdentityMatrix[2]],
 Det[a + I IdentityMatrix[2]]}

(* Задача 3.6 *)
p = {{1, 1}, {1, -1}};
p.DiagonalMatrix[{3^4, 1}].Inverse[p]

(* Задача 3.7 *)
a = {{1, 1}, {1, 0}};
MatrixPower[a, 10].{1, 0}

(* Задача 3.8 *)
a = DiagonalMatrix[{1/2, -1/3}];
MatrixPower[a, 10].{1, 1}

(* Задача 3.9 *)
a = {{2, 1}, {0, 3}};
MatrixPower[a, 2] - 5 a + 6 IdentityMatrix[2]

(* Задача 3.10 *)
a = {{1/2, 10}, {0, 1/2}}; x = a.{0, 1};
{Sort[Eigenvalues[a]], x, x.x}

(* Задача 3.11 *)
a = {{2, 1}, {1, 2}};
{a.{1, 1} - 3 {1, 1},
 a.{1, -1} - {1, -1}, Det[{{1, 1}, {1, -1}}]}

(* Задача 3.12 *)
a = IdentityMatrix[3];
{Eigenvalues[a], Length[NullSpace[a - IdentityMatrix[3]]]}

(* Задача 3.13 *)
a = {{2, 1}, {0, 3}}; p = {{1, s}, {0, 1}};
b = Inverse[p].a.p;
Expand[CharacteristicPolynomial[a, t] -
 CharacteristicPolynomial[b, t]]

(* Задача 3.14 *)
a = {{p, q}, {r, s}};
Expand[MatrixPower[a, 2] - (p + s) a +
 (p s - q r) IdentityMatrix[2]]

(* Задача 3.15 *)
a = {{0, -1}, {1, 0}}; p = {{1, 1}, {-I, I}};
Simplify[Inverse[p].a.p]
