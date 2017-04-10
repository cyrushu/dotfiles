#!/bin/bash

for i in git-completion.bash tmux.conf vim vimrc zsh_env zshrc;
do
    ln -s ~/dotfiles/$i ~/.$i
done
