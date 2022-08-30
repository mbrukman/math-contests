VERB = @
ifeq ($(VERBOSE),1)
	VERB =
endif

all: problems

PROBLEMS_TEX := $(wildcard problem?.tex)

problems: problems.pdf

problems.pdf: problems.tex $(PROBLEMS_TEX) Makefile
	$(VERB) lualatex --shell-escape $<

clean:
	$(VERB) rm -f *.aux *.dvi *.log *.out *.pdf
