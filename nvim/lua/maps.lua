local map = require('utils').map
vim.g.mapleader = ' '

-- Keymaps propios
map('n', '<leader>s', ':w<CR>')
map('n', '<leader>q', ':q<CR>')
map('n', '<leader>S', ':wq<CR>')
map('n', '<leader>Q', ':q!<CR>')
map('n', '<leader>bb', ':Sayonara<CR>')
map('n', '<leader>bo', ':%bd|e#|bd#<CR>')
map('n', '<leader>n', ':noh<CR>', {silent = true})
map('i', 'ii', '<ESC>')
map('v', 'ii', '<ESC>')

-- Resize with arrows
map('n', '<C-A-up>',  ':resize -5<CR>')
map('n', '<C-A-down>',  ':resize +5<CR>')
map('n', '<C-A-left>',  ':vertical resize -5<CR>')
map('n', '<C-A-right>',  ':vertical resize +5<CR>')

-- Indent
map('v', '<', '<gv')
map('v', '>', '>gv')

-- Mover linea actual o lineas seleccionadas
map('n', '<A-down>', ':m+1<CR>==')
map('n', '<A-up>', ':m-2<CR>==')
map('i', '<A-down>', '<Esc>:m+1<CR>==gi')
map('i', '<A-up>', '<Esc>:m-2<CR>==gi')
map('v', '<A-down>', ":m '>+1<CR>gv=gv")
map('v', '<A-up>', ":m '<-2<CR>gv=gv")

-- Duplicar linea actual o lineas seleccionadas
map('n', '<C-S-down>', ':t+0<CR>==')
map('n', '<C-S-up>', ':t-1<CR>==')
map('i', '<C-S-down>', '<Esc>:t+0<CR>==a')
map('i', '<C-S-up>', '<Esc>:t-1<CR>==a')
map('v', '<C-S-down>', ":t '>+0<CR>gv=gv")
map('v', '<C-S-up>', ":t '<-1<CR>gv=gv")

-- Bufferline
map('n', '<leader>k', ':BufferLineCycleNext<CR>')
map('n', '<leader>j', ':BufferLineCyclePrev<CR>')
map('n', '<leader>mk', ':BufferLineMoveNext<CR>')
map('n', '<leader>mj', ':BufferLineMovePrev<CR>')
map('n', '<leader>p', ':BufferLinePick<CR>')

map('n', '<leader>t', ':lua require("FTerm").toggle()<CR>')

-- nvim-tree
map('n', '<leader>nt', ':NvimTreeToggle<CR>')
map('n', '<leader>nr', ':NvimTreeRefresh<CR>')
map('n', '<leader>nf', ':NvimTreeFindFile<CR>')

-- Ranger
map('n', '<leader>rg', ':RnvimrToggle<CR>')

--  incsearch
vim.api.nvim_set_keymap('', '/',  '<Plug>(incsearch-forward)', {})
vim.api.nvim_set_keymap('', '?',  '<Plug>(incsearch-backward)', {})
vim.api.nvim_set_keymap('', 'g/', '<Plug>(incsearch-stay)', {})

-- GitSigns
--  Jump between hunks
map('n', '<leader>gn', ':Gitsigns next_hunk<CR>')
map('n', '<leader>gp', ':Gitsigns prev_hunk<CR>')

--  Hunk-add and hunk-revert for chunk staging
map('n', '<leader>ga', ':Gitsigns stage_hunk<CR>')
map('n', '<leader>gr', ':Gitsigns reset_hunk<CR>')
map('n', '<leader>gu', ':Gitsigns undo_stage_hunk<CR>')
map('n', '<leader>gh', ':Gitsigns preview_hunk<CR>')
map('n', '<leader>gf', ':Gitsigns stage_buffer<CR>')

--  Open neogit pane
map('n', '<leader>gs', ':Neogit kind=vsplit<CR>')

-- diffview
map('n', '<leader>dv', ':DiffviewOpen<CR>')
map('n', '<leader>dh', ':DiffviewFileHistory<CR>')
map('n', '<leader>dq', ':tabclose<CR>')
map('n', '<leader>df', ':DiffviewToggleFiles<CR>')
map('n', '<leader>dr', ':DiffviewRefresh<CR>')

--  Hop
map('n', '<leader>w', ':HopWord<CR>')
map('n', '<leader>/', ':HopPattern<CR>')
map('n', '<leader>c', ':HopChar2<CR>')
map('n', '<leader>C', ':HopChar1<CR>')
map('n', '<leader>l', ':HopLineStart<CR>')
map('n', '<leader>L', ':HopLine<CR>')

-- fzf-lua
map('n', '<leader>fF', ':FzfLua files<CR>')
map('n', '<leader>fB', ':FzfLua buffers<CR>')
map('n', '<leader>fL', ':FzfLua lines<CR>')
map('n', '<leader>fG', ':FzfLua live_grep_native<CR>')


map("n", "<leader>ff", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>")
map('n', '<leader>fv', ':Telescope find_files<CR>')
map('n', '<leader>fb', ':Telescope buffers<CR>')
map('n', '<leader>fg', ':Telescope live_grep<CR>')

--  faster scrolling
map('n', '<leader><leader>j', '10<C-e>')
map('n', '<leader><leader>k', '10<C-y>')

-- Startify
map('n', '<leader>Ss', ':SSave<CR>')
map('n', '<leader>Sc', ':SClose<CR>')
map('n', '<leader>Sd', ':SDelete<CR>')
