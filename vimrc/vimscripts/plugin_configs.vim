" airline config {{{
let g:airline#extensions#tabline#enabled = 0
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_theme='molokai'

" NERDTree config {{{
" icons: ♥
let NERDTreeDirArrowExpandable=""
let NERDTreeDirArrowCollapsible=""
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1

" LeaderF config {{{
let g:Lf_CacheDirectory = expand('~/.cache')
let g:Lf_IndexTimeLimit = 10
let g:Lf_PreviewInPopup = 1
let g:Lf_FollowLinks = 1
let g:Lf_MruMaxFiles = 500
let g:Lf_StlColorscheme = 'default'
let g:Lf_PopupColorscheme = 'default'
let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }
let g:Lf_ShortcutF = ',ff'
let g:Lf_ShortcutB = ',fb'
let g:Lf_WindowPosition = 'popup'
let g:Lf_WorkingDirectoryMode = 'AF'
let g:Lf_PopupHeight = 0.5
let g:Lf_PopupWidth = 0.9
let g:Lf_GtagsGutentags = 1
let g:Lf_GtagsAutoGenerate = 1
let g:gutentags_cache_dir = expand(g:Lf_CacheDirectory.'/.LfCache/gtags')

" Leaderf short cuts maps
let mapleader=' '
nnoremap <leader>p :LeaderfFile<CR>
nnoremap <leader>m :LeaderfMru<CR>
nnoremap <leader>b :LeaderfBuffer<CR>
nnoremap <leader>c :LeaderfCommand<CR>
nnoremap <leader>q :LeaderfQuickFix<CR>
nnoremap <leader>h :Leaderf cmdHistory<CR>

nnoremap <leader>l :LeaderfLine<CR>
nnoremap <leader>t :LeaderfBufTag<CR>
nnoremap <leader>r :Leaderf! rg -e 
nnoremap <leader>d :Leaderf! gtags -d 
nnoremap <leader>f :LeaderfFunction<CR>

nnoremap <leader>L :Leaderf! line --input=<C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>T :Leaderf! bufTag --input=<C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>R :Leaderf! rg -e <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>D :Leaderf! gtags -d <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>F :Leaderf! function --input=<C-R>=expand("<cword>")<CR><CR>

nnoremap <leader><leader>l :Leaderf! line --input=<C-R>"<CR>
nnoremap <leader><leader>r :Leaderf! rg -e <C-R>"<CR>
nnoremap <leader><leader>d :Leaderf! gtags -d <C-R>"<CR>

nnoremap go :Leaderf! --recall<CR>
nnoremap gn :Leaderf! --next<CR>
nnoremap gp :Leaderf! --previous<CR>
unlet mapleader

" Gutentags config {{{
let g:gutentags_modules = ['ctags', 'cscope']


" EasyMotion config {{{
let mapleader=','
map <leader>w <Plug>(easymotion-w)
map <leader>W <Plug>(easymotion-W)
map <leader>b <Plug>(easymotion-b)
map <leader>B <Plug>(easymotion-B)
map <leader>j <Plug>(easymotion-j)
map <leader>k <Plug>(easymotion-k)
map <leader>f <Plug>(easymotion-f)
map <leader>F <Plug>(easymotion-F)
unlet mapleader

" Vim-Mark config {{{
let g:mwDefaultHighlightingNum = 10
let g:mwDefaultHighlightingPalette = 'original'
let g:mwPalettes = {
\	'original': [
    \   { 'ctermbg':'Cyan',       'ctermfg':'Black', 'guibg':'#8CCBEA', 'guifg':'Black' },
    \   { 'ctermbg':'Green',      'ctermfg':'Black', 'guibg':'#A4E57E', 'guifg':'Black' },
    \   { 'ctermbg':'Yellow',     'ctermfg':'Black', 'guibg':'#FFDB72', 'guifg':'Black' },
    \   { 'ctermbg':'Red',        'ctermfg':'Black', 'guibg':'#FF7272', 'guifg':'Black' },
    \   { 'ctermbg':'Magenta',    'ctermfg':'Black', 'guibg':'#FFB3FF', 'guifg':'Black' },
    \   { 'ctermbg':'Blue',       'ctermfg':'Black', 'guibg':'#9999FF', 'guifg':'Black' },
    \   { 'ctermbg':'Brown',      'ctermfg':'Black', 'guibg':'#FFC4A1', 'guifg':'#803000' },
    \   { 'ctermbg':'DarkMagenta','ctermfg':'Black', 'guibg':'#A29CCF', 'guifg':'#120080' },
    \   { 'ctermbg':'DarkRed',    'ctermfg':'Black', 'guibg':'#FF0000', 'guifg':'#FFFFFF' },
    \   { 'ctermbg':'DarkCyan',   'ctermfg':'Black', 'guibg':'#E3E3D2', 'guifg':'#999999' },
    \   { 'ctermbg':'DarkGreen',  'ctermfg':'Black', 'guibg':'#D0FFA1', 'guifg':'#3F8000' },
    \]
    \}
let mapleader='m'
nmap <unique> <Leader>m <Plug>MarkSet
xmap <unique> <Leader>m <Plug>MarkSet
nmap <unique> <Leader>n <Plug>MarkClear
nmap <unique> <Leader>N <Plug>MarkAllClear
nmap <unique> <Leader>* <Plug>MarkSearchCurrentNext
nmap <unique> <Leader># <Plug>MarkSearchCurrentPrev
nmap <unique> <Leader>/ <Plug>MarkSearchAnyNext
nmap <unique> <Leader>? <Plug>MarkSearchAnyPrev
unlet mapleader

" UltiSnippet config
let g:UltiSnipsExpandTrigger='<C-L>'

" terminal help config
let g:terminal_skip_key_init=1
let g:terminal_key='='
