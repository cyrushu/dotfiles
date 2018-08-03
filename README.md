Dotfiles
==========

Descriptions
---------
This is personal dotfiles

Please notice that any script is not tested. 

There are configurations listed:
1. zsh
	softlink all the configurations into ~/
	- zshrc -> ~/.zshrc
	- zsh\_env -> ~/.zsh\_env
	- touch ~/.zsh\_local

2. vim/neovim
	softlink all the configurations	
	- vimrc -> ~/.vimrc
	- vim -> ~/.vim
	- nvim -> ~/.config/nvim

3. tmux
	softlink the tmux folder items( tmux.conf, tmux ) into ~/
	curl  https://raw.githubusercontent.com/gpakosz/.tmux/master/.tmux.conf -o ~/.tmux.conf
	- tmux.conf -> ~/.tmux.conf.local
