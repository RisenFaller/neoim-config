return {
	"smjonas/inc-rename.nvim",
	config = function()
		require("inc_rename").setup({
      vim.keymap.set("n", INC_RENAME, ":IncRename ")
    })
	end,
}
