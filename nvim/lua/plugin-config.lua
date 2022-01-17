require'hop'.setup()
require("stabilize").setup()
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
        events = {"InsertLeave", "TextChanged"},
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
