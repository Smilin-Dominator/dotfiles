local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.setup();

local keymap = vim.keymap.set;
local opts = { noremap = true, silent = true }

-- Keymaps
keymap({"n","v"}, "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)
keymap("n", "gr", "<cmd>Lspsaga rename<CR>", opts)
keymap("n", "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
keymap("n", "<A-d>", "<cmd>Lspsaga open_floaterm<CR>", opts)
