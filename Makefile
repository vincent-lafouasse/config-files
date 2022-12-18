TO_STOW = nvim zsh git

all: stow

stow:
	stow $(TO_STOW)

nvim_e:
	nvim nvim/.config/nvim/init.vim

git_e:
	nvim git/.gitconfig

zsh_e:
	nvim zsh/.zshrc


.PHONY: all stow nvim_e git_e zsh_e
