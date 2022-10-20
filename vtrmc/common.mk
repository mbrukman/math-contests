VERB = @
ifeq ($(VERBOSE),1)
	VERB =
endif

all: problems solutions

COMMON_TEX = $(ROOT)/vtrmc/common.tex

PROBLEMS_TEX := $(wildcard $(ROOT)/third_party/vtrmc/$(YEAR)/problem?.tex) $(COMMON_TEX)

problems: problems.pdf

problems.pdf: problems.tex $(PROBLEMS_TEX) Makefile
	$(VERB) lualatex --shell-escape $<

SOLUTIONS_TEX := $(wildcard solution?.tex) $(COMMON_TEX) $(COMMON_TEX) $(ROOT)/vtrmc/solutions-disclaimer.tex

solutions: solutions.pdf

solutions.pdf: solutions.tex $(PROBLEMS_TEX) $(SOLUTIONS_TEX) Makefile
	$(VERB) lualatex --shell-escape $<

clean:
	$(VERB) rm -f *.aux *.dvi *.log *.out *.pdf
