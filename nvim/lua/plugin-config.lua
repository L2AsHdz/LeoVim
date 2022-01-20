require'hop'.setup()
require("stabilize").setup()
require('which-key').setup()
require('whichkey.register')
require("virt-column").setup()

vim.cmd [[hi NeogitDiffAddHighlight guifg=#2ecc71]]
vim.cmd [[hi NeogitDiffDeleteHighlight guifg=#e74c3c]]

require("neogit").setup({
    integrations = {
        diffview = true
    },
    signs = {
        section = { "", "﬌" },
        item = { "", "﬌" },
        hunk = { "", "" },
    }
})

vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent7 guifg=#f6e58d gui=nocombine]]

require("indent_blankline").setup({
    -- space_char_blankline = " ",
    -- show_current_context = true,
    -- show_current_context_start = true,
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
        "IndentBlanklineIndent7"
    },
})

require('gitsigns').setup({
    signs = {
        add          = {hl = 'GitSignsAdd'   , text = '', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
        change       = {hl = 'GitSignsChange', text = '', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
        delete       = {hl = 'GitSignsDelete', text = '', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
        topdelete    = {hl = 'GitSignsDelete', text = '', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
        changedelete = {hl = 'GitSignsChange', text = '', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    },
    keymaps = {}
})

require('nvim-tree').setup({
    update_focused_file = {
        enable = true,
        update_cwd = false,
        ignore_list = {}
    },
    view = {
        number = true,
        relativenumber = true,
        signcolumn = 'yes'
    }
})

require'nvim-web-devicons'.setup {
  default = true;
}

require("bufferline").setup{
  options = {
    separator_style = "slant",
    offsets = {
        {
            filetype = "NvimTree",
            text = 'NvimTree - File Explorer',
            highlight = "Directory",
            text_align = "center"
        }
    }
  }
}

local autosave = require("autosave")

autosave.setup(
    {
        enabled = true,
        execution_message = "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"),
        events = {"InsertLeave", "TextChanged", "FocusLost"},
        conditions = {
            exists = true,
            filename_is_not = {},
            filetype_is_not = {},
            modifiable = true
        },
        write_all_buffers = false,
        on_off_commands = true,
        clean_command_line_interval = 0,
        debounce_delay = 135
    }
)
