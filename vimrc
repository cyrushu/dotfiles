call plug#begin('~/.vim_local/plugged')
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'
Plug 'lervag/vimtex'
Plug 'junegunn/seoul256.vim'
" Git plugins
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Utils
Plug 'bling/vim-airline'
Plug 'scrooloose/nerdcommenter'
Plug 'kien/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'do': './install --all' }
Plug 'kien/rainbow_parentheses.vim'
" Python
"Plug 'python-mode/python-mode'
Plug 'davidhalter/jedi-vim'
" R
" Plug 'jalvesaq/Nvim-R'

" Nvim Plugin
if has('nvim')
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'zchee/deoplete-jedi'
endif

call plug#end()


" ========== vim studying
" folding

" ========== interesting plugin
" tarbar
" taglist
" ctrlp, file searching
" rainbow_parentheses
" UltiSnips
" delimitMate auto (){}""
" TaskList
" fugitive git-plugins
" vim-surround parathensis plugins
" tcomment_vim comment plugins
" fzf

" important plugin
" Shougo/unite.vim
" Shougo/vimproc.vim

"============== variables
"let dotvim="~/dotfiles/vim"

"============== file sharing between nvim and vim
if has('nvim')
	source ~/.vim/startup/settings.nvim
elseif !has('nvim')
	source ~/.vim/startup/settings.vim
endif
"============== Basic settings
set virtualedit=all

"============== Neovim and vim plugin conflict
if has('nvim')
	source ~/.vim/startup/plugin/NERDTree.nvim
elseif !has('nvim')
	source ~/.vim/startup/plugin/NERDTree.nvim
	source ~/.vim/startup/plugin/NERDTree.vim
endif

source ~/.vim/startup/CommonSettings.vim

"============== tmux settings
source ~/.vim/startup/tmux_settings.vim

"============== keymapping
source ~/.vim/startup/functions.vim
source ~/.vim/startup/keymapping.vim
source ~/.vim/startup/plugin/BasicKeymapping.vim

" inside keymapping.vim
" source ~/.vim/startup/plugin/BasicKeymapping.vim
"============== plugins settings
source ~/.vim/startup/plugin/BasicSettings.vim


"============== auto reload vimrc
augroup myvimrc
	au!
	au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" Remember cursor position between vim sessions
 autocmd BufReadPost *
             \ if line("'\"") > 0 && line ("'\"") <= line("$") |
             \   exe "normal! g'\"" |
             \ endif
             " center buffer around cursor when opening files
 autocmd BufRead * normal zz

