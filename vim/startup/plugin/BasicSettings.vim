"================== seoul256.vim
let g:seoul256_background = 234
colo seoul256

"================== vimtex.vim
let g:vimtex_echo_ignore_wait = 1

"================== air-line
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1


" vnoremap <c-/> :Tcomment<cr>

"================== indentLine
let g:indentLine_setColors = 0
let g:indentLine_char = '|'

"================== vimack
"
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
