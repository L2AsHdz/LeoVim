local map = require('utils').map
local split = require('split').split_command
vim.g.mapleader = ' '

-- Keymaps propios
map('n', '<leader>w', ':w<CR>')
map('n', '<leader>qw', ':q<CR>')
map('n', '<leader>qq', ':qa<CR>')
map('n', '<leader>W', ':wq<CR>')
map('n', '<leader>qf', ':q!<CR>')
map('n', '<leader>bb', ':Bdelete<CR>')
map('n', '<leader>bo', ':BufferLineCloseRight<CR>|:BufferLineCloseLeft<CR>')
map('n', '<leader>n', ':noh<CR>')
-- map({ 'i', 'v' }, 'ii', '<ESC>')
map('n', '<leader>y', ':%y+<CR>')
map('i', '<C-a>', '<ESC>:%y+<CR>gi')

map('n', ';', ':FineCmdline<CR>')

-- Resize with arrows
map('n', '<C-A-up>', ':resize -2<CR>')
map('n', '<C-A-down>', ':resize +2<CR>')
map('n', '<C-A-left>', ':vertical resize -2<CR>')
map('n', '<C-A-right>', ':vertical resize +2<CR>')

-- Indent
map('v', '<', '<gv')
map('v', '>', '>gv')

-- split
map('n', '<leader>sh', ':sp<CR>')
map('n', '<leader>sv', ':vs<CR>')

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

-- Navigator
-- map('n', '<C-h>', '<CMD>lua require("Navigator").left()<CR>')
-- map('n', '<C-k>', '<CMD>lua require("Navigator").up()<CR>')
-- map('n', '<C-j>', '<CMD>lua require("Navigator").down()<CR>')
-- map('n', '<C-l>', '<CMD>lua require("Navigator").right()<CR>')
-- map('n', '<C-p>', '<CMD>lua require("Navigator").previous()<CR>')

map('n', '<C-h>', function() split('h') end)
map('n', '<C-k>', function() split('k') end)
map('n', '<C-j>', function() split('j') end)
map('n', '<C-l>', function() split('l') end)

map('n', '<C-x>', function()
    return require('utils').focus_max_or_equal()
end)

map('n', '<TAB>', ':CybuNext<CR>')
map('n', '<S-TAB>', ':CybuPrev<CR>')

-- Bufferline
map('n', '<S-k>', ':BufferLineCycleNext<CR>')
map('n', '<S-j>', ':BufferLineCyclePrev<CR>')
map('n', '<leader>k', ':BufferLineMoveNext<CR>')
map('n', '<leader>j', ':BufferLineMovePrev<CR>')
map('n', '<leader>bp', ':BufferLinePick<CR>')
map('n', '<leader>bc', ':BufferLinePickClose<CR>')

-- MarkdownPreview
map('n', '<leader>mm', ':MarkdownPreviewToggle<CR>')

-- nvim-tree
map('n', '<leader>nt', ':NvimTreeToggle<CR>')
map('n', '<leader>nr', ':NvimTreeRefresh<CR>')
map('n', '<leader>nf', ':NvimTreeFindFile<CR>')

-- sidebar-nvim
map('n', '<leader>ll', ':SymbolsOutline<CR>')
-- map('n', '<leader>lu', ':SidebarNvimUpdate<CR>')
-- map('n', '<leader>lf', ':SidebarNvimFocus<CR>')

-- Ranger
map('n', '<leader>rg', ':RnvimrToggle<CR>')

-- Hlslens
map('n', 'm', [[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>]])
map('n', 'M', [[<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>]])

-- SearchBox
map('n', '<leader>s/', ':SearchBoxMatchAll<CR>')
map('n', '<leader>s.', ':SearchBoxMatchAll -- <C-r>=expand("<cword>")<CR><CR>')
map('n', '<leader>s?', ':SearchBoxMatchAll reverse=true<CR>')
map('n', '<leader>sR', ':SearchBoxReplace confirm="menu"<CR>')
map('n', '<leader>sr', ':SearchBoxReplace confirm="menu" -- <C-r>=expand("<cword>")<CR><CR>')

--Spectre
map('n', '<leader>rs', function()
    return require('spectre').open({ is_insert_mode = true })
end)
map('n', '<leader>rw', function()
    return require('spectre').open_visual({ select_word = true, is_insert_mode = true })
end)

-- Illuminate navigation
map('n', '<A-u>', function()
    return require('illuminate').next_reference({ reverse = true, wrap = true })
end)
map('n', '<A-o>', function()
    return require('illuminate').next_reference({ wrap = true })
end)

-- GitSigns
--  Jump between hunks
map('n', '<leader>gn', ':Gitsigns next_hunk<CR>')
map('n', '<leader>gp', ':Gitsigns prev_hunk<CR>')

--  Hunk-add and hunk-revert for chunk staging
map('n', '<leader>ga', ':Gitsigns stage_hunk<CR>')
map('n', '<leader>gr', ':Gitsigns reset_hunk<CR>')
map('n', '<leader>gu', ':Gitsigns undo_stage_hunk<CR>')
map('n', '<leader>gh', ':Gitsigns preview_hunk<CR>')
map('n', '<leader>gb', ':Gitsigns stage_buffer<CR>')
map('n', '<leader>gB', ':Gitsigns reset_buffer<CR>')
map('n', '<leader>gg', ':Gitsigns refresh<CR>')
map('n', '<leader>gG', ':Gitsigns attach<CR>')

