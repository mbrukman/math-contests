VERB = @
ifeq ($(VERBOSE),1)
	VERB =
endif

DIRS = tex typ

.PHONY: clean
clean:
	$(VERB) for dir in $(DIRS) ; do \
			make -C $$dir clean ; \
		done
