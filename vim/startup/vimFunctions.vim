"============== auto reload vimrc
augroup myvimrc
	au!
	au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" Remember cursor position between vim sessions
 autocmd BufReadPost *
             \ if line("'\"") > 0 && line ("'\"") <= line("$") |
             \   exe "normal! g'\"" |
             \ endif
             " center buffer around cursor when opening files
 autocmd BufRead * normal zz


if !exists('*AddTitle')
    function AddTitle()
	    call append(0,"/*=============================================================================")
	    call append(1,"#")
	    call append(2,"# Last modified: ".strftime("%Y-%m-%d %H:%M"))
	    call append(3,"#")
	    call append(4,"# Filename: ".expand("%:t"))
	    call append(5,"#")
	    call append(6,"# Description: ")
	    call append(7,"#")
	    call append(8,"=============================================================================*/")
	    echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
    endf
endif


if !exists('*TitleDet')
    function TitleDet()
	    let n=1
	    while n < 10
		    let line = getline(n)
		    if line =~ '^\#\s*\S*Last\smodified:\S*.*$'
			    call UpdateTitle()
			    return
		    endif
		    let n = n + 1
	    endwhile
	    call AddTitle()
    endfunction
endif