--  Open neogit pane
map('n', '<leader>gs', ':Neogit kind=vsplit<CR>')

-- diffview
map('n', '<leader>dv', ':DiffviewOpen<CR>')
map('n', '<leader>dh', ':DiffviewFileHistory<CR>')
map('n', '<leader>dq', ':tabclose<CR>')
map('n', '<leader>df', ':DiffviewToggleFiles<CR>')
map('n', '<leader>dr', ':DiffviewRefresh<CR>')

--  Hop
map('n', '<leader>hw', ':HopWord<CR>')
map('n', '<leader>/', ':HopPattern<CR>')
map('n', '<leader>hc', ':HopChar2<CR>')
map('n', '<leader>hC', ':HopChar1<CR>')
map('n', '<leader>hl', ':HopLineStart<CR>')
map('n', '<leader>hL', ':HopLine<CR>')

-- Cinnamon
-- Start/end of file and line number movements:
local scroll = require('cinnamon.scroll').scroll
local hlslens = require('hlslens').start
map({ 'n', 'x' }, 'gg', function()
    scroll('gg')
end)
map({ 'n', 'x' }, 'G', function()
    scroll('G', 0, 1)
end)

-- Start/end of line:
map({ 'n', 'x' }, '0', function()
    scroll('0')
end)
map({ 'n', 'x' }, '^', function()
    scroll('^')
end)
map({ 'n', 'x' }, '$', function()
    scroll('$', 0, 1)
end)

-- Previous/next search result:
map('n', 'n', function()
    scroll('n', 1)
end)
map('n', 'N', function()
    scroll('N', 1)
end)
map('n', '*', function()
    scroll('*', 1)
    hlslens()
end)
map('n', '#', function()
    scroll('#', 1)
    hlslens()
end)
map('n', 'g*', function()
    scroll('g*', 1)
    hlslens()
end)
map('n', 'g#', function()
    scroll('g#', 1)
    hlslens()
end)

--Substitute
map('n', 's', function() return require('substitute').operator() end)
map('n', 'ss', function() return require('substitute').line() end)
map('n', 'S', function() return require('substitute').eol() end)
map('x', 's', function() return require('substitute').visual() end)

map('n', 'sx', function() return require('substitute.exchange').operator() end)
map('n', 'sxx', function() return require('substitute.exchange').line() end)
map('x', 'X', function() return require('substitute.exchange').visual() end)
map('n', 'sxc', function() return require('substitute.exchange').cancel() end)

-- Rest
map('n', '<leader>rr', '<Plug>RestNvim')
map('n', '<leader>rl', '<Plug>RestNvimLast')
map('n', '<leader>rp', '<Plug>RestNvimPreview')

-- Sniprun
map({ 'n', 'v' }, '<leader>cr', '<Plug>SnipRun')
map({ 'n', 'v' }, '<leader>cR', '<Plug>SnipReset')
map({ 'n', 'v' }, '<leader>cC', '<Plug>SnipClose')

-- Code_Runner
map('n', '<leader>rc', ':RunCode<CR>')
map('n', '<leader>rf', ':RunFile<CR>')
map('n', '<leader>rj', ':RunProject<CR>')
map('n', '<leader>rC', ':RunClose<CR>')

-- Telescope
map('n', '<leader>ff', function()
    local builtin = require('telescope.builtin')
    local themes = require('telescope.themes')
    return builtin.find_files(themes.get_dropdown({ previewer = false }))
end)
map('n', '<leader>fF', function()
    local builtin = require('telescope.builtin')
    local themes = require('telescope.themes')
    return builtin.find_files(themes.get_dropdown({ previewer = false, hidden = true }))
end)
map('n', '<leader>fv', ':Telescope find_files<CR>')
map('n', '<leader>fb', ':Telescope buffers<CR>')
map('n', '<leader>fg', ':Telescope live_grep theme=ivy <CR>')
map('n', '<leader>fi', ':Telescope builtin<CR>')
map('n', '<leader>fh', ':Telescope help_tags<CR>')
map('n', '<leader>fn', ':Telescope neoclip<CR>')
map('n', '<leader>fo', ':Telescope oldfiles<CR>')
map('n', '<leader>fp', ':Telescope packer<CR>')
map('n', '<leader>fN', ':Telescope notify <CR>')

-- SessionManager
map('n', '<leader>ss', ':SessionManager save_current_session<CR>')
map('n', '<leader>sl', ':SessionManager load_session<CR>')
map('n', '<leader>sd', ':SessionManager delete_session<CR>')

-- packer
map('n', '<leader>pu', ':PackerUpdate<CR>')
map('n', '<leader>pc', ':PackerCompile<CR>')
map('n', '<leader>ps', ':PackerSync<CR>')
map('n', '<leader>pi', ':PackerInstall<CR>')
map('n', '<leader>pd', ':PackerClean<CR>')
