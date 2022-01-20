" Maps
let mapleader=" "

" Atajos perozonalizados
nnoremap <leader>s :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>S :wq<CR>
nnoremap <leader>Q :q!<CR>
nnoremap <leader>bb :Sayonara<CR>
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
nnoremap <leader>k :BufferLineCycleNext<CR>
nnoremap <leader>j :BufferLineCyclePrev<CR>
nnoremap <leader>mk :BufferLineMoveNext<CR>
nnoremap <leader>mj :BufferLineMovePrev<CR>
nnoremap <leader>p :BufferLinePick<CR>

nnoremap <leader>t :lua require("FTerm").toggle()<CR>

"Atajos NERDTreeFind
" nnoremap <Leader>nt :NERDTreeFind<CR>
" nnoremap <Leader>r :NERDTreeRefreshRoot<CR>

"nvim-tree
nnoremap <leader>nt :NvimTreeToggle<CR>
nnoremap <leader>nr :NvimTreeRefresh<CR>
nnoremap <leader>nf :NvimTreeFindFile<CR>

"Ranger
nnoremap <leader>rg :RnvimrToggle<CR>

"Atajos Coc
so ~/.config/nvim/coc-maps.vim

"ALE
nmap <silent> <leader>ep <Plug>(ale_previous_wrap)
nmap <silent> <leader>en <Plug>(ale_next_wrap)

" incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
" map <Leader>/ <Plug>(incsearch-easymotion-/)
" map <Leader>? <Plug>(incsearch-easymotion-?)
" map <Leader>g/ <Plug>(incsearch-easymotion-stay)

"vim-commentary
nnoremap <leader><leader>/ :Commentary<CR>
vnoremap <leader><leader>/ :Commentary<CR>

"GitGutter
" Jump between hunks
nmap <leader>gn :Gitsigns next_hunk<CR>
nmap <leader>gp :Gitsigns prev_hunk<CR>

" Hunk-add and hunk-revert for chunk staging
nnoremap <leader>ga :Gitsigns stage_hunk<CR>
nnoremap <leader>gr :Gitsigns reset_hunk<CR>
nnoremap <leader>gu :Gitsigns undo_stage_hunk<CR>
nnoremap <leader>gh :Gitsigns preview_hunk<CR>
nnoremap <leader>gf :Gitsigns stage_buffer<CR>

" Open neogit pane
nnoremap <leader>gs :Neogit kind=vsplit<CR>

"diffview
nnoremap <leader>dv :DiffviewOpen<CR>
nnoremap <leader>dh :DiffviewFileHistory<CR>
nnoremap <leader>dq :tabclose<CR>
nnoremap <leader>df :DiffviewToggleFiles<CR>
nnoremap <leader>dr :DiffviewRefresh<CR>

" Hop
nnoremap <leader>w :HopWord<CR>
nnoremap <leader>/ :HopPattern<CR>
nnoremap <leader>c :HopChar2<CR>
nnoremap <leader>C :HopChar1<CR>
nnoremap <leader>l :HopLineStart<CR>
nnoremap <leader>L :HopLine<CR>

"fzf
" nnoremap <Leader>ff :Files<CR>
" nnoremap <Leader>fb :Buffers<CR>
" nnoremap <Leader>fg :Ag<CR>
" nnoremap <Leader>fl :Lines<CR>

"fzf-lua
nnoremap <leader>ff :FzfLua files<CR>
nnoremap <leader>fb :FzfLua buffers<CR>
nnoremap <leader>fl :FzfLua lines<CR>
nnoremap <leader>fg :FzfLua live_grep<CR>


"fzf-checkout
nnoremap <leader>fGb :GBranches<CR>
nnoremap <leader>fGt :GTags<CR>

" faster scrolling
nnoremap <leader><leader>j 10<C-e>
nnoremap <leader><leader>k 10<C-y>

" split resize
nnoremap <leader>, 10<C-w>>
nnoremap <leader>. 10<C-w><

"Startify
nnoremap <leader>Ss :SSave<CR>
nnoremap <leader>Sc :SClose<CR>
nnoremap <leader>Sd :SDelete<CR>

