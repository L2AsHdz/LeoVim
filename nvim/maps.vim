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
" nmap <Leader>s <Plug>(easymotion-s2)
" nmap <Leader><Leader>l <Plug>(easymotion-lineforward)
" nmap <Leader><Leader>j <Plug>(easymotion-j)
" nmap <Leader><Leader>k <Plug>(easymotion-k)
" nmap <Leader><Leader>h <Plug>(easymotion-linebackward)
" map  <Leader>f <Plug>(easymotion-bd-f)
" nmap <Leader>f <Plug>(easymotion-overwin-f)

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
" map <Leader>/ <Plug>(incsearch-easymotion-/)
" map <Leader>? <Plug>(incsearch-easymotion-?)
" map <Leader>g/ <Plug>(incsearch-easymotion-stay)

"vim-commentary
nnoremap <Leader><Leader>/ :Commentary<CR>
vnoremap <Leader><Leader>/ :Commentary<CR>

"GitGutter and vimagit
" Jump between hunks
nmap <Leader>gn <Plug>(GitGutterNextHunk)  " git next
nmap <Leader>gp <Plug>(GitGutterPrevHunk)  " git previous

" Hunk-add and hunk-revert for chunk staging
nmap <Leader>ga <Plug>GitGutterStageHunk  " git add (chunk)
nmap <Leader>gu <Plug>GitGutterUndoHunk   " git undo (chunk)

" Open vimagit pane
nnoremap <leader>gs :Magit<CR>       " git status

" Hop
nnoremap <Leader><Leader>w :HopWord<CR>
nnoremap <Leader>/ :HopPattern<CR>
nnoremap <Leader>s :HopChar2<CR>
nnoremap <Leader>S :HopChar1<CR>
nnoremap <Leader>l :HopLineStart<CR>
nnoremap <Leader>L :HopLine<CR>

" faster scrolling
nnoremap <Leader><Leader>j 10<C-e>
nnoremap <Leader><Leader>k 10<C-y>
