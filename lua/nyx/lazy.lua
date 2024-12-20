-- bootstrap lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyurl = 'https://github.com/folke/lazy.nvim.git'
    local out = vim.fn.system({ 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyurl, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out,                            "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

-- setup lazy.nvim
prequire("lazy").setup({
    spec = {
        { import = "plugins.ui" },
        { import = "plugins.dev" },
        { import = "plugins.ux" },
        { import = "plugins.mini" },
        { import = "plugins.snacks" }
    },
    install = {
        colorscheme = { "onedark", "default" },
    },
    checker = {
        enabled = true,
        notify = false
    },
    dev = {
        path = "~/Documents/code/nvim",
        patterns = { "valnyx17" },
        fallback = true,
    },
    defaults = {
        lazy = false,
        version = false,
    },
    performance = {
        rtp = {
            -- disable some rtp plugins
            disabled_plugins = {
                "gzip",
                -- "matchit",
                -- "matchparen",
                "netrwPlugin",
                "tarPlugin",
                "tohtml",
                "tutor",
                "zipPlugin",
            },
        },
    },
})
