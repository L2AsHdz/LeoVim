local trouble = require("trouble.providers.telescope")
local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

telescope.setup({
    defaults = {
        prompt_prefix = "🔍",
        selection_caret = " ",
        path_display = { "smart" },
        mappings = {
            i = { ["<c-t>"] = trouble.open_with_trouble },
            n = { ["<c-t>"] = trouble.open_with_trouble }
        }
    },
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case"
        }
    }
})

telescope.load_extension('fzf')
telescope.load_extension('neoclip')
telescope.load_extension('packer')
telescope.load_extension("notify")
