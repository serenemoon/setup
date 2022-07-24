
function! AutoMake()
    "if expand("%:p:e") == 'py'
        "exec 'AsyncRun python3 ' . expand("%:p")
    "endif
    exec 'AsyncRun make -f ' . g:setup_dir . '/AsyncRun.mk'
endfunction

nnoremap <F6> :call AutoMake()<CR>
