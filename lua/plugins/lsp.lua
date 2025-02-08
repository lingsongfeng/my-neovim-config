return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")
		lspconfig.clangd.setup({
			cmd = { "clangd" },
			filetypes = { "c", "cpp" },
			on_attach = function(_, bufnr)
				local bufopts = { noremap = true, silent = true, buffer = bufnr }
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)  -- 跳转到定义
				vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)        -- 查看文档
				vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts) -- 查看引用

				vim.keymap.set("n", "<Leader>f", function()
					vim.lsp.buf.format({ async = true })
				end, { buffer = bufnr })
			end,
			capabilities = require("cmp_nvim_lsp").default_capabilities(), -- 让补全更强大
		})
	end
}
