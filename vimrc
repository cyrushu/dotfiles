call plug#begin('~/.vim_local/plugged')
if has('nvim')
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'zchee/deoplete-jedi'
	Plug 'wellle/tmux-complete.vim'
else
	Plug 'Shougo/deoplete.nvim'
	Plug 'roxma/nvim-yarp'
	Plug 'roxma/vim-hug-neovim-rpc'
endif

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

" Clipboard
Plug 'cazador481/fakeclip.neovim'

Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'



call plug#end()


" ========== vim studying
" folding

" ========== interesting plugin
" Plug 'Shougo/neosnippet'
" Plug 'Shougo/neosnippet-snippets'
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


"============== file sharing between nvim and vim
if has('nvim')
	source ~/.vim/startup/settings.nvim
elseif !has('nvim')
	source ~/.vim/startup/settings.vim
endif
source ~/.vim/startup/CommonSettings.vim
source ~/.vim/startup/CommonKeymapping.vim
source ~/.vim/startup/vimFunctions.vim