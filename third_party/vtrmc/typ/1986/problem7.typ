A function $f$ from the positive integers to the positive integers has the
properties:

+ $f(1) = 1$,
+ $f(n) = 2$ if $n >= 100$,
+ $f(n) = display(f(frac(n, 2)))$ if $n$ is even and $n < 100$,
+ $f(n) = f(n^2 + 7)$ if $n$ is odd and $n > 1$.

#set enum(numbering: "(a)")

+ Find all positive integers $n$ for which the stated properties require
  that $f(n) = 1$.

+ Find all positive integers $n$ for which the stated properties do not
  determine $f(n)$.
