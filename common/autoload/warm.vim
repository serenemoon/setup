
fun warm#is_root_dir(path)
    return a:path == fnamemodify(a:path, ':p:h')
endf

fun warm#hel()
    " code
endf

fun warm#join_path(...)
    let l:path = ""
    for p in a:000
        if type(p) != v:t_string
            break
        endif
        let l:path .= '/' .. p.trim('/')
    endfor
    return l:path
endf

fun warm#root_finder(path, markers)
    let l:path = a:path
    let l:markers = a:markers

    if type(l:markers) == v:t_string
        l:markers = [a:markers]
    endif
    if filereadable(l:path)
        let l:path = fnamemodify(l:path, ':p:h')
    endif
    if !isdirectory(l:path)
        return ''
    endif

    while !warm#is_root_dir(l:path) 
        for mark in l:markers
            if !empty(globpath(l:path, mark)
                return l:path
            endif
        endfor
        let l:path = fnamemodify(l:path, ':p:h')
    endw
    return ''
endf
