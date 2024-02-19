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
            "danymat/neogen", 
            dependencies = "nvim-treesitter/nvim-treesitter", 
            config = true,
            -- Uncomment next line if you want to follow only stable versions
            -- version = "*" 
        },
        {
            'tzachar/highlight-undo.nvim',
            opts = {
            },
        },
        {
            'skywind3000/asyncrun.vim',
            -- opts = {},
        },
        {
            'rust-lang/rust.vim',
        },
        {
            'Mofiqul/vscode.nvim',
            priority = 1000,
            config = function()
                vim.cmd.colorscheme 'vscode'
            end,
        },
        {
            'rust-lang/rust.vim',
        },
        {
            'kevinhwang91/nvim-bqf',
        },
        -- {
        --   'stevearc/oil.nvim',
        --   opts = {},
        --   -- Optional dependencies
        --   dependencies = { "nvim-tree/nvim-web-devicons" },
        -- },
        {
          "folke/flash.nvim",
          event = "VeryLazy",
          ---@type Flash.Config
          opts = {},
          -- stylua: ignore
          keys = {
            { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
            { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
            { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
            { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
            { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
          },
        },
        {
          "ibhagwan/fzf-lua",
          -- optional for icon support
          dependencies = { "nvim-tree/nvim-web-devicons" },
          config = function()
            -- calling `setup` is optional for customization
            require("fzf-lua").setup({})
          end
        },
        -- plugin to add block of code in a floating window
        -- {
        --     'hoschi/yode-nvim',
        -- }
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
