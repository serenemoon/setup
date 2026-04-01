-- LeaderF config
vim.g.Lf_WorkingDirectoryMode = 'AF'
vim.cmd([[
let g:Lf_CacheDirectory = expand('~/.cache')
let g:Lf_IndexTimeLimit = 10
let g:Lf_PreviewInPopup = 1
let g:Lf_FollowLinks = 1
let g:Lf_MruMaxFiles = 200
let g:Lf_IndexTimeLimit = 60
let g:Lf_MaxCount = 100000
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

nnoremap <localleader>p :LeaderfFile<CR>
nnoremap <localleader>m :LeaderfMru<CR>
nnoremap <localleader>b :LeaderfBuffer<CR>
nnoremap <localleader>c :LeaderfCommand<CR>
nnoremap <localleader>q :LeaderfQuickFix<CR>
nnoremap <localleader>h :LeaderfHistoryCmd<CR>
nnoremap <localleader>v :LeaderfHelp<CR>

nnoremap <localleader>l :LeaderfLine<CR>
nnoremap <localleader>t :LeaderfBufTag<CR>
nnoremap <localleader>r :Leaderf! rg -e <space>
nnoremap <localleader>d :Leaderf! gtags -d <space>
nnoremap <localleader>f :LeaderfFunction<CR>

nnoremap <localleader>L :Leaderf! line --input=<C-R>=expand("<cword>")<CR><CR>
nnoremap <localleader>T :Leaderf! bufTag --input=<C-R>=expand("<cword>")<CR><CR>
nnoremap <localleader>R :Leaderf! rg -e <C-R>=expand("<cword>")<CR><CR>
nnoremap <localleader>D :Leaderf! gtags -d <C-R>=expand("<cword>")<CR><CR>
nnoremap <localleader>F :Leaderf! function --input=<C-R>=expand("<cword>")<CR><CR>

nnoremap go :Leaderf! --recall<CR>
nnoremap gn :Leaderf! --next<CR>
nnoremap gp :Leaderf! --previous<CR>
]])

-- ColorScheme config
vim.cmd([[
set termguicolors
let g:gruvbox_contrast_dark="hard"
colorscheme gruvbox
]])

-- Vim-Mark config
vim.cmd([[
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
    \   { 'ctermbg':'Brown',      'ctermfg':'Black', 'guibg':'#FFC4A1', 'guifg':'Black' },
    \   { 'ctermbg':'DarkMagenta','ctermfg':'Black', 'guibg':'#A29CCF', 'guifg':'Black' },
    \   { 'ctermbg':'DarkRed',    'ctermfg':'Black', 'guibg':'#FF0000', 'guifg':'Black' },
    \   { 'ctermbg':'DarkCyan',   'ctermfg':'Black', 'guibg':'#E3E3D2', 'guifg':'Black' },
    \   { 'ctermbg':'DarkGreen',  'ctermfg':'Black', 'guibg':'#D0FFA1', 'guifg':'Black' },
    \]
    \}
if get(g:, 'marker_loaded', 0) == 0
nmap <unique> mm <Plug>MarkSet
xmap <unique> mm <Plug>MarkSet
nmap <unique> mn <Plug>MarkClear
nmap <unique> mN <Plug>MarkAllClear
nmap <unique> m* <Plug>MarkSearchCurrentNext
nmap <unique> m# <Plug>MarkSearchCurrentPrev
nmap <unique> m/ <Plug>MarkSearchAnyNext
nmap <unique> m? <Plug>MarkSearchAnyPrev
let g:marker_loaded = 1
endif
]])

require'nvim-tree'.setup{}

-- Gutentags config
vim.g.gutentags_define_advanced_commands = 1
vim.g.gutentags_modules = { 'ctags', 'gtags_cscope' }

