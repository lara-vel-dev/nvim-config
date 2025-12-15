local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- correct mapping
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- setup lazy.nvim
require("lazy").setup({
    spec = {
        -- import plugins
        { import = "plugins" },
    },

    -- automatically check for plugin updates
    checker = { enabled = true }
})
