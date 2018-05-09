"================ common config
set path+=**
set cursorline
set virtualedit=all

"============== deoplete
let g:deoplete#enable_at_startup = 1


"============== fakeclip
let g:vim_fakeclip_tmux_plus=1 

"============== vim ctrl in tmux
if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on"
        execute "set <xUp>=\e[1;*A"
        execute "set <xDown>=\e[1;*B"
        execute "set <xRight>=\e[1;*C"
        execute "set <xLeft>=\e[1;*D"
endif

"================== seoul256.vim
let g:seoul256_background = 234
colo seoul256

"================== vimtex.vim
let g:vimtex_echo_ignore_wait = 1

"================== air-line
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1


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

"============== ctrlp
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|pdf|desktop|mp3)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }


"============== NERDTree settings, only for vim
if !has('nvim')
    let NERDTreeShowBookmarks=1
    let NERDTreeWinSize=37
    let NERDTreeCascadeSingleChildDir=0
    let NERDTreeCascadeOpenSingleChildDir=0
endif

"============== vim-autoformat
let g:formatter_yapf_style = 'pep8'
let g:formatterpath = ['/home/huyl/.local/bin']
