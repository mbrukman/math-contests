# Math contests & solutions

I am sharing my solutions to various math contest problems, in case it may be
useful to others who are also interested in solving these problems or
practicing to participate in math competitions.

For the benefit of educators and organizers of math contest practice sessions,
I am including each problem in a separate file, to make it easy to
mix-and-match combinations of problems for student practice sessions.

_**Disclaimer:** these are my personal solutions; they have not been reviewed,
so be careful relying on them as there might be errors. Some of these
competitions have official solutions from the publishers which you may wish to
refer to instead if you're looking for verified solutions._

## Contests

* [Virginia Tech Regional Math Contest](vtrmc)

## Compiling $\LaTeX$ to PDF

First, install required packages for building with LuaLaTeX (tested on Ubuntu
20.04):

```sh
sudo apt install \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-latex-recommended
```

> Note: if the set of packages is out-of-date, check the [workflow]
> ([status][workflow-status]) to see what it's doing, as that is run on every
> pull request, and I aim to keep it working.

In any contest directory directory with `*.tex` files, you can run any of the
following commands (though if I haven't published solutions yet, that specific
command will fail):

* Build both problem set and solutions:

  ```
  make
  ```

* Build just the problem set:

  ```
  make problems
  ```

* Build just the solutions:

  ```
  make solutions
  ```

* Clean up temporary outputs:

  ```
  make clean
  ```

## Contributing

This is a personal learning project; as such, I am not looking to accept any
contributions at this time. If you find an error  or have a suggestion for how
to improve something, please let me know by opening an issue. Thank you!

## License

The contest authors retain copyright of their problem sets.

My original solutions are provided under the Creative Commons Attribution 4.0
International license (CC-BY-4.0); see [`LICENSE.txt`](LICENSE.txt) for
details.

[workflow]: .github/workflows/build.yml
[workflow-status]: https://github.com/mbrukman/math-contests/actions/workflows/build.yml?query=branch%3Amain
