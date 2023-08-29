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
	}
}
