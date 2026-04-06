Let $S$ denote the set of 2 by 2 matrices with integer entries and determinant
1, and let $T$ denote those matrices of $S$ which are congruent to the identity
matrix $I \bmod 3$ (so $mat(a, b; c, d) in T$
means that $a, b, c, d in ZZ$, $a d - b c = 1$, and 3 divides $b, c, a -
1, d - 1$).

#set enum(numbering: "(a)")

+ Let $f : T -> RR$ (the real numbers) be a function such that for
  every $X, Y in T$ with $Y != I$, either $f(X Y) > f(X)$ or $f (X Y^(-1)) >
  f(X)$ (or both). Show that given two finite nonempty subsets $A, B$ of
  $T$, there are matrices $a in A$ and $b in B$ such that if $a' in A$,
  $b' in B$ and $a' b' = a b$, then $a' = a$ and $b' = b$.

+ Show that there is no $f : S -> RR$ such that for every $X, Y
  in S$ with $Y != plus.minus I$, either $f(X Y) > f(X)$ or $f(X Y^(-1)) > f(X)$.
