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

mkdir -p ~/.local/bin/
curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
chmod u+x nvim.appimage
mv nvim.appimage $HOME/.local/bin/vim
echo "export PATH=$HOME/.local/bin:$PATH" >> .zsh_local
