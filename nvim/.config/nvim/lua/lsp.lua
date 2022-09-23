-- Mason
local status, mason = pcall(require, "mason" )
if (not status) then return end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then return end

mason.setup({})

lspconfig.setup {
  ensure_installed = { "sumneko_lua", "tsserver", "pyright" },
}

-- Neovim LSP
local status3, nvim_lsp = pcall(require, "lspconfig" )
if (not status3) then return end

nvim_lsp.tsserver.setup({});
nvim_lsp.sumneko_lua.setup({});
nvim_lsp.pyright.setup({});

