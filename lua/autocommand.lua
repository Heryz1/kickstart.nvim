-- Auto command to automatically format on save !
-- vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]
-- vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]
-- vim.cmd [[autocmd BufWritePre  * lua vim.lsp.buf.formatting_sync()]]
-- -- Auto command to automatically save when goind back to normal mode"
vim.cmd [[autocmd InsertLeave * :write  ]]

-- vim.api.nvim_create_autocmd('FocusLost', {
--   group = vim.api.nvim_create_augroup('FocusLostStuff', { clear = true }),
--   callback = function(ev)
--     vim.cmd.stopinsert()
--     vim.cmd.wall { mods = { silent = true } }
--   end,
-- })
