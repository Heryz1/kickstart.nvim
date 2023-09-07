
-- [[ Setting options ]]
-- See `:help vim.o`

vim.o.ignorecase = true -- Les recherches ne sont pas case sensitive

-- vim.o.showmatch = true
-- vim.o.autoindent = true -- use the identation of the previous line
-- vim.o.number = true
-- vim.o.wildmode = "longest,list"
-- vim.o.tabstop = 4 -- Number of colons occupied by a tab
-- vim.o.expandtab = true -- Replace tab with spaces
-- vim.o.shiftwidth = 4 -- Number of space during a << >> tab
-- vim.o.softtabstop = 4 -- Number of spaces when pushing a tab
-- vim.o.smarttab = true -- Add the number of space during shiftwidth, tabstop and softtabstop
-- vim.o.showcmd = true -- When writing a command, it is shown in the lower part of the window
-- vim.o.wildmenu = true -- Allow to autocomplet
vim.o.cursorline         = true -- Show the line where the cursor is
vim.o.cursorcolumn       = true -- show the column where the cursor is
vim.o.relativenumber     = true -- Show the relative line number next to the current line
vim.o.cc                 = "100" -- set a colon border at 100 characters
vim.o.hlsearch           = 1 -- Set Highlight 

-- Configure the characters used for end of line, tab and space
vim.opt.listchars = {
  tab = '·|',
  trail = '·',
  space = '·',
  eol = '↴'
}

-- Remove r : We don't want to set comment at every CR
-- Remove o : We don't want to set comment at every o or O
-- Add a : To auto format comment paragraph. If error check "h auto-format"
-- Delete a : It is very intrusive, and join lines to easily !
-- Remove l : to Automatically format long lines 
vim.opt.formatoptions = "jcql" -- Before the value was jcroql

-- Set textwidth to 100
vim.opt.textwidth = 100
-- Help on other options
-- 
--
-- Add documentation snippets from friendly-snippets
require'luasnip'.filetype_extend("cpp", {"cppdoc"})
require'luasnip'.filetype_extend("c", {"cdoc"})

