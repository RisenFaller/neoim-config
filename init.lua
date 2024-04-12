local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("options")
require("lazy").setup("plugins")

-- for vim plugins
local Plug = vim.fn['plug#']
vim.call('plug#begin')

Plug 'easymotion/vim-easymotion'

vim.call('plug#end')

-- reloading
vim.api.nvim_input(":PlugInstall<CR>q")
