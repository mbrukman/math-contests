Let $(a_1, b_1), ..., (a_n, b_n)$ be $n$ points in $RR^2$ (where
$RR$ denotes the real numbers), and let $epsilon > 0$ be a positive
number. Can we find a real-valued function $f(x, y)$ that satisfies the
following three conditions?

#set enum(numbering: "(a)")

+ $f(0, 0) = 1$;
+ $f(x, y) != 0$ for only finitely many $(x, y) in RR^2$;
+ $display(sum_(r=1)^n |f(x + a_r, y + b_r) - f(x, y)| < epsilon)$ for
  every $(x, y) in RR^2$.

Justify your answer.
