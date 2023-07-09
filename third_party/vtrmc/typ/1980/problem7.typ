#let langle = " " + $angle.l$ + " "

Let $S$ be the set of all ordered pairs of integers $(m, n)$ satisfying $m > 0$
and $n < 0$. Let $angle.l$ be a partial ordering on $S$ defined by the statement:
$(m, n) langle (m', n')$ if and only if $m <= m'$ and $n <= n'$. An example
is $(5, -10) langle (8, -2)$. Now let $O$ be a completely ordered subset of
$S$, i.e., if $(a, b) in O$ and $(c, d ) in O$, then $(a, b) langle (c, d)$
or $(c, d) langle (a, b)$. Also let $C$ denote the collection of all such
completely ordered sets.

#set enum(numbering: "(a)")

+ Determine whether an arbitrary $O in C$ is finite.
+ Determine whether the cardinality $| O |$ of $O$ is bounded for $O in C$.
+ Determine whether $| O |$ can be countably infinite for any $O in C$.
