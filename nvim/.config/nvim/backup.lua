-- LSP Installer

local status, nvim_lsp_installer = pcall(require, 'nvim_lsp_installer')
if (not status) then return end

nvim_lsp_installer.setup({
				automatic_installation = false,
				ensure_installed = { "tsserver" }
});
print('installer ready')

-- LSP Config

local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end

local protocol = require('vim.lsp.protocol')

local on_attach = function (client, bufnr) 
				-- formatting
				if client.server.capabilities.documentFormattingProvider then
								vim.api.nvim_command [[augroup Format]]
								vim.api.nvim_command [[autocmd! * <buffer>]]
								vim.api.nvim_command [[autocmd! BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
								vim.api.nvim_command [[augroup END]]
				end
end

-- Typescript
nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" },
}
