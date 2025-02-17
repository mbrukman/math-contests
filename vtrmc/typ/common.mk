VERB = @
ifeq ($(VERBOSE),1)
	VERB =
endif

TYPST ?= typst

TYPST_DEPS = ../common.typ
MAKEFILE_DEPS = Makefile ../common.mk

all: problems solutions

problems: problems.pdf

PROBLEMS = $(ROOT)/third_party/vtrmc/typ/$(YEAR)/problem?.typ

problems.pdf: problems.typ problem?.typ $(PROBLEMS) $(TYPST_DEPS) $(MAKEFILE_DEPS)
	$(VERB) $(TYPST) --root="$(ROOT)" compile $< $@

solutions: solutions.pdf

solutions.pdf: solutions.typ solution?.typ $(PROBLEMS) $(TYPST_DEPS) $(MAKEFILE_DEPS)
	$(VERB) $(TYPST) --root="$(ROOT)" compile $< $@

clean:
	$(VERB) rm -f problems.pdf solutions.pdf
