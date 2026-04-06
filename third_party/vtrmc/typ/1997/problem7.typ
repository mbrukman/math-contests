#let circ = $circle.stroked.tiny$

Let $J$ be the set of all sequences of real numbers, and let $A$, $L$ and $P$
be three mappings from $J$ to $J$ defined as follows. If $x = {x_n} = {x_0,
x_1, x_2, ... } in J$, then

$ 
  A x = { x_n + 1 } & = { x_0 + 1, x_1 + 1, x_2 + 1, ... }, \
  L x & = { 1, x_0, x_1, x_2, ... }, \
  P x & = { sum_(k=0)^(n) x_k }.
$

Finally, define the composite mapping $T$ on $J$ by $T x = L circ A circ P
x$. In the following, let $y = { 1, 1, 1, ... }$.

#set enum(numbering: "(a)")

+ Write down $T^2 y$, giving the first eight terms of the sequence and a
  closed formula for the $n$-th term.
+ Assuming that $z = { z_n } = display(lim_(i ->
  infinity) T^i y)$ exists, conjecture the general form for $z_n$, and prove
  your conjecture.
