"================================================================
"========================Plugin keymapping=======================
"================================================================



"============== NvimTree keymapping
no <C-\> :NvimTreeToggle<CR>

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


