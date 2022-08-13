-- TODO: separar mapeos en distintos archivos por categoria

local map = require('utils.core').map
local split = require('utils.window').split_command
vim.g.mapleader = ' '

-- Keymaps propios
map('n', '<leader>bw', ':w<CR>')
map('n', '<leader>qw', ':q<CR>')
map('n', '<leader>qq', ':qa<CR>')
map('n', '<leader>bW', ':wq<CR>')
map('n', '<leader>qf', ':q!<CR>')
map('n', '<leader>bb', ':Bdelete<CR>')
map('n', '<leader>bo', ':BufferLineCloseRight<CR>|:BufferLineCloseLeft<CR>')
map('n', '<leader>nh', ':noh<CR>')
map('n', '<leader>y', ':%y+<CR>')
map('i', '<C-a>', '<ESC>:%y+<CR>gi')
map('i', '<C-s>', '<ESC>:w<CR>gi')

map('n', ';', ':FineCmdline<CR>')

-- Indent
map('v', '<', '<gv')
map('v', '>', '>gv')

-- fold-cycle
local fold = require('fold-cycle')
map('n', '<CR>', fold.open)
map('n', '<BS>', fold.close)
map('n', '<C-CR>', fold.toggle_all)

-- split
map('n', '<leader>wh', ':sp<CR>')
map('n', '<leader>wv', ':vs<CR>')

-- Mover linea actual o lineas seleccionadas
map('n', '<C-A-J>', ':m+1<CR>==')
map('n', '<C-A-K>', ':m-2<CR>==')
map('i', '<C-A-J>', '<Esc>:m+1<CR>==gi')
map('i', '<C-A-K>', '<Esc>:m-2<CR>==gi')
map('v', '<C-A-J>', ":m '>+1<CR>gv=gv")
map('v', '<C-A-K>', ":m '<-2<CR>gv=gv")

-- Duplicar linea actual o lineas seleccionadas
map('n', '<C-S-J>', ':t+0<CR>==')
map('n', '<C-S-K>', ':t-1<CR>==')
map('i', '<C-S-J>', '<Esc>:t+0<CR>==a')
map('i', '<C-S-K>', '<Esc>:t-1<CR>==a')
map('v', '<C-S-J>', ":t '>+0<CR>gv=gv")
map('v', '<C-S-K>', ":t '<-1<CR>gv=gv")

-- Move between splits
map('n', '<C-h>', function() split('h') end)
map('n', '<C-k>', function() split('k') end)
map('n', '<C-j>', function() split('j') end)
map('n', '<C-l>', function() split('l') end)

-- Resize with arrows
map('n', '<C-A-S-K>', function()
    require('smart-splits').resize_up()
    return require('bufresize').register()
end)
map('n', '<C-A-S-J>', function()
    require('smart-splits').resize_down()
    return require('bufresize').register()
end)
map('n', '<C-A-S-H>', function()
    require('smart-splits').resize_left()
    return require('bufresize').register()
end)
map('n', '<C-A-S-L>', function()
    require('smart-splits').resize_right()
    return require('bufresize').register()
end)

-- Resize mode
map('n', '<leader>wr', function()
    return require('smart-splits').start_resize_mode()
end)

-- WinShift
map('n', '<leader>wm', function()
    require('winshift').cmd_winshift()
    require('bufresize').register()
end)
map('n', '<leader>ws', function()
    require('winshift').cmd_winshift('swap')
end)

map('n', '<leader>ww', function()
    return require('utils.window').max_or_equal()
end)

map('n', '<leader>wp', function()
    return require('nvim-window').pick()
end)

map('n', '<TAB>', '<Plug>(CybuLastusedNext)')
map('n', '<S-TAB>', '<Plug>(CybuLastusedPrev)')

-- Bufferline
map('n', '<S-k>', ':BufferLineCycleNext<CR>')
map('n', '<S-j>', ':BufferLineCyclePrev<CR>')
map('n', '<leader>bk', ':BufferLineMoveNext<CR>')
map('n', '<leader>bj', ':BufferLineMovePrev<CR>')
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
map('n', '<leader>nn', [[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>]])
map('n', '<leader>nN', [[<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>]])

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
map('n', '[w', function()
    return require('illuminate').next_reference({ reverse = true, wrap = true })
end)
map('n', ']w', function()
    return require('illuminate').next_reference({ wrap = true })
end)

-- dial
vim.api.nvim_set_keymap('n', '<C-a>', require('dial.map').dec_normal('mygroup'), { noremap = true })
vim.api.nvim_set_keymap('n', '<C-s>', require('dial.map').inc_normal('mygroup'), { noremap = true })

-- specs
map('n', '<leader><leader>', function() return require("specs").show_specs() end)

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
map('n', '<leader>dq', ':DiffviewClose<CR>')
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
local scroll = require('cinnamon.scroll').scroll
local hlslens = require('hlslens').start

map({ 'n', 'x' }, 'gg', function() scroll('gg', 1) end)
map({ 'n', 'x' }, 'G', function() scroll('G', 1, 1) end)
map({ 'n', 'x' }, '0', function() scroll('0') end)
map({ 'n', 'x' }, '^', function() scroll('^') end)
map({ 'n', 'x' }, '$', function() scroll('$', 0, 1) end)
map({ 'n', 'x' }, '{', function() scroll('{', 1) end)
map({ 'n', 'x' }, '}', function() scroll('}', 1) end)
map('n', 'n', function() scroll('n', 1) end)
map('n', 'N', function() scroll('N', 1) end)
map('n', '*', function() scroll('*', 1); hlslens() end)
map('n', '#', function() scroll('#', 1); hlslens() end)
map('n', 'g*', function() scroll('g*', 1); hlslens() end)
map('n', 'g#', function() scroll('g#', 1); hlslens() end)
map('n', 'zz', function() scroll('zz', 0, 1) end)
map('n', 'zt', function() scroll('zt', 0, 1) end)
map('n', 'zb', function() scroll('zb', 0, 1) end)
map('n', '<ScrollWheelUp>', function() scroll('k', 1, 0) end)
map('n', '<ScrollWheelDown>', function() scroll('j', 1, 0) end)

--Substitute
local substitute = require('substitute')
local exchange = require('substitute.exchange')
map('n', 's', substitute.operator)
map('n', 'ss', substitute.line)
map('n', 'S', substitute.eol)
map('x', 's', substitute.visual)

map('n', 'sx', exchange.operator)
map('n', 'sxx', exchange.line)
map('x', 'X', exchange.visual)
map('n', 'sxc', exchange.cancel)

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

-- todo-comments
map('n', '<leader>tt', ':TodoTelescope<CR>')
map('n', '<leader>tb', ':TodoTrouble<CR>')
map('n', '<leader>tq', ':TodoQuickFix<CR>')

-- comment-box
map({ 'n', 'v' }, '<leader>db', ':CBcbox<CR>')
map('n', '<leader>dl', ':CBline<CR>')

-- Telescope
local builtin = require('telescope.builtin')
local themes = require('telescope.themes')
map('n', '<leader>ff', function()
    return builtin.find_files(themes.get_dropdown({ previewer = false }))
end)
map('n', '<leader>fF', function()
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
map('n', '<leader>pt', ':PackerStatus<CR>')
map('n', '<leader>pi', ':PackerInstall<CR>')
map('n', '<leader>pd', ':PackerClean<CR>')
