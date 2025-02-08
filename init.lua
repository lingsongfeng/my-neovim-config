require("config.lazy")

vim.o.undodir = vim.fn.expand('~/.vim/undodir')
vim.o.undofile = true

-- vim.api.nvim_create_autocmd("FileType", {
--    pattern = { "c", "cpp", "cc", "h", "hpp" },
--    callback = function()
--        vim.bo.tabstop = 4
--	vim.bo.shiftwidth = 4
--	vim.bo.expandtab = true
--	bim.bo.cindent = true
--    end,
-- })

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp", "h" },
  callback = function()
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
    vim.opt_local.expandtab = true
  end,
})

