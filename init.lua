vim.g.maplocalleader = " "
vim.opt.showcmd = true

-- LEADER KEYS
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- GENERAL OPTIONS
vim.opt.backspace     = '2'
vim.opt.showcmd       = true
vim.opt.laststatus    = 2
vim.opt.autowrite     = true
vim.opt.cursorline    = true
vim.opt.autoread      = true
vim.opt.tabstop       = 2
vim.opt.shiftwidth    = 2
vim.opt.shiftround    = true
vim.opt.expandtab     = true
vim.opt.updatetime    = 1

vim.opt.clipboard = "unnamedplus"

-- PLUGIN MANAGER: lazy.nvim bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

-- PLUGINS
require("lazy").setup("plugins")

-- CONFIGURATION MODULES
require("configs.lsp")

-- CORE MODULES
require("core.keymap")
