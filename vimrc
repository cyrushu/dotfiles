call plug#begin('~/.vim_local/plugged')
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdtree'
Plug 'Lokaltog/vim-powerline'
Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'
Plug 'lervag/vimtex'
Plug 'junegunn/seoul256.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
call plug#end()


" ========== interesting plugin
" tarbar
" taglist
" ctrlp, file searching
" rainbow_parentheses
" UltiSnips
" delimitMate auto (){}""
" TaskList
" fugitive git-plugins


"============== variables
let dotvim="~/dotfiles/vim"

"============== file sharing between nvim and vim
if has('nvim')
	source ~/.vim/startup/settings.nvim
elseif !has('nvim')
	source ~/.vim/startup/settings.vim
endif



"============== tmux settings
source ~/.vim/startup/tmux_settings.vim
"============== keymapping
source ~/.vim/startup/functions.vim
source ~/.vim/startup/keymapping.vim
"============== plugins settings
source ~/.vim/startup/plugin/Basic.vim
source ~/.vim/startup/plugin/vim-expand-region.vim
source ~/.vim/startup/plugin/vim-multiple-cursors.vim
source ~/.vim/startup/plugin/vim-powerline.vim
source ~/.vim/startup/plugin/indentLine.vim


if has('nvim')
	source ~/.vim/startup/plugin/NERDTree.nvim
elseif !has('nvim')
	source ~/.vim/startup/plugin/NERDTree.nvim
	source ~/.vim/startup/plugin/NERDTree.vim
endif



"============== auto reload vimrc
augroup myvimrc
	au!
	au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END
