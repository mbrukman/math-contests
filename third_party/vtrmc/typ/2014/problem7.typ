Let $A, B$ be two points in the plane with integer coordinates $A = (x_1, y_1)$
and $B = (x_2, y_2)$. (Thus $x_i, y_i in ZZ$, for $i = 1, 2$.) A path
$pi : A -> B$ is a sequence of *down* and *right* steps, where each step has an
integer length, and the initial step starts from $A$, the last step ending at
$B$. In the figure below, we indicated a path from $A_1 = (4, 9)$ to $B_1 =
(10, 3)$. The distance $d(A, B)$ between $A$ and $B$ is the number of such
paths. For example, the distance between $A = (0, 2)$ and $B = (2, 0)$ equals
6. Consider now two pairs of points in the plane $A_i = (x_i, y_i)$ and $B_i =
(u_i, z_i)$ for $i = 1, 2$, with integer coordinates, and in the configuration
shown in the picture (but with arbitrary coordinates):

+ $x_2 < x_1$ and $y_1 > y_2$, which means that $A_1$ is North-East of $A_2$;
  $u_2 < u_1$ and $z_1 > z_2$, which means that $B_1$ is North-East of $B_2$.
+ Each of the points $A_i$ is North-West of the points $B_j$, for $1 <= i, j
  <= 2$. In terms of inequalities, this means that $x_i < min { u_1, u_2 }$ and
  $y_i > max { z_1, z_2 }$ for $i = 1, 2$.

#image("vtrmc-2014-problem7.svg")

#set enum(numbering: "(a)")

+ Find the distance between two points $A$ and $B$ as before, as a function
  of the coordinates of $A$ and $B$. Assume that $A$ is North-West of $B$.
+ Consider the $2 times 2$ matrix $M = mat(d(A_1, B_1), d(A_1, B_2); d(A_2,
  B_1), d(A_2, B_2))$. Prove that for any configuration of points $A_1, A_2,
  B_1, B_2$ as described before, $det M > 0$.
