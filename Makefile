TO_STOW = nvim zsh git tmux kitty

all: stow

stow:
	stow $(TO_STOW)

.PHONY: all stow
