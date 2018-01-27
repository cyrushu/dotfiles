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
no <C-b> <Nop>
vmap <C-b> mqI<Tab><ESC>`q

"============== Deleting
nnoremap x "_x
imap <C-BS> <C-W>


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

"nnoremap <C-w> :bd<CR>


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


"============= quick pairs
" nmap <C-/> I#<ESC>
"########################replace it by Tcomment or nerdcommenter


"============== personlaized function
"copy to buffer
vmap <C-c> :w! ~/.vimbuffer<CR>
nmap <C-c> :.w! ~/.vimbuffer<CR>
"paste from buffer
nnoremap <A-p> :r ~/.vimbuffer<CR>



"============== call functions
nnoremap <F7> O"==============<C-[>
map <F6> :call TitleDet()<cr>'s

"================================================================
"========================Plugin keymapping=======================
"================================================================

"============== UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


"============== NERDTree keymapping
no <C-\> :NERDTreeToggle<CR>
no <C-m> :NERDTreeFromBookmark<space>
no <CR> <Nop>

"======== vim-expand-region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

"======== vim-multiple-cursors
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

"======== easymotion
no <C-f> <Nop>
map <C-f> <Plug>(easymotion-bd-f)


"======== vimack
nmap <leader>a :tab split<CR>:Ack ""<Left>
nmap <leader>A :tab split<CR>:Ack <C-r><C-w><CR>


"============== ctrlp
let g:ctrlp_map = '<c-p>'
nmap <leader>p :CtrlP<CR>


"============== nerdcommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
if has('win32')
  nmap <C-/> <leader>c<Space>
  vmap <C-/> <leader>c<Space>
else
  nmap <C-_> <leader>c<Space>
  vmap <C-_> <leader>c<Space>
  " imap <C-_> <C-[><leader>c<Space>
endif
