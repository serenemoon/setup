scriptencoding utf-8
let scriptdir = resolve(expand("<sfile>:p"))->fnamemodify(':p:h') . "/vimscripts"
let scriptfiles = systemlist("ls " . scriptdir)->filter({idx, val -> val =~ "vim$"})
for s in scriptfiles
    exec "source " . scriptdir . "/" . s
endfor

colorscheme molokai



function! OpenNERDTree()
    if empty(expand('%')) || expand("%") =~ "NERD"
        NERDTree
        return
    endif
    exec "NERDTree " . expand("%:p")->resolve()->fnamemodify(":h")
endfunction

nnoremap <F3>   :call OpenNERDTree()<CR>
nnoremap <F2>   :TagbarToggle<CR>

if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif
