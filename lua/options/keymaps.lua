-- Basic
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", function() vim.cmd(":Ex") end)
vim.keymap.set("n", "<C-a>", "m0gg<S-v>G")
--

-- Harpoon
TOGGLE_MENU_KEY = "<leader>hf"
ADD_KEY = "<leader>ha"
SELECT1_KEY = "<leader>hq"
SELECT2_KEY = "<leader>hw"
SELECT3_KEY = "<leader>he"
SELECT4_KEY = "<leader>hr"
SET1_KEY = "<leader>haq"
SET2_KEY = "<leader>haw"
SET3_KEY = "<leader>hae"
SET4_KEY = "<leader>har"
DELETE_LIST_KEY = "<leader>hd"
ADD_AND_DELETE_OLD_LIST_KEY = "<leader>hA"
--

-- inc_rename
INC_RENAME = "<leader>r"
--

-- LSP
SHOW_INFO = "<leader>i"
GO_TO_DEFENITION = "<C-b>"
SHOW_ACTION = "<leader>ca"
--

-- telescope
TELESCOPE_FIND_FILES = "<C-n>"
TELESCOPE_LIVE_GREP = "<C-f>"
TELESCOPE_BUFFERS = "<leader>bl"
--

-- none-ls
NONE_LS_FORMAT = "<leader>gf"
--

-- neo_tree
NEO_TREE_FILE_SYSTEM = "<leader>f"
