-- keymaps
local toggle_menu_key = "<leader>hf"
local add_key = "<leader>ha"
local select1_key = "<leader>hq"
local select2_key = "<leader>hw"
local select3_key = "<leader>he"
local select4_key = "<leader>hr"
local delete_list_key = "<leader>hd"
local add_and_delete_old_list_key = "<leader>hA"

return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },

  config = function()
    local harpoon = require("harpoon")
    harpoon.setup({

      -- select buffer
      vim.keymap.set("n", select1_key, function() harpoon:list():select(1) end),
      vim.keymap.set("n", select2_key, function() harpoon:list():select(2) end),
      vim.keymap.set("n", select3_key, function() harpoon:list():select(3) end),
      vim.keymap.set("n", select4_key, function() harpoon:list():select(4) end),

      -- open buffer menu
      vim.keymap.set("n", toggle_menu_key, function() harpoon.ui:toggle_quick_menu(harpoon:list()) end),

      -- add buffer
      vim.keymap.set("n", add_key, function() harpoon:list():add() end),

      -- remove buffer list
      vim.keymap.set("n", delete_list_key, function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
        vim.api.nvim_input("<S-v>Gd:wq<CR>")
      end),

      -- remove buffer list and add current buffer
      vim.keymap.set("n", add_and_delete_old_list_key, function()
        local buffer_name = vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf())
        harpoon.ui:toggle_quick_menu(harpoon:list())
        vim.api.nvim_input("<S-v>Gc" .. buffer_name .. "<C-[><CR>")
      end),
    })
  end,
}
