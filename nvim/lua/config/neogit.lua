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
    },
    disable_context_highlighting = true,
    disable_insert_on_commit = false,
    disable_commit_confirmation = true,
    mappings = {
        status = {
            ["p"] = "PushPopup",
            ["P"] = "PullPopup"
        }
    }
})
