TO_STOW = nvim zsh git tmux

all: stow

stow:
	stow $(TO_STOW)

.PHONY: all stow
