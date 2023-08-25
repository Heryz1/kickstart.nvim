-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{
		"danymat/neogen", 
		dependencies = "nvim-treesitter/nvim-treesitter",
		config = function() 
			require('neogen').setup({ snippet_engine = "luasnip" })
		end
		-- Uncomment next line if you want to follow only stable versions
		--     -- version = "*" 
	}
}
