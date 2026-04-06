Let $epsilon, M$ be positive real numbers, and let $A_1, A_2, ...$ be a
sequence of matrices such that for all $n$,

#set enum(numbering: "(a)")

+ $A_n$ is an $n times n$ matrix with integer entries,
+ The sum of the absolute values of the entries in each row of $A_n$ is at most $M$.

If $delta$ is a positive real number, let $e_n(delta)$ denote the number of
nonzero eigenvalues of $A_n$ which have absolute value less that $delta$.
(Some eigenvalues can be complex numbers.) Prove that one can choose $delta >
0$ so that $e_n(delta)/n < epsilon$ for all $n$.
