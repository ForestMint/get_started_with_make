prefix_before_slash = $(firstword $(subst /, ,$1))

INPUT := tyty/bar/baz

RESULT := $(call prefix_before_slash,$(INPUT))

tokenize_string:
	@echo $(RESULT)
