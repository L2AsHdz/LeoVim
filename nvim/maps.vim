" Maps
let mapleader=" "

" Atajos perozonalizados
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>W :wq<CR>
nnoremap <Leader>Q :q!<CR>
nnoremap <Leader>bb :bd<CR>
nnoremap <Leader>BB :bd!<CR>

" Moverse al buffer siguiente con <líder> + l
nnoremap <leader>k :bnext<CR>

" Moverse al buffer anterior con <líder> + j
nnoremap <leader>j :bprevious<CR>

"easymotion
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader><Leader>l <Plug>(easymotion-lineforward)
nmap <Leader><Leader>j <Plug>(easymotion-j)
nmap <Leader><Leader>k <Plug>(easymotion-k)
nmap <Leader><Leader>h <Plug>(easymotion-linebackward)
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

"Atajos NERDTreeFind
nnoremap <Leader>nt :NERDTreeFind<CR>
nnoremap <Leader>r :NERDTreeRefreshRoot<CR>
nnoremap <silent> <leader>n :nohlsearch<CR>
:imap ii <Esc>

"Ranger
nnoremap <Leader>rg :RnvimrToggle<CR>

"Atajos Coc
nnoremap <Leader>ft :CocSearch 

" incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map <Leader>/ <Plug>(incsearch-easymotion-/)
map <Leader>? <Plug>(incsearch-easymotion-?)
map <Leader>g/ <Plug>(incsearch-easymotion-stay)

