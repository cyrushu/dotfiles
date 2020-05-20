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
" let g:ctrlp_working_path_mode = 'ra'
" set wildignore+=*/tmp/*,*.so,*.swp,*.zip
" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" let g:ctrlp_custom_ignore = {
  " \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  " \ 'file': '\v\.(exe|so|dll|pdf|desktop|mp3)$',
  " \ 'link': 'some_bad_symbolic_links',
  " \ }

"============== denite
"
if has('nvim')
  " reset 50% winheight on window resize
  augroup deniteresize
    autocmd!
    autocmd VimResized,VimEnter * call denite#custom#option('default',
	  \'winheight', winheight(0) / 2)
  augroup end

  call denite#custom#option('default', {
	\ 'prompt': '❯'
	\ })

  call denite#custom#var('file_rec', 'command',
	\ ['rg', '--files', '--glob', '!.git', ''])
  call denite#custom#var('grep', 'command', ['rg'])
  call denite#custom#var('grep', 'default_opts',
	\ ['--hidden', '--vimgrep', '--no-heading', '-S'])
  call denite#custom#var('grep', 'recursive_opts', [])
  call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
  call denite#custom#var('grep', 'separator', ['--'])
  call denite#custom#var('grep', 'final_opts', [])
  call denite#custom#map('insert', '<Esc>', '<denite:enter_mode:normal>',
	\'noremap')
  call denite#custom#map('normal', '<Esc>', '<NOP>',
	\'noremap')
  call denite#custom#map('insert', '<C-v>', '<denite:do_action:vsplit>',
	\'noremap')
  call denite#custom#map('normal', '<C-v>', '<denite:do_action:vsplit>',
	\'noremap')
  call denite#custom#map('normal', 'dw', '<denite:delete_word_after_caret>',
	\'noremap')

  call denite#custom#map('insert', '<C-j>', '<denite:move_to_next_line>', 'noremap')
  call denite#custom#map('insert', '<C-k>', '<denite:move_to_previous_line>', 'noremap')
  nnoremap <C-p> :<C-u>Denite file_rec<CR>
  nnoremap <leader>s :<C-u>Denite buffer<CR>
  nnoremap <leader><Space>s :<C-u>DeniteBufferDir buffer<CR>
  nnoremap <leader>8 :<C-u>DeniteCursorWord grep:. -mode=normal<CR>
  nnoremap <leader>/ :<C-u>Denite grep:. -mode=normal<CR>
  nnoremap <leader><Space>/ :<C-u>DeniteBufferDir grep:. -mode=normal<CR>
  nnoremap <leader>d :<C-u>DeniteBufferDir file_rec<CR>
endif


"============== NERDTree settings, only for vim
if !has('nvim')
    let NERDTreeShowBookmarks=1
    let NERDTreeWinSize=37
    let NERDTreeCascadeSingleChildDir=0
    let NERDTreeCascadeOpenSingleChildDir=0
endif


"============== jedi-vim
"let g:jedi#completions_enabled = 0

"============== fzf


let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:fzf_action = { 'ctrl-t': 'tab split', 'ctrl-x': 'split', 'ctrl-v': 'vsplit' }
let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:fzf_colors = { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" command! -bang -complete=dir -nargs=* LS
    " \ call fzf#run(fzf#wrap("ls",{'source': 'ls', 'dir': <q-args>}, <bang>0))

" command! -bang -nargs=* Rg
  " \ call fzf#run(fzf#wrap({"source":"rg --column --line-number --no-heading --color=always --smart-case ".fzf#shellescape(<q-args>),'options': '--ansi'}, <bang>0))


