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

nnoremap <silent> ,, :call <SID>toggle_qf_window()<CR>
