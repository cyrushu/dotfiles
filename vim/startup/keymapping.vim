"============== Clearing mapping
"unmap < <Nop>

"============== Arrow keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"============== inserting
imap <C-CR> <ESC>o
nmap no o<ESC>k
nmap nO O<ESC>j
"nmap <C-b> mqI<Tab><ESC>`q
no <C-b> <Nop>
vmap <C-b> mqI<Tab><ESC>`q

"============== Deleting
nnoremap x "_x


"============== Leader and leader command
let mapleader = ","
nmap <leader>w :w<CR>

"============== Buffers
nnoremap <F10> :buffers<CR>:buffer<Space>
nnoremap <C-w> :bd<CR>
nnoremap <A-1> :b1<CR>
nnoremap <A-2> :b2<CR>
nnoremap <A-3> :b3<CR>
nnoremap <A-4> :b4<CR>
nnoremap <A-5> :b5<CR>
nnoremap <A-6> :b6<CR>
nnoremap <A-7> :b7<CR>




"============== always centered
nmap G Gzz
nmap L Lzz
nmap H Hzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

"============= quick pairs
vmap [ di[]<ESC>hp
vmap ' di''<ESC>hp
vmap " di""<ESC>hp
vmap < di<><ESC>hp
nmap <C-/> I#<ESC>


"============== personlaized function
"copy to buffer
vmap <C-c> :w! ~/.vimbuffer<CR>
nmap <C-c> :.w! ~/.vimbuffer<CR>
"paste from buffer
map <C-p> :r ~/.vimbuffer<CR>


"============== plugins keymapping
source ~/.vim/startup/plugin/BasicKeymapping.vim

"============== call functions
nnoremap <F7> O"==============<C-[>
map <F6> :call TitleDet()<cr>'s
