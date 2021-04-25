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
	apt install powerline-gitstatus
fi


the_dir=$(dirname $(pwd)/$0)

# zsh
if [ ! -f ~/.zshrc ];then
	ln -s ${the_dir}/zsh/zshrc ~/.zshrc
	ln -s ${the_dir}/zsh/zsh_env ~/.zsh_env
	ln -s ${the_dir}/zsh/antigenrc ~/.antigenrc
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
# vim 
mkdir -p ~/.vimtmp
mkdir -p ~/.vimswap
mkdir -p ~/.vimundo
mkdir -p ~/.config
mkdir -p ~/.local/bin
ln -s ${the_dir}/vim/vim/ $HOME/.vim
ln -s ${the_dir}/vim/vimrc $HOME/.vimrc
ln -s ${the_dir}/vim/nvim $HOME/.config/nvim


if [ -f ~/.local/bin/vim ];then
	echo "~/.local/bin/vim exists" 
else
	if [ "$machine" = "Linux" ]; then
		curl -L https://github.com/neovim/neovim/releases/download/stable/nvim.appimage -o /tmp/nvim.appimage
		mkdir -p $HOME/.vim_local
		chmod u+x /tmp/nvim.appimage
		mv /tmp/nvim.appimage $HOME/.local/bin/vim
		echo "let g:python3_host_prog = '$(which python3)'" >> ~/.vim_local/nvim_local.vim
		pip3 install --user pynvim
		# pip2 deprecated
		# echo "let g:python_host_prog = '$(which python2)'" >> ~/.vim_local/nvim_local.vim
		# pip2 install --user neovim
		vim +'PlugUpgrade --sync' +qa
		vim +'PlugUpdate --sync' +qa
	else
		echo "appimage is only working for Linux system, please find https://github.com/neovim/neovim/wiki/Installing-Neovim for Neovim installation" 
	fi
fi

# nvim LSP support
# language server configuration
pip3 install --upgrade 'python-language-server[all]'

# git configs
if [ -f ~/.gitconfig && ! -L ~/.gitconfig ];then
	if [ ! -f ~/.gitconfig_local ]; then
		# global git ignore
		mv ~/.gitconfig ~/.gitconfig_local
		ln -s ${the_dir}/git/gitconfig ~/.gitconfig
	else
		echo "~/.gitconfig to ~/.gitconfig_local failed"
	fi
else
	ln -s ${the_dir}/git/gitconfig ~/.gitconfig
fi
ln -s ${the_dir}/git/gitignore ~/.gitignore
git config --global core.excludesFile ~/.gitignore
