local map = vim.api.nvim_set_keymap
local opt = { noremap = true }
local sopt = { noremap = true, silent = true }

-- Tagbar bindings
map('n', '<F2>', ':TagbarOpenAutoClose<CR>', sopt)

-- UltiSnips bindings, use ctrl-L trigger expand
vim.g.UltiSnipsExpandTrigger = '<C-L>'

map("n", "<A-q>", ":q<CR>", sopt)
map("n", ",qa", ":qa<CR>", sopt)
map("n", "<A-w>", ":w<CR>", sopt)

map("n", "<leader>sv", ":vsp<CR>", sopt)
map("n", "<leader>sh", ":sp<CR>", sopt)
map("n", "<leader>sc", "<C-w>c", sopt)
map("n", "<leader>so", "<C-w>o", sopt) -- close others

-- script file edit
map("n", "<leader>ee", ":e ~/.config/nvim/init.lua<CR>", sopt)
map("n", "<leader>src", ":source %<CR>", opt)
map("n", "<leader>ss", ":source ~/.config/nvim/init.lua<CR>", opt)

map("n", "<A-n>", ":nohl<CR>", sopt)

-- terminal movement map
map("n", "<A-h>", ":LeaderfFile<CR>", sopt)

-- resize window size
vim.cmd([[
nnoremap <S-Up>    :resize +10<CR>
nnoremap <S-Down>  :resize -10<CR>
nnoremap <S-Right> :vertical resize +10<CR>
nnoremap <S-Left>  :vertical resize -10<CR>
]])

-- tab switch
vim.cmd([[
nnoremap <Leader>l :tabnext<CR>
nnoremap <Leader>h :tabprev<CR>
nnoremap <Leader>L :tablast<CR>
nnoremap <Leader>H :tabfirst<CR>
]])

-- To use `ALT+{h,j,k,l}` to navigate windows from any mode:
vim.cmd([[
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
]])

-- cscope mappings
vim.cmd([[
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>a :cs find a <C-R>=expand("<cword>")<CR><CR>

nmap <C-\><C-\>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\><C-\>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\><C-\>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\><C-\>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\><C-\>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\><C-\>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\><C-\>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\><C-\>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>
nmap <C-\><C-\>a :vert scs find a <C-R>=expand("<cword>")<CR><CR>
]])

-- Easy Motion bindings
vim.cmd([[
map <leader>w <Plug>(easymotion-w)
map <leader>W <Plug>(easymotion-W)
map <leader>b <Plug>(easymotion-b)
map <leader>B <Plug>(easymotion-B)
map <leader>j <Plug>(easymotion-j)
map <leader>k <Plug>(easymotion-k)
map <leader>f <Plug>(easymotion-f)
map <leader>F <Plug>(easymotion-F)
]])

-- Gutentags config
vim.cmd([[
let g:gutentags_modules = ['ctags', 'cscope']
]])

-- K for search highlight
vim.cmd([[
nnoremap K  :let @/="\\<<C-R><C-W>\\>" <bar> set hlsearch<CR>
vnoremap K  y:let @/='<C-R>=escape('<C-R>"', '/\')<CR>' <bar> set hlsearch<CR>
]])

-- 
vim.cmd([[
nnoremap ,ed :exec 'NERDTree ' .. stdpath('data')<CR>

nnoremap gv :exec "h " .. expand('<cword>')<CR>
]]
)
