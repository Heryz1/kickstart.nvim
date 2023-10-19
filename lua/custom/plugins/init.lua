-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{
		-- Not useful as friendly-snippet already has documentation snippets for C/CPP languages
		-- "danymat/neogen", 
		-- dependencies = "nvim-treesitter/nvim-treesitter",
		-- config = function() 
		-- 	require('neogen').setup({ snippet_engine = "luasnip" })
		-- end
		-- {
		-- 	"m4xshen/hardtime.nvim",
		-- 	dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
		-- 	opts = {}
		-- },
		{
			'tzachar/highlight-undo.nvim',
			opts = {
			},
		},
		{
			'skywind3000/asyncrun.vim',
			-- opts = {},
		},
		-- {
		-- 	"nvim-treesitter/nvim-treesitter-context",
		-- 	event = "LazyFile",
		-- 	enabled = true,
		-- 	opts = { mode = "cursor" },
		-- 	keys = {
		-- 		{
		-- 			"<leader>ut",
		-- 			function()
		-- 				local Util = require("lazyvim.util")
		-- 				local tsc = require("treesitter-context")
		-- 				tsc.toggle()
		-- 				if Util.inject.get_upvalue(tsc.toggle, "enabled") then
		-- 					Util.info("Enabled Treesitter Context", { title = "Option" })
		-- 				else
		-- 					Util.warn("Disabled Treesitter Context", { title = "Option" })
		-- 				end
		-- 			end,
		-- 			desc = "Toggle Treesitter Context",
		-- 		},
		-- 	},
		-- },
	}
}
