
"""""""""""""""""""""""""
"  vim profile command  "
"""""""""""""""""""""""""
let s:vim_prof_file = expand('~/.vim.profile')
command! -nargs=0 PFBegin profile start s:vim_prof_file | profile func *
command! -nargs=0 PFEnd   profile stop | edit s:vim_prof_file

nnoremap ,nr :exec 'NERDTree ' .. resolve(stdpath('config'))<CR>
if has('nvim')
    nnoremap ,nd :exec 'NERDTree ' .. resolve(stdpath('data'))<CR>
endif

inoremap <C-F> <C-O>:Leaderf snippet<CR>
