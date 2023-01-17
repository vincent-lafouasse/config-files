TO_STOW = $(shell ls | grep -v Makefile)

stow:
	stow $(TO_STOW)

.PHONY: stow
