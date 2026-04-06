A sequence of integers ${ f(n) }$ for $n = 0, 1, 2, ...$ is
defined as follows: $f(0) = 0$ and for $n > 0$,

$ 
  f(n) = cases(
    f(n - 1) + 3 & "if " n equiv 0 " or " 1 (mod 6),
    f(n - 1) + 1 & "if " n equiv 2 " or " 5 (mod 6),
    f(n - 1) + 2 & "if " n equiv 3 " or " 4 (mod 6).
  )
$

Derive an explicit formula for $f(n)$ when $n equiv 0 mod 6$,
showing all necessary details in your derivation.
