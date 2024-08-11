
return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },

  config = function()
    local harpoon = require("harpoon")
    harpoon.setup({

      -- select buffer
      vim.keymap.set("n", SELECT1_KEY, function() harpoon:list():select(1) end),
      vim.keymap.set("n", SELECT2_KEY, function() harpoon:list():select(2) end),
      vim.keymap.set("n", SELECT3_KEY, function() harpoon:list():select(3) end),
      vim.keymap.set("n", SELECT4_KEY, function() harpoon:list():select(4) end),

      -- open buffer menu
      vim.keymap.set("n", TOGGLE_MENU_KEY, function() harpoon.ui:toggle_quick_menu(harpoon:list()) end),

      -- add buffer
      vim.keymap.set("n", ADD_KEY, function() harpoon:list():add() end),

      -- Set buffer (TODO)
      -- vim.keymap.set("n", SET1_KEY, function() harpoon:list():set(1) end),
      -- vim.keymap.set("n", SET2_KEY, function() harpoon:list():set(2) end),
      -- vim.keymap.set("n", SET3_KEY, function() harpoon:list():set(3) end),
      -- vim.keymap.set("n", SET4_KEY, function() harpoon:list():set(4) end),

      -- remove buffer list
      vim.keymap.set("n", DELETE_LIST_KEY, function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
        vim.api.nvim_input("<S-v>Gd:wq<CR>")
      end),

      -- remove buffer list and add current buffer
      vim.keymap.set("n", ADD_AND_DELETE_OLD_LIST_KEY, function()
        local buffer_name = vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf())
        harpoon.ui:toggle_quick_menu(harpoon:list())
        vim.api.nvim_input("<S-v>Gc" .. buffer_name .. "<C-[><CR>")
      end),
    })
  end,
}
