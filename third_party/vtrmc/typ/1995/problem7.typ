If $n$ is a positive integer larger than 1, let $n = product(p_i^(k_i))$ be the
unique prime factorization of $n$, where the $p_i$'s are distinct primes, 2, 3,
5, 7, 11, $...$, and define $f(n)$ by $f(n) = sum k_i p_i$ and $g(n)$ by
$display(g(n) = lim_(m -> infinity) f^m(n))$, where $f^m$ is meant the
$m$-fold application of $f$. Then $n$ is said to have property $H$ if $n/2 <
g(n) < n$.

#set enum(numbering: "(a)")

+ Evaluate $g(100)$ and $g(10^(10))$.
+ Find all positive odd integers larger than 1 that have property $H$.
