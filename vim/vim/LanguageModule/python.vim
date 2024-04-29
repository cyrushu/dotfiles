set foldenable
set foldmethod=syntax
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab 
let g:pydocstring_doq_path = '/home/yilang/software/miniconda3/bin/doq'

" put it into vim_local
" let b:ale_python_pyls_executable = '/home/yilang/software/anaconda3/bin/pyls'
let b:ale_python_pyls_use_global = 0
let b:ale_python_auto_pipenv = 0
" do not auto insert
set completeopt+=noinsert
" let b:ale_python_pylint_executeable = '/home/yilang/software/anaconda3/bin/pylint'
" let b:ale_python_pylint_use_global = 1               
"
"============== pydocstring
nmap <silent> <F3> <Plug>(pydocstring)

autocmd FileType python nmap gf :ALEGoToDefinition<CR>
