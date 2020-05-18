"============== airline extensions
let airline#extensions#ale#error_symbol = 'E'
let airline#extensions#ale#warning_symbol = 'W'

"============== ale basic
let g:ale_lint_on_enter = 0
let g:ale_completion_enabled = 0
" let g:ale_set_balloons = 1
let g:ale_list_window_size = 5
let g:ale_command_wrapper = 'nice -n5 %*'
let b:ale_linters = {'python': ["pyls",'pylint']}
let g:ale_fixers = {'python': ['yapf']}

"============== ale lint frequency
let g:ale_lint_delay = 10
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
" let g:ale_lint_on_text_changed = 'always'

"============== msg_format
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = "◉"
let g:ale_sign_warning = "◉"

highlight ALEErrorSign ctermfg=9 guifg=#C30500 guibg=#F5F5F5
highlight ALEWarningSign ctermfg=11 guifg=#ED6237 guibg=#F5F5F5
highlight ALEError ctermbg=none cterm=none
highlight ALEWarning ctermbg=none cterm=none

"============== python lint
" let b:ale_python_pyls_executable = '/home/yilang/software/anaconda3/bin/pyls'
let b:ale_python_pyls_use_global = 1               
let b:ale_python_auto_pipenv = 0
" let b:ale_python_pylint_executeable = '/home/yilang/software/anaconda3/bin/pylint'
" let b:ale_python_pylint_use_global = 1               

"============== shortcut
nnoremap <silent> gd :ALEGoToDefinition<CR>
nnoremap <silent> <F3> :ALEFindReferences<CR>
nnoremap <silent> <F5> :ALELint<CR>
nnoremap <silent> <F12> :ALEFix<CR>


