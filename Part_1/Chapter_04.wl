(* 4. Поля и векторные пространства *)
(* Код совпадает с книгой. Перед самостоятельным примером выполните Quit[] в отдельной ячейке. *)

(* 4.1. Поле и арифметические правила *)
{Mod[2*3, 6], Mod[2*1, 6], Mod[2*4, 6]}

(* 4.2. Поле по простому модулю *)
inverse2 = PowerMod[2, -1, 5];
x = Mod[inverse2*(1 - 3), 5];
{inverse2, x, Mod[2 x + 3, 5]}

(* 4.3. Четыре элемента и алгебраическое расширение *)
ClearAll[z];
f = z^2 + z + 1;
PolynomialRemainder[z (z + 1), f, z,
  Modulus -> 2]

(* 4.3. Четыре элемента и алгебраическое расширение *)
FullSimplify[1/(3 + 2 Sqrt[2])]

(* 4.4. Комплексные числа и геометрия *)
z = 2 + I;
{Conjugate[z], Abs[z], I z,
 Simplify[(1 + I)/(1 - I)]}

(* 4.5. Аксиомы векторного пространства *)
ClearAll[t];
p = 1 + 2 t;
q = t - t^2;
{Expand[2 p - q],
 CoefficientList[Expand[2 p - q], t]}

(* 4.6. Подпространства и линейная оболочка *)
ClearAll[s, t];
u = {1, 0, -1};
v = {0, 1, -1};
w = s u + t v;
{w, Simplify[Total[w]]}

(* 4.7. Вещественное и эрмитово скалярные произведения *)
x = {1, I};
y = {I, 1};
{Conjugate[x].x, Conjugate[x].y, x.x}

(* Задача 4.1 *)
inverse = PowerMod[3, -1, 7];
x = Mod[inverse*5, 7];
{inverse, x, Mod[3 x, 7]}

(* Задача 4.2 *)
(1 + 2 I)/(3 - I)

(* Задача 4.3 *)
z = 3 - 4 I;
{Conjugate[z], Abs[z], 1/z}

(* Задача 4.4 *)
p = 2 - 3 t + t^2;
{CoefficientList[p, t], p /. t -> 2}

(* Задача 4.5 *)
u = {1, 0, -1}; v = {0, 1, -1};
{Total[u], Total[v], Expand[Total[s u + t v]]}

(* Задача 4.6 *)
x = {3, 0}; a = {{2, 1}, {1, 1}};
Mod[a.x, 5]

(* Задача 4.7 *)
f = z^2 + z + 1;
{PolynomialRemainder[z (z + 1), f, z,
 Modulus -> 2],
 PolynomialRemainder[z^3, f, z, Modulus -> 2]}

(* Задача 4.8 *)
g = DiagonalMatrix[{1, 4}];
x = {2, -1}; y = {2, 1};
{x.g.x, x.g.y, x.y}

(* Задача 4.9 *)
u = {1, 0}; v = {0, 1};
{Times @@ u, Times @@ v, Times @@ (u + v)}

(* Задача 4.10 *)
Simplify[(2 + Sqrt[3]) (2 - Sqrt[3])]

(* Задача 4.11 *)
{Mod[2*3, 6], Mod[2*1, 6], Mod[2*4, 6]}

(* Задача 4.12 *)
u = {1, 0}; v = {0, 1};
{u + v, Det[Transpose[{u, v}]]}

(* Задача 4.13 *)
x = {1, I};
{x.x, Conjugate[x].x}

(* Задача 4.14 *)
{Mod[2, 6], Mod[3, 6], Mod[2*3, 6]}

(* Задача 4.15 *)
z = 3 - 2 I;
{Re[z], Im[z], Re[z] + I Im[z] == z}
