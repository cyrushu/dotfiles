#!/bin/bash



the_dir=$(dirname $(pwd)/$0)
ln_files=("tmux.conf" "vim" "vimrc" "zsh_env" "zshrc")

for i in ln_files;
do
	#ln -s ${the_dir}/${i} ~/.${i}
	echo ${ln_files}
	echo $the_dir
done


# vim
mkdir -p ~/.vimtmp
mkdir -p ~/.vimswap
mkdir -p ~/.vimundo

# neovim
mkdir -p ~/.config/

# tmux
curl https://raw.githubusercontent.com/gpakosz/.tmux/master/.tmux.conf >> ~/.tmux.conf

# oh-my-zsh
cd $HOME
git clone https://github.com/robbyrussell/oh-my-zsh.git .oh-my-zsh
cd -

# neovim
mkdir -p ~/.local/bin/
curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
chmod u+x nvim.appimage
mv nvim.appimage $HOME/.local/bin/vim
echo "export PATH=$HOME/.local/bin:$PATH" >> .zsh_local
