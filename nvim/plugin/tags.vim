let g:repo_tags_debug = 0
function s:log_debug(log)
    if g:repo_tags_debug != 0
        echohl WarningMsg | echo a:log | echohl None
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

" search in @cachedir, get all file/dirs prefix same as repodir
function s:get_list_of_repo(cachedir, repodir)
    if !isdirectory(a:cachedir)
        call s:log_debug(a:cachedir . " is not tags/cscope cache directory")
        return []
    endif
    if !isdirectory(a:repodir)
        call s:log_debug(a:repodir . " is not a repo directory")
        return []
    endif
    let prefix = substitute(a:repodir, '/', '-', 'g')[1:]
    call s:log_debug("repo dir subs prefix: " . prefix)
    return filter(readdir(a:cachedir), {idx, val -> val =~ '^' . prefix})
endfunction

" search in @cachedir, to find path-to-repodir-subproject-dir-tags
function s:get_tags_list(cachedir, repodir)
    let fds = s:get_list_of_repo(a:cachedir, a:repodir)
    echom fds
    return filter(fds, {idx, val -> val =~ '-tags$'})
endfunction

" search in @cachedir, to find path-to-repodir-subproject-dir-cscope.out
function s:get_cscope_list(cachedir, repodir)
    let fds = s:get_list_of_repo(a:cachedir, a:repodir)
    return filter(fds, {idx, val -> val =~ '-cscope.out$'})
endfunction

function s:connect_db_of_cur_file()
    let cachedir = get(g:, 'gutentags_cache_dir', '')
    let repodir = s:find_dir_contains('.repo')
    if empty(repodir) || empty(cachedir)
        call s:log_debug("repo:" . repodir . " cache:" . cachedir . " invalid")
        return
    endif
    let ctags = s:get_tags_list(cachedir, repodir)
    let cscope = s:get_cscope_list(cachedir, repodir)
    exec "set tags&"
    exec "cs kill -1"
    for tgs in ctags
        exec "set tags+=" . cachedir . "/" . tgs
    endfor
    for csc in cscope
        let csdir = "/" . substitute(csc, "-", "/", "g")
        let csdir = csdir->fnamemodify(':p:h')
        exec "cscope add " . cachedir . "/" . csc . " " . csdir
    endfor
endfunction

function s:auto_add_ctags_cscope()
    let repodir = s:find_dir_contains('.repo')
endfunction

autocmd BufEnter * call s:connect_db_of_cur_file()
command! -nargs=1 FD :echom s:find_dir_contains(<q-args>)

command! -nargs=1 EchoDB :echom s:connect_db_of_cur_file()

