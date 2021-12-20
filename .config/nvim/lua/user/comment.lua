require('nvim_comment').setup()
local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap
-- Easy comments
keymap("n", "<leader><cr>", "<cmd>CommentToggle<cr>", opts)
keymap("v", "<leader><cr>", ":'<,'>CommentToggle<cr>", opts)
