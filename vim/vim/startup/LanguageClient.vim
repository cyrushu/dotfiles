"============== LanguageClient
set hidden

let g:LanguageClient_serverCommands = {
\ 'cpp': ['/home/yilang/software/cquery/build/release/bin/cquery', 
\ '--log-file=/tmp/cq.log', 
\ '--init={"cacheDirectory":"/var/cquery/"}'],
\ 'python':['/home/yilang/software/anaconda3/bin/pyls' ], 
\ }

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F12> :call LanguageClient#textDocument_formatting()<CR>

autocmd FileType python nmap gf :call LanguageClient#textDocument_definition()<CR>
