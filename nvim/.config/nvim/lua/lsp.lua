-- Mason
local status, mason = pcall(require, "mason" )
if (not status) then return end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then return end

mason.setup({});

lspconfig.setup({});

-- Neovim LSP
local status3, nvim_lsp = pcall(require, "lspconfig" )
if (not status3) then return end

nvim_lsp.lua_ls.setup({}); -- Lua
nvim_lsp.pyright.setup({}); -- Python
nvim_lsp.hls.setup({}); -- Haskell
nvim_lsp.nixd.setup({}); -- Nix
nvim_lsp.texlab.setup({}); -- LaTeX

