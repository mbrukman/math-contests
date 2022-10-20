VERB = @
ifeq ($(VERBOSE),1)
	VERB =
endif

all: problems solutions

COMMON_TEX = ../common.tex

PROBLEMS_TEX := $(wildcard ../../third_party/vtrmc/1980/problem?.tex) $(COMMON_TEX)

problems: problems.pdf

problems.pdf: problems.tex $(PROBLEMS_TEX) Makefile
	$(VERB) lualatex --shell-escape $<

SOLUTIONS_TEX := $(wildcard solution?.tex) $(COMMON_TEX) $(COMMON_TEX) ../solutions-disclaimer.tex

solutions: solutions.pdf

solutions.pdf: solutions.tex $(PROBLEMS_TEX) $(SOLUTIONS_TEX) Makefile
	$(VERB) lualatex --shell-escape $<

clean:
	$(VERB) rm -f *.aux *.dvi *.log *.out *.pdf
