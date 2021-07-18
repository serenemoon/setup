let mapleader=","
let rcfile = resolve(expand("<sfile>:p"))

nnoremap <C-6> <C-^>

nnoremap ,ee :edit <C-R>=printf("%s", rcfile)<CR><CR>
nnoremap ,src :source <C-R>=printf("%s", rcfile)<CR><CR>

" save & close buf
nnoremap w  :w<CR>
nnoremap q  :q<CR>
nnoremap <Leader>qa  :qa!<CR>


nnoremap <Leader>ss  :source ~/.vimrc<CR>
nnoremap <Leader>sl  :exec getline('.')<CR>
nnoremap <Leader>src :source %<CR>

nnoremap <Leader>cc  :cclose<CR>
nnoremap n		:nohl<CR>
nnoremap <Leader>nh :nohl<CR>
nnoremap K  :let @/="\\<<C-R><C-W>\\>" <bar> set hlsearch<CR>
vnoremap K  y:let @/='<C-R>=escape('<C-R>"', '/\')<CR>' <bar> set hlsearch<CR>

"resize window size
nnoremap <S-Up>    :resize +10<CR>
nnoremap <S-Down>  :resize -10<CR>
nnoremap <S-Right> :vertical resize +10<CR>
nnoremap <S-Left>  :vertical resize -10<CR>

" moving around inside a tab amoun panels
nnoremap h	<C-W><C-H>
nnoremap j	<C-W><C-J>
nnoremap k	<C-W><C-K>
nnoremap l	<C-W><C-L>

" goto sol or eol in insert mode
inoremap <C-E>	<C-O>A
inoremap <C-A>	<C-O>I

" tab switch
nnoremap <Leader>l :tabnext<CR>
nnoremap <Leader>h :tabprev<CR>
nnoremap <Leader>L :tablast<CR>
nnoremap <Leader>H :tabfirst<CR>

" switch between terminal panel and other panels
nnoremap h	<C-W><C-H>
nnoremap j	<C-W><C-J>
nnoremap k	<C-W><C-K>
nnoremap l	<C-W><C-L>

set termwinkey=<C-_>
tnoremap h  <C-_>h
tnoremap j  <C-_>j
tnoremap k  <C-_>k
tnoremap l  <C-_>l
set termwinkey&

unlet mapleader

" cscope mapping
set cst
set cscopequickfix=s-,c-,d-,i-,t-,e-,a-

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
