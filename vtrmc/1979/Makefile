VERB = @
ifeq ($(VERBOSE),1)
	VERB =
endif

all: problems solutions

PROBLEMS_TEX := $(wildcard problem?.tex)

problems: problems.pdf

problems.pdf: problems.tex $(PROBLEMS_TEX) Makefile
	$(VERB) lualatex --shell-escape $<

SOLUTIONS_TEX := $(wildcard solution?.tex)

solutions: solutions.pdf

solutions.pdf: solutions.tex $(PROBLEMS_TEX) $(SOLUTIONS_TEX) Makefile
	$(VERB) lualatex --shell-escape $<

clean:
	$(VERB) rm -f *.aux *.dvi *.log *.out *.pdf
