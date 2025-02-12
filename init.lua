require("config.lazy")

vim.o.undodir = vim.fn.expand('~/.vim/undodir')
vim.o.undofile = true

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp", "h", "lua" },
  callback = function()
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
    vim.opt_local.expandtab = true
  end,
})

