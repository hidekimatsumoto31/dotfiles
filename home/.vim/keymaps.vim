""""""""
" Dica "
""""""""
" Como ver quais sÃ£o as teclas mapeadas no vim:
" :nmap for normal mode mappings
" :vmap for visual mode mappings
" :imap for insert mode mappings
" :mkexrc Write current key mappings and changed options to [file]
""""""""""""""""""
" Custom keymaps "
""""""""""""""""""
" Toggle NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>

" Ctrl-g opens Gundo
map <C-g> :GundoToggle<CR>

" Map jk to always advance a screen line
nnoremap j gj
nnoremap k gk

inoremap jk <esc>

" ,c toggles comment (Tcomment)
nmap <silent> <leader>c :TComment<CR>
vmap <silent> <leader>c :TComment<CR>

" Move lines or chunks of lines up and down
" Bubble single lines
nmap <C-k> [e
nmap <C-j> ]e

" Bubble multiple lines
vmap <C-k> [egv
vmap <C-j> ]egv

"Make arrows to do nothing
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>

"Toggle between two tab
nnoremap <C-b> :e#<CR>

"Save file with leader
nnoremap <leader>s :w<CR>
inoremap <leader>s <Esc> :w<CR>

"Quit file with leader
nnoremap <leader>q :q<CR>
inoremap <leader>q <Esc> :q<CR>

"Toggle highlights searched word
nnoremap <leader>h :set hlsearch!<CR>

"Cross Highlights
nnoremap <leader>t :set cursorline! <CR> <bar> :set cursorcolumn!<CR>

"Create makro easily using q
nnoremap Q @q
vnoremap Q :normal @q<cr>

" Run tests from Vim
noremap <silent> <leader>tn :TestNearest<CR>
noremap <silent> <leader>tf :TestFile<CR>
noremap <silent> <leader>ta :TestSuite<CR>
noremap <silent> <leader>tl :TestLast<CR>
noremap <silent> <leader>tg :TestVisit<CR>

" finding file in tree
nnoremap <leader>f :NERDTreeFind<CR>

" Panes and windows resizing
""""""""""""""""""""""""""""
" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

" edit vimrc
nnoremap <leader>e :e $MYVIMRC<cr>

" Allows to change to buffers using leader + number
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

"FZF
"
nmap <C-p> :FZF<CR>
