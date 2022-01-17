" Maps
let mapleader=" "

" Atajos perozonalizados
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>W :wq<CR>
nnoremap <Leader>Q :q!<CR>
nnoremap <Leader>bb :Sayonara<CR>
nnoremap <leader>bo :%bd\|e#\|bd#<CR>
nnoremap <silent> <leader>n :nohlsearch<CR>
:imap ii <Esc>
:vmap vv <Esc>

"Mover linea actual o lineas seleccionadas
nnoremap <A-down> :m+1<CR>==
nnoremap <A-up> :m-2<CR>==
inoremap <A-down> <Esc>:m+1<CR>==gi
inoremap <A-up> <Esc>:m-2<CR>==gi
vnoremap <A-down> :m '>+1<CR>gv=gv
vnoremap <A-up> :m '<-2<CR>gv=gv

"Duplicar linea actual o lineas seleccionadas
nnoremap <C-S-down> :t+0<CR>==
nnoremap <C-S-up> :t-1<CR>==
inoremap <C-S-down> <Esc>:t+0<CR>==a
inoremap <C-S-up> <Esc>:t-1<CR>==a
vnoremap <C-S-down> :t '>+0<CR>gv=gv
vnoremap <C-S-up> :t '<-1<CR>gv=gv

" nnoremap <Leader>BB :bd!<CR>

" Moverse al buffer siguiente con <líder> + l
" nnoremap <leader>k :bnext<CR>

" Moverse al buffer anterior con <líder> + j
" nnoremap <leader>j :bprevious<CR>

"easymotion
" nmap <Leader>s <Plug>(easymotion-s2)
" nmap <Leader><Leader>l <Plug>(easymotion-lineforward)
" nmap <Leader><Leader>j <Plug>(easymotion-j)
" nmap <Leader><Leader>k <Plug>(easymotion-k)
" nmap <Leader><Leader>h <Plug>(easymotion-linebackward)
" map  <Leader>f <Plug>(easymotion-bd-f)
" nmap <Leader>f <Plug>(easymotion-overwin-f)

"Bufferline
nnoremap <silent><leader>k :BufferLineCycleNext<CR>
nnoremap <silent><leader>j :BufferLineCyclePrev<CR>
nnoremap <silent><leader>mk :BufferLineMoveNext<CR>
nnoremap <silent><leader>mj :BufferLineMovePrev<CR>
nnoremap <silent><leader>bl :BufferLinePick<CR>

"Atajos NERDTreeFind
" nnoremap <Leader>nt :NERDTreeFind<CR>
" nnoremap <Leader>r :NERDTreeRefreshRoot<CR>

"nvim-tree
nnoremap <leader>nt :NvimTreeToggle<CR>
nnoremap <leader>nr :NvimTreeRefresh<CR>
nnoremap <leader>nf :NvimTreeFindFile<CR>

"Ranger
nnoremap <Leader>rg :RnvimrToggle<CR>

"Atajos Coc
so ~/.config/nvim/coc-maps.vim

"ALE
nmap <silent> <Leader>ep <Plug>(ale_previous_wrap)
nmap <silent> <Leader>en <Plug>(ale_next_wrap)

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
nmap <Leader>ga <Plug>(GitGutterStageHunk)
nmap <Leader>gu <Plug>(GitGutterUndoHunk)
nmap <Leader>gh <Plug>(GitGutterPreviewHunk)
" Open vimagit pane
nnoremap <leader>gs :Magit<CR>       " git status

" Hop
nnoremap <Leader><Leader>w :HopWord<CR>
nnoremap <Leader>/ :HopPattern<CR>
nnoremap <Leader>s :HopChar2<CR>
nnoremap <Leader>S :HopChar1<CR>
nnoremap <Leader>l :HopLineStart<CR>
nnoremap <Leader>L :HopLine<CR>

"fzf
nnoremap <Leader>ff :Files<CR>
nnoremap <Leader>fb :Buffers<CR>
nnoremap <Leader>fg :Ag<CR>
nnoremap <Leader>fl :Lines<CR>

"fzf-checkout
nnoremap <Leader>fr :GBranches<CR>
nnoremap<Leader>ftg :GTags<CR>

" faster scrolling
nnoremap <Leader><Leader>j 10<C-e>
nnoremap <Leader><Leader>k 10<C-y>

" split resize
nnoremap <Leader>, 10<C-w>>
nnoremap <Leader>. 10<C-w><

"Startify
nnoremap <Leader>Ss :SSave<CR>
nnoremap <Leader>Sc :SClose<CR>
nnoremap <leader>Sd :SDelete<CR>

