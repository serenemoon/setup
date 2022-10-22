
" for c files, use tab instead space, and show tab as 8 spaces
autocmd BufEnter *.c set noet | set ts=8

" NCM2 config
" enable ncm2 for all buffers
"autocmd! BufEnter *.vim,*.py,*.c,*.h,*.cpp call ncm2#enable_for_buffer()
" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect
