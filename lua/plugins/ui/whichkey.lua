return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
        local wk = require('which-key')
        wk.setup({
            delay = 500,
            icons = {
                mappings = false,
            },
            layout = { align = 'center' },
            triggers = {
                { "<leader>", mode = { "n", "v" } },
            },
            plugins = {
                spelling = {
                    enabled = false
                },
            },
            preset = "classic",
            win = { border = tools.ui.cur_border },
        })
        vim.api.nvim_set_hl(0, "WhichKeyValue", { link = "NormalFloat" })
        vim.api.nvim_set_hl(0, "WhichKeyDesc", { link = "NormalFloat" })
    end
}
