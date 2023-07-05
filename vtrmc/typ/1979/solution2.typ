#let circ = $circle.stroked.tiny$
#let boxed(content) = $#box(stroke: 1pt, outset: 2pt, baseline: -1pt, content)$

(a) Is $circ$ associative on $S$?

Let's consider the given equation in (ii) and substitute $b = e$:

$
(a circ b) circ (c circ d) & = (a circ c) circ (b circ d) & "given" \
(a circ e) circ (c circ d) & = (a circ c) circ (e circ d) & "substitute" b = e \
         a circ (c circ d) & = (a circ c) circ d          & "given:" x circ e = e circ x = x \
$

This proves that $#boxed([$circ$ is associative on $S$])$ . $qed$

Alternatively, we can set $c = e$ with similar results:

$
(a circ b) circ (c circ d) & = (a circ c) circ (b circ d) & "given" \
(a circ b) circ (e circ d) & = (a circ e) circ (b circ d) & "substitute" c = e \
         (a circ b) circ d & = a circ (b circ d)          & "given:" x circ e = e circ x = x \
$

This proves that $#boxed([$circ$ is associative on $S$])$ . $qed$

However, we can't prove the same result if we set $a = e$ or $d = e$, why is
that? Exercise for the reader.

(b) Is $circ$ commutative on $S$?

For this case, let's take the same given equation in (ii) and consider the case
where $a = e$ and $d = e$:

$
(a circ b) circ (c circ d) & = (a circ c) circ (b circ d) & "given" \
(e circ b) circ (c circ e) & = (e circ c) circ (b circ e) & "substitute" a = e, d = e \
                  b circ c & = c circ b                   & "given:" x circ e = e circ x = x \
$

This proves that $#boxed([$circ$ is commutative on $S$])$ . $qed$
