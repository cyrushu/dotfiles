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
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'do': './install --all' }
Plug 'kien/rainbow_parentheses.vim'
" Python
"Plug 'python-mode/python-mode'
Plug 'davidhalter/jedi-vim'

" R
" Plug 'jalvesaq/Nvim-R'

" Clang
Plug 'zchee/deoplete-clang'

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
" UltiSnips
" delimitMate auto (){}""
" TaskList
" fugitive git-plugins
" vim-surround parathensis plugins
" tcomment_vim comment plugins

" important plugin
" Shougo/unite.vim
" Shougo/vimproc.vim


"============== sometime you need to specify python for neovim, please try to
"============== modify the python location. you could also write them into the
"============== nvim_local.vim file

if has('nvim')
	if filereadable("~/.vim_local/nvim_local.vim")
		source ~/.vim_local/nvim_local.vim
		" let g:python_host_prog = '~/envs/neovim/bin/python'
		" let g:python3_host_prog = '~/envs/neovim3/bin/python'
	endif
endif

"============== file sharing between nvim and vim
if has('nvim')
	source ~/.vim/startup/settings.nvim
elseif !has('nvim')
	source ~/.vim/startup/settings.vim
endif
source ~/.vim/startup/CommonSettings.vim
source ~/.vim/startup/CommonKeymapping.vim
source ~/.vim/startup/vimFunctions.vim

