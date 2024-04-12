vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number relativenumber")
vim.cmd("set clipboard+=unnamedplus")

change_detection = { notify = false }

vim.g.mapleader = " "

-- vim.keymap.set("n", "<leader>e", function() vim.cmd(":Ex") end)
-- vim.keymap.set("n", "<leader>q", function() vim.cmd(":q") end)
-- vim.keymap.set("n", "<leader>Q", function() vim.cmd(":q!") end)
-- vim.keymap.set("n", "<leader>s", function() vim.cmd(":w") print("Saved!") end)
-- vim.keymap.set("n", "<leader>S", function() vim.cmd(":wq") print("Saved!") end)
vim.keymap.set("n", "<C-a>", "gg<S-v>G")
