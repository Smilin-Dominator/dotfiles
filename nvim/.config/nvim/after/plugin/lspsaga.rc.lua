local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.setup();

local keymap = vim.keymap.set;
local opts = { noremap = true, silent = true }

-- Keymaps
keymap("n","na", "<cmd>Lspsaga code_action<CR>", opts)
keymap("n", "nr", "<cmd>Lspsaga rename<CR>", opts)
keymap("n", "nd", "<cmd>Lspsaga hover_doc<CR>", opts)
keymap("n", "nt", "<cmd>Lspsaga term_toggle<CR>", opts)
