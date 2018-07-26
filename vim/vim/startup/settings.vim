set formatoptions-=cro
set clipboard=unnamed
set history =50
set ruler
set incsearch
set showcmd
set hls
set nobackup
set autoindent
set smartindent
syntax on
set encoding=utf8
set wildmenu
set mouse=a

" settings on the numbar
set number
set relativenumber

" set typing rules
set softtabstop=4

" set temp dir into /.vimtmp
set bdir=~/.vimtmp

" set undofile and undodir

set undofile
set undodir-=.
set undodir+=~/.vimundo

set directory=$HOME/.vimswap
