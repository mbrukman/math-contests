A sequence of integers ${ n_1, n_2, ... }$ is defined as follows:
$n_1$ is assigned arbitrarily and, for $k>1$, 
$ n_k=sum_(j=1)^(j=k-1)z(n_j), $

where $z(n)$ is the number of $0$s in the binary representation of $n$ (each
representation should have a leading digit of $1$ except for zero which has the
representation $0$). An example, with $n_1=9$, is ${ 9, 2, 3, 3, 3, ...
}$, or in binary, ${ 1001, 10, 11, 11, 11, ... }$.

#set enum(numbering: "(a)")

+ Find $n_1$ so that $lim_(k -> infinity) n_k = 31$, and calculate $n_2, n_3, ... ,n_(10)$.
+ Prove that, for every choice of $n_1$, the sequence ${ n_k }$ converges.
