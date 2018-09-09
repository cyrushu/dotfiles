#!/bin/bash

# find the OS you are working on
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac
echo "current machine is ${machine}"

the_dir=$(dirname $(pwd)/$0)

# zsh
if [ ! -f ~/.zshrc ];then
	ln -s ${the_dir}/zsh/zshrc ~/.zshrc
	ln -s ${the_dir}/zsh/zsh_env ~/.zsh_env
else
	echo "zshrc exists already"
fi

if [ -f ~/.zsh_local ];then
	echo "~/.zsh_local already exist. please write any local configurations into this file"
else
	echo "# please write local configuration into .zsh_local file" | tee ~/.zsh_local
	echo "export PATH=$HOME/.local/bin:$PATH" >> ~/.zsh_local
fi

# tmux
if [ ! -f ~/.tmux.conf ];then
	curl -L https://raw.githubusercontent.com/gpakosz/.tmux/master/.tmux.conf -o ~/.tmux.conf
	ln -s ${the_dir}/tmux/tmux.conf ~/.tmux.conf.local
	mkdir -p ~/.tmux/plugins
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
else
	echo "tmux conf exists"
fi


# vim & neovim
mkdir -p ~/.vimtmp
mkdir -p ~/.vimswap
mkdir -p ~/.vimundo
mkdir -p ~/.config/
ln -s ${the_dir}/vim/vim/ ~/.vim
ln -s ${the_dir}/vim/vimrc ~/.vimrc
ln -s ${the_dir}/vim/nvim ~/.config/nvim
mkdir -p ~/.local/bin/


if [ -f ~/.local/bin/vim ];then
	echo "~/.local/bin/vim exists" 
else
	if [ "$machine" = "Linux" ]; then
		curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
		chmod u+x nvim.appimage
		mv nvim.appimage $HOME/.local/bin/vim
	else
		echo "appimage is only working for Linux system, please find https://github.com/neovim/neovim/wiki/Installing-Neovim for Neovim installation" 
	fi
fi

