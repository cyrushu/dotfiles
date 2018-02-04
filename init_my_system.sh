#!/bin/bash

for i in "git-completion.bash" "tmux.conf" "vim" "vimrc" "zsh_env" "zshrc";
do
	ln -s $(pwd)/$i ~/.$i
done

cd ~
mkdir .vimtmp
mkdir .vimswap
mkdir .vimundo
