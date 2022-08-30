if exists("s:loaded")
    finish
endif
let s:loaded = 1

" if cursor in nerdtree window, close it!
" else open/jump to nerdtree window, and switch root
function s:toggle_nerdtree_window(cvs)
    if empty(expand("%")) " not inside a buffer associated with file
        echomsg "Not In File Buffer, NERDTreeCWD"
        exec "NERDTreeCWD"
        return
    endif
    if !exists('b:NERDTree')
        " we are in non-nerdtree window
        if a:cvs == v:true
            exec "NERDTreeVCS " . resolve(expand("%:p:h"))
        else
            exec "NERDTree " . resolve(expand("%:p:h"))
        endif
    else " close NERDTree if in NERDTree Window
        exec "NERDTreeClose"
    endif
endfunction

function s:open_nerdtree_if_empty_buffer()
    if winnr('$') == 1 && empty(expand("%"))
        echomsg "empty file opened, open nerdtree"
        NERDTreeCWD
    endif
endfunction




let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="-"

nnoremap <Plug>SelfToggleCurFileDir :exec 'NERDTreeToggle ' .. expand('%:p:h')<CR>
nnoremap <Plug>SelfToggleCurProjectDir :exec 'NERDTreeToggleVCS ' .. expand('%:p:h')<CR>


autocmd! VimEnter * call <SID>open_nerdtree_if_empty_buffer()
nnoremap <F3> :call <SID>toggle_nerdtree_window(v:false)<CR>
nnoremap <F15> :call <SID>toggle_nerdtree_window(v:true)<CR>
