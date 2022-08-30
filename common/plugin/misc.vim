
"""""""""""""""""""""""""
"  vim profile command  "
"""""""""""""""""""""""""
let s:vim_prof_file = expand('~/.vim.profile')
command! -nargs=0 PFBegin profile start s:vim_prof_file | profile func *
command! -nargs=0 PFEnd   profile stop | edit s:vim_prof_file

nnoremap <silent> <Plug>EchoSomething :echomsg "YES IT IS ME " .. mode(1)<CR>

nnoremap ,nr :exec 'NERDTree ' .. resolve(stdpath('config'))<CR>
if has('nvim')
    nnoremap ,nd :exec 'NERDTree ' .. resolve(stdpath('data'))<CR>
endif

inoremap <C-F> <C-O>:Leaderf snippet<CR>


let g:ncm2_pyclang#library_path = '/usr/lib/x86_64-linux-gnu/libclang-14.so.1'
let g:ncm2_pyclang#database_path = [
            \ 'compile_commands.json',
            \ 'build/compile_commands.json'
            \ ]
