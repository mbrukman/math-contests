// Define "maybe congruent" with a question mark above the `ident`.
#let mbeq = $limits(ident)^?$

We can demonstrate this via induction. Recall that to prove something by
induction, we have two steps:

+ prove the base case
+ prove the inductive case, e.g., if something is true for $n$, it's also true for $n+1$

The above two steps let us claim that this is generally true for all $n$ of
interest.

Let's first consider the base case $(n = 1)$:

$
  3^(4n + 2) + 5^(2n + 1) = 3^(4 + 2) + 5^(2 + 1) = 729 + 125 = 854 = 14 dot 61
$

Thus, $14$ divides that expression, so we have shown the base case.

Now let's consider the inductive case:

+ assume that $14$ divides $3^(4n + 2) + 5^(2n + 1)$
+ prove that $14$ divides $3^(4(n+1) + 2) + 5^(2(n+1) + 1)$

Note that we can assume that:

$
  3^(4n + 2) + 5^(2n + 1) ident 0 mod 14 "(1)"
$

Let's start with the second point:

$
3^(4(n+1) + 2) + 5^(2(n+1) + 1)         & mbeq 0 mod 14
                                        & "starting point" \
3^(4n +4 + 2) + 5^(2n + 2 + 1)          & mbeq 0 mod 14
                                        & "expand" \
3^4 dot 3^(4n + 2) + 5^2 dot 5^(2n + 1) & mbeq 0 mod 14
                                        & "factor to match starting point" \
81 dot 3^(4n + 2) + 25 dot 5^(2n + 1)   & mbeq 0 mod 14
                                        & "simplify" \
56 dot 3^(4n + 2) + 25 dot 3^(4n + 2) + 25 dot 5^(2n + 1)
                                        & mbeq 0 mod 14
                                        & quad "separate" 81 "into" 25 "and remainder" \
56 dot 3^(4n + 2) + 25 dot (3^(4n + 2) + 5^(2n + 1))
                                        & mbeq 0 mod 14
                                        & "factor out" 25 \
56 dot 3^(4n + 2)                       & mbeq 0 mod 14
                                        & "using eq." 1 \
0                                       & ident 0 mod 14
                                        & "since" 56 ident 0 mod 14 \
$

Above, we were able to first subtract the expression $25 dot (3^(4n + 2) +
5^(2n + 1))$ since it is divisible by $14$ and then similarly, $56 dot 3^(4n +
2)$ since it is also divisible by $14$.

Since we have proven the inductive case, this completes the proof. $qed$
