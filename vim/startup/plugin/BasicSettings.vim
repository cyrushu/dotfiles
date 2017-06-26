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


"============== rainbow Parentheses

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16

let g:rbpt_loadcmd_toggle = 0
