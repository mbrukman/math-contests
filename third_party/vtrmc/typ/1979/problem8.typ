Let $S$ be a finite set of polynomials in two variables, $x$ and $y$. For $n$ a
positive integer, define $Omega_n(S)$ to be the collection of all expressions
$p_1 p_2 ... p_k$, where $p_i in S$ and $1 <= k <= n$. Let $d_n(S)$ indicate
the maximum number of linearly independent polynomials in $Omega_n(S)$. For
example, $Omega_2({ x^2, y }) = { x^2, y, x^2 y, x^4, y^2 }$ and $d_2({ x^2, y }) = 5$.

#set enum(numbering: "(a)")
+ Find $d_2({ 1, x, x + 1, y })$.

+ Find a closed formula in $n$ for $d_n({ 1, x, y })$.

+ Calculate the least upper bound over all such sets of
      $limsup_(n -> infinity) frac(log_(d_n)(S), log n)$.

  Note that $limsup_(n -> infinity) a_n =
        lim_(n -> infinity)(sup { a_n, a_(n + 1), ... })
      $, where $sup$ means supremum or least upper bound.
