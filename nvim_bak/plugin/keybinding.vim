
fun s:map_key(mapmode, maptype, mapdest)
    if !has_key(g:self_custom_keys, a:maptype)
        echoerr "no key for " .. a:maptype .. " to map to " .. a:mapdest
        return
    endif
    let key = g:self_custom_keys[a:maptype]
    for m in a:mapmode
        exec m .. 'map ' .. key .. ' ' .. a:mapdest
    endfor
endf

call s:map_key('n', 'NT_VIMRC', ':NERDTree ' .. resolve(stdpath('config')) .. '<CR>')
call s:map_key('n', 'NT_VIMDATA', ':NERDTree ' .. resolve(stdpath('data')) .. '<CR>')
call s:map_key('n', 'NT_VIMSETUP', ':NERDTree ' .. g:self_setup_dir .. '<CR>')
call s:map_key('n', 'NT_CurFileDir', '<Plug>SelfToggleCurFileDir')
call s:map_key('n', 'NT_CurProjectDir', '<Plug>SelfToggleCurProjecrDir')

nmap <A-e> A
imap <A-e> <C-O>A

"nmap <F5> :AsyncTask file-run<CR>










