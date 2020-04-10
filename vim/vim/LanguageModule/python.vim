set foldenable
set foldmethod=syntax
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab 
let g:pydocstring_doq_path = '/home/yilang/software/anaconda3/bin/doq'


autocmd FileType python nmap gf :ALEGoToDefinition<CR>
