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

if [ $(lsb_release -s -i) == "Ubuntu" ];
then
	apt install powerline-gitstatus libfuse2
fi


DOTDIR=$(dirname $(pwd)/$0)

# zsh
if [ ! -f ~/.zshrc ];then
	ln -s ${DOTDIR}/zsh/zshrc ~/.zshrc
	ln -s ${DOTDIR}/zsh/zsh_env ~/.zsh_env
	ln -s ${DOTDIR}/zsh/antigenrc ~/.antigenrc
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
	ln -s ${DOTDIR}/tmux/tmux.conf ~/.tmux.conf.local
	mkdir -p ~/.tmux/plugins
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
else
	echo "tmux conf exists"
fi


# vim & neovim
# vim 
mkdir -p ~/.config
mkdir -p ~/.local/bin
ln -s ${DOTDIR}/vim/vim/ $HOME/.vim
ln -s ${DOTDIR}/vim/vimrc $HOME/.vimrc
ln -s ${DOTDIR}/vim/nvim $HOME/.config/nvim


if [ -f ~/.local/bin/vim ];then
	echo "~/.local/bin/vim exists" 
else
	if [ "$machine" = "Linux" ]; then
		curl -L https://github.com/neovim/neovim/releases/download/stable/nvim.appimage -o /tmp/nvim.appimage
		chmod u+x /tmp/nvim.appimage
		mv /tmp/nvim.appimage $HOME/.local/bin/vim
		pip3 install --user pynvim
		# nvim LSP support
		# language server configuration 
		pip3 install --upgrade 'python-language-server[all]'
	else
		echo "appimage is only working for Linux system, please find https://github.com/neovim/neovim/wiki/Installing-Neovim for Neovim installation" 
	fi
fi


# git configs
if [ -f ~/.gitconfig && ! -L ~/.gitconfig ];then
	if [ ! -f ~/.gitconfig_local ]; then
		# global git ignore
		mv ~/.gitconfig ~/.gitconfig_local
		ln -s ${DOTDIR}/git/gitconfig ~/.gitconfig
	else
		echo "~/.gitconfig to ~/.gitconfig_local failed"
	fi
else
	ln -s ${DOTDIR}/git/gitconfig ~/.gitconfig
fi
ln -s ${DOTDIR}/git/gitignore ~/.gitignore
git config --global core.excludesFile ~/.gitignore
