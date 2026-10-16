(* 2. Собственные значения и динамика *)

(* 2.1. Дискретная динамика и Фибоначчи *)
a = {{1, 1}, {1, 0}};
states = NestList[a.# &, {1, 0}, 8];
{states, MatrixPower[a, 8].{1, 0}}

(* 2.2. Собственные пары и характеристический многочлен *)
ClearAll[t];
a = {{2, 1}, {1, 2}};
{Factor[CharacteristicPolynomial[a, t]],
 Eigensystem[a]}

(* 2.4. Диагонализация и кратности *)
j = {{2, 1}, {0, 2}};
{CharacteristicPolynomial[j, t],
 NullSpace[j - 2 IdentityMatrix[2]],
 MatrixPower[j, 4]}

(* 2.5. Формула Фибоначчи *)
phi = (1 + Sqrt[5])/2;
psi = (1 - Sqrt[5])/2;
Table[FullSimplify[(phi^k - psi^k)/Sqrt[5]],
 {k, 0, 10}]

(* 2.7. Теорема Кэли–Гамильтона *)
a = {{2, 1}, {1, 2}};
{a.a - 4 a + 3 IdentityMatrix[2],
 (4 IdentityMatrix[2] - a)/3 == Inverse[a]}

(* 2.8. Экспонента и системы дифференциальных уравнений *)
ClearAll[t];
a = {{-2, 1}, {1, -2}};
x = FullSimplify[MatrixExp[t a].{1, 0}];
{x, FullSimplify[D[x, t] - a.x], x /. t -> 0}
