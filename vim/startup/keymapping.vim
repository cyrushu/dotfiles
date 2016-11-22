"============== Arrow keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"==============
imap <C-CR> <ESC>o
nmap no o<ESC>k
nmap nO O<ESC>j


"============== always centered
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

"quick pairs
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i


"============== personlaized function
"copy to buffer
vmap <C-c> :w! ~/.vimbuffer<CR>
nmap <C-c> :.w! ~/.vimbuffer<CR>
"paste from buffer
map <C-p> :r ~/.vimbuffer<CR>


"============== plugins keymapping


"============== call functions
map <F4> :call TitleDet()<cr>'s
map <F7> :call AddVimComment()<cr>'s
