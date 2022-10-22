
fun! s:func_name(func)
    return string(function(a:func))[10:-3]
endfun

fun! s:repo_dir_source(args)
    let l:dir = getcwd()
    return systemlist('find ' .. l:dir .. ' -type d')
endfun

fun! s:repo_dir_accept(line, args)
    if isdirectory(a:line)
        exec 'NERDTree ' .. a:line
        return
    endif
    echoerr a:line .. " don't exist"
endfun

let s:repo_dir_extension = {
        \ 'repodir': {
            \ 'source': s:func_name('s:repo_dir_source'),
            \ 'accept': s:func_name('s:repo_dir_accept'),
            \ 'highlights_def': {
            \       'Directory': '^.*$'
            \ }
            \ }
    \ }

echomsg s:func_name('s:repo_dir_accept')[10:-3]

let g:Lf_Extensions = s:repo_dir_extension

nmap <A-p> :echoerr "Pressed Little p"<CR>
nmap <A-P> :echoerr "Pressed Upper P"<CR>

nmap <M-C-K> :silent echoerr "C+A+K"<CR>

