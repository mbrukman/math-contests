VERB = @
ifeq ($(VERBOSE),1)
	VERB =
endif

TYPST ?= typst

all: problems solutions

problems: problems.pdf

PROBLEMS = $(ROOT)/third_party/vtrmc/typ/$(YEAR)/problem?.typ

problems.pdf: problems.typ problem?.typ Makefile $(PROBLEMS)
	$(VERB) $(TYPST) --root="$(ROOT)" compile $< $@

solutions: solutions.pdf

solutions.pdf: solutions.typ solution?.typ Makefile $(PROBLEMS)
	$(VERB) $(TYPST) --root="$(ROOT)" compile $< $@

clean:
	$(VERB) rm -f problems.pdf solutions.pdf
