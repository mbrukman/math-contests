A continuous function $f : [a, b] -> [a, b]$ is called piecewise monotone if
$[a, b]$ can be subdivided into finitely many subintervals

$ I_1 = [c_0, c_1], I_2 = [c_1, c_2], ..., I_ell = [c_(ell-1), c_ell] $

such that $f$ restricted to each interval $I_j$ is strictly monotone, either
increasing or decreasing. Here we are assuming that $a = c_0 < c_1 < ... <
c_(ell-1) < c_ell = b$. We are also assuming that each $I_j$ is a maximal
interval on which $f$ is strictly monotone. Such a maximal interval is called a
lap of the function $f$, and the number $ell = ell(f)$ of distinct laps is
called the lap number of $f$.

If $f : [a, b] -> [a, b]$ is a continuous piecewise-monotone function, show
that the sequence $( root(n, ell(f^n)) )$ converges; here $f^n$
means $f$ composed with itself $n$-times, so $f^2(x) = f(f(x))$ etc.
