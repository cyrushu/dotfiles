"Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" NERDTree
" Easy motion
" powerline
" fugitive git-plugins


"============== settings

source ~/.vim/startup/settings.vim
"============== tmux settings
source ~/.vim/startup/tmux_settings.vim
"============== keymapping 
source ~/.vim/startup/functions.vim
source ~/.vim/startup/keymapping.vim
"==============

"============== auto reload vimrc
augroup myvimrc
	au!
	au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

