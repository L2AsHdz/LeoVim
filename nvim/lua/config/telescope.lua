local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

telescope.setup({
    defaults = {
        prompt_prefix = " ",
        selection_caret = " ",
        path_display = { "smart" }
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
-- telescope.load_extension('projects')
