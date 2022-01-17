" Maps
let mapleader=" "

" Atajos perozonalizados
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>W :wq<CR>
nnoremap <Leader>Q :q!<CR>
nnoremap <Leader>bb :Sayonara<CR>
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

nnoremap <silent> <leader>n :nohlsearch<CR>
:imap ii <Esc>
:vmap vv <Esc>

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

"vim-visual-multi
" nmap   <C-LeftMouse>         <Plug>(VM-Mouse-Cursor)
" nmap   <C-RightMouse>        <Plug>(VM-Mouse-Word)  
" nmap   <M-C-RightMouse>      <Plug>(VM-Mouse-Column)

"Startify
nnoremap <Leader>Ss :SSave<CR>
nnoremap <Leader>Sc :SClose<CR>
nnoremap <leader>Sd :SDelete<CR>

