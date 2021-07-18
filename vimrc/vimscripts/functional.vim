function s:is_quickfix_window(wininfo)
    return get(a:wininfo, 'quickfix', 0) == 1
endfunction

function s:get_winid_match(funname)
    let wininfos = getwininfo()
    for wi in wininfos
        if (call(a:funname, [wi]))
            return get(wi, 'winnr', -1)
        endif
    endfor
    return -1
endfunction

function s:toggle_qf_window()
    let qf_win_nr = s:get_winid_match('s:is_quickfix_window')
    if qf_win_nr < 0
        bot copen 15
    else
        cclose
    endif
endfunction

function s:find_dir_contains(marker)
    let cur_dir = expand('%:p:h')
    let x = 0
    while cur_dir != '/' && x < 50 " at max find 50 directories upward
        let fd = cur_dir . '/' . a:marker
        if isdirectory(fd) || filereadable(fd)
            return cur_dir
        endif
        let cur_dir = fnamemodify(cur_dir, ":h")
        let x = x + 1
    endwhile
    return ''
endfunction

function s:auto_add_ctags_cscope()
    let repodir = s:find_dir_contains('.repo')
endfunction
command! -nargs=1 FD :echom s:find_dir_contains(<q-args>)

nnoremap <silent> ,, :call <SID>toggle_qf_window()<CR>
