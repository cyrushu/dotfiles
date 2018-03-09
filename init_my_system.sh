#!/bin/bash

the_dir=$(dirname $(pwd)/$0)

ln_files=("git-completion.bash" "tmux.conf" "vim" "vimrc" "zsh_env" "zshrc")

for i in ln_files;
do
	ln -s ${the_dir}/${i} ~/.${i}
done

cd ~
# vim
mkdir -p ~/.vimtmp
mkdir -p ~/.vimswap
mkdir -p ~/.vimundo

# neovim
mkdir -p ~/.config/
ln -s ${the_dir}/nvim ~/.config/
