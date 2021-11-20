" Maps
let mapleader=" "

" Atajos perozonalizados
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>W :wq<CR>
nnoremap <Leader>Q :q!<CR>
nnoremap <Leader>bb :bd<CR>

" Moverse al buffer siguiente con <líder> + l
nnoremap <leader>k :bnext<CR>

" Moverse al buffer anterior con <líder> + j
nnoremap <leader>j :bprevious<CR>

"Busqueda con easymotion
noremap <Leader>s <Plug>(easymotion-s2)

"Abrir NERDTreeFind
nnoremap <Leader>nt :NERDTreeFind<CR>
nnoremap <silent> <leader>n :nohlsearch<CR>