# Math contests & solutions

[![LaTeX][latex-ci-badge]][latex-ci-url]
[![Typst][typst-ci-badge]][typst-ci-url]

[latex-ci-badge]: https://github.com/mbrukman/math-contests/actions/workflows/latex.yaml/badge.svg?query=branch%3Amain
[latex-ci-url]: https://github.com/mbrukman/math-contests/actions/workflows/latex.yaml?query=branch%3Amain
[typst-ci-badge]: https://github.com/mbrukman/math-contests/actions/workflows/typst.yaml/badge.svg?query=branch%3Amain
[typst-ci-url]: https://github.com/mbrukman/math-contests/actions/workflows/typst.yaml?query=branch%3Amain

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

## Install LuaLaTeX

Install required packages for building with LuaLaTeX; see our [LaTeX
workflow][latex-workflow] ([status][latex-workflow-status]) to see how we
install it.

## Install Typst

[Install Typst][install-typst] as appropriate for your platform. For
reference, you can see how we install it in the [Typst workflow][typst-workflow].

> [!NOTE]
> The files in this repository are currently compatible with the Typst version
> listed in the [Typst workflow][typst-workflow]. Assuming our [build is
> green][typst-workflow-status], if you have trouble building the files, please
> make sure you're using the same version as we are.

## Building PDFs

In any contest directory (outside of `third_party`) with `*.tex` or `*.typ`
files, you can run any of the following commands:

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

[install-typst]: https://github.com/typst/typst?tab=readme-ov-file#installation
[latex-workflow]: .github/workflows/latex.yaml
[latex-workflow-status]: https://github.com/mbrukman/math-contests/actions/workflows/latex.yaml?query=branch%3Amain
[typst-workflow]: .github/workflows/typst.yaml
[typst-workflow-status]: https://github.com/mbrukman/math-contests/actions/workflows/typst.yaml?query=branch%3Amain
