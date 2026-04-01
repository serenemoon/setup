
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

function! s:lf_task_source(...)
	let rows = asynctasks#source(&columns * 48 / 100)
	let source = []
	for row in rows
		let name = row[0]
		let source += [name . '  ' . row[1] . '  : ' . row[2]]
	endfor
	return source
endfunction


function! s:lf_task_accept(line, arg)
	let pos = stridx(a:line, '<')
	if pos < 0
		return
	endif
	let name = strpart(a:line, 0, pos)
	let name = substitute(name, '^\s*\(.\{-}\)\s*$', '\1', '')
	if name != ''
		exec "AsyncTask " . name
	endif
endfunction

function! s:lf_task_digest(line, mode)
	let pos = stridx(a:line, '<')
	if pos < 0
		return [a:line, 0]
	endif
	let name = strpart(a:line, 0, pos)
	return [name, 0]
endfunction

function! s:lf_win_init(...)
	setlocal nonumber
	setlocal nowrap
endfunction


let g:Lf_Extensions = get(g:, 'Lf_Extensions', {})
let g:Lf_Extensions.task = {
			\ 'source': string(function('s:lf_task_source'))[10:-3],
			\ 'accept': string(function('s:lf_task_accept'))[10:-3],
			\ 'get_digest': string(function('s:lf_task_digest'))[10:-3],
			\ 'highlights_def': {
			\     'Lf_hl_funcScope': '^\S\+',
			\     'Lf_hl_funcDirname': '^\S\+\s*\zs<.*>\ze\s*:',
			\ },
			\ 'help' : 'navigate available tasks from asynctasks.vim',
		\ }

nmap <A-t> :Leaderf --nowrap task<CR>
