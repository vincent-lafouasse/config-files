TO_STOW = nvim zsh git

all: stow

stow:
	stow $(TO_STOW)

.PHONY: all stow
