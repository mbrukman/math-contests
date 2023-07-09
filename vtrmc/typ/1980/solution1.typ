#let astr = $ast.op$

*Part (a)*

Use the given equation, substitute, and simplify:

$
(w astr x) astr (y astr z) & = w astr z & quad "given" \
(a astr b) astr (a astr b) & = a astr b & quad "substitute" w = a, x = b, y = a, z = b \
                  c astr c & = c        & quad "simplify using" a astr b = c \
$

This proves that if $a astr b = c$, then $c astr c = c$. $quad qed$

*Part (b)*

Use the given equation with some substitutions and utilize the result from part
1:

$
(w astr x) astr (y astr z) & = w astr z & quad "given" \
(c astr c) astr (x astr x) & = c astr x & quad "substitute" w = c, x = c, y = x, z = x \
         c astr (x astr x) & = c astr x & quad "simplify using" c astr c = c "rom part (a)" \
(a astr b) astr (x astr x) & = c astr x & quad "expand using" a astr b = c \
                  a astr x & = c astr x & quad "simplify using given equation" \
$

This proves that if $a astr b = c$, then $a astr x = c astr x$ for all $x in
S$. $quad qed$
