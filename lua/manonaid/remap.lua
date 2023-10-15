-- Set <space> as the leader key
-- See `:help mapleader`
-- NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set " fx" to get to file explorer quickly
vim.keymap.set("n", "<leader>fx", vim.cmd.Ex)

