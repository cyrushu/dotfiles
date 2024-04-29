"============== Arrow keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>
no <C-Space> <Nop>
noremap <F1> <Esc>

"============== inserting
imap <C-CR> <ESC>o
nmap no o<ESC>k
nmap nO O<ESC>j
no <C-b> <Nop>
vmap <C-b> mqI<Tab><ESC>`q

"============== Deleting
nnoremap x "_x
vnoremap x "_x
" vnoremap p "_xP
imap <C-BS> <C-W>

"============== Searching
vnoremap <A-f> "iy/<C-r>i<CR>


"============== Leader and leader command
let mapleader = ","
nmap <leader>w :w<CR>

"============== Buffers
nnoremap <F10> :buffers<CR>:buffer<Space>
nnoremap <A-1> :b1<CR>
nnoremap <A-2> :b2<CR>
nnoremap <A-3> :b3<CR>
nnoremap <A-4> :b4<CR>
nnoremap <A-5> :b5<CR>
nnoremap <A-6> :b6<CR>
nnoremap <A-7> :b7<CR>

nnoremap <C-w> :bd<CR>


"============== always centered
nmap G Gzz
nmap L Lzz
nmap H Hzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz


"============== folding
nnoremap <Tab> za


"============== personlaized function
"copy to buffer
vmap <C-c> :w! ~/.vimbuffer<CR>
nmap <C-c> :.w! ~/.vimbuffer<CR>
"paste from buffer
nnoremap <A-p> :r ~/.vimbuffer<CR>
nnoremap <F4> :noh<CR>



"============== call functions
nnoremap <F7> O"==============<C-[>
nnoremap <F6> :call AddTitle()<cr>'s
nnoremap <C-F6> :call TitleDet()<cr>'s
