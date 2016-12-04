"============= Pathogen
execute pathogen#infect()
filetype plugin indent on
syntax on

" powerline
" fugitive git-plugins


"============== settings

source ~/.vim/startup/settings.vim
"============== tmux settings
source ~/.vim/startup/tmux_settings.vim
"============== keymapping 
source ~/.vim/startup/functions.vim
source ~/.vim/startup/keymapping.vim
"============== plugins settings
source ~/.vim/startup/plugin/NERDTree.vim
source ~/.vim/startup/plugin/vim-expand-region.vim
source ~/.vim/startup/plugin/vim-multiple-cursors.vim
source ~/.vim/startup/plugin/vim-powerline.vim


"============== auto reload vimrc
augroup myvimrc
	au!
	au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

