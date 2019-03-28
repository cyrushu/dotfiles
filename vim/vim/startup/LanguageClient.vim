"============== LanguageClient
set hidden

let g:LanguageClient_autoStart = 1  
let g:LanguageClient_useVirtualText = 0

let g:LanguageClient_serverCommands = {
\ 'cpp': ['/home/yilang/software/cquery/build/release/bin/cquery', 
\ '--language-server',
\ '--log-file=/tmp/cq.log', 
\ '--init={"cacheDirectory":"/tmp/cquery/"}'],
\ 'python':['/home/yilang/software/anaconda3/bin/pyls' ], 
\ }

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <leader>f :call LanguageClient#textDocument_definition({'gotoCmd': 'vsplit'})<CR>
nnoremap <silent> <F12> :call LanguageClient#textDocument_formatting()<CR>
" nnoremap <silent> <F2>:call LanguageClient#explainErrorAtPoint<CR>
 

autocmd FileType python nmap gf :call LanguageClient#textDocument_definition({'gotoCmd': 'split'})<CR>
