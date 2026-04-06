VERB = @
ifeq ($(VERBOSE),1)
	VERB =
endif

YEARS := $(wildcard [1-9][0-9][0-9][0-9])

.PHONY: all
all:
	$(VERB) for year in $(YEARS) ; do \
			make -C $$year all ; \
		done

.PHONY: clean
clean:
	$(VERB) for year in $(YEARS) ; do \
			make -C $$year clean ; \
		done
