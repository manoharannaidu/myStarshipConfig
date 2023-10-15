-- Greetings!!
print("<=< Once you start down the dark path, forever will it dominate your destiny. Consume you, it will. >=>")

-- Personalization
require("manonaid")

-- Install package manager
-- https://github.com/folke/lazy.nvim
-- `:help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- NOTE: Here is where you install your plugins.
--  You can configure plugins using the `config` key.
--
--  You can also configure plugins after the setup call,
--    as they will be available in your neovim runtime.
require('lazy').setup({

-- Fuzzy Finder (files, lsp, etc)
{
	'nvim-telescope/telescope.nvim',
	branch = '0.1.x',
	dependencies = {
		'nvim-lua/plenary.nvim',
		-- Fuzzy Finder Algorithm which requires local dependencies to be built.
		-- Only load if `make` is available. Make sure you have the system
		-- requirements installed.
	{
		'nvim-telescope/telescope-fzf-native.nvim',
		-- NOTE: If you are having trouble with this installation,
		-- refer to the README for telescope-fzf-native for more instructions.
		build = 'make',
		cond = function()
			return vim.fn.executable 'make' == 1
		end,
	},
},
},
{
    -- Set forth the Great WAVE!!
    'rebelot/kanagawa.nvim',
    priority = 1000,
    opts = {
	    transparent = true,
	    compile = "false",
	    commentStyle = { italic = true },
	    keywordStyle = { italic = true},
	    statementStyle = { bold = true },
	  },
},

{
	-- Highlight, edit, and navigate code
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
},

})

-- Load treesitter
require('nvim-treesitter.configs').setup ({
	-- Add languages to be installed here that you want installed for treesitter
	ensure_installed = { 'python' },

	-- Autoinstall languages that are not installed. Defaults to false (but you can change for yourself!)
	auto_install = true,

	highlight = { enable = true },
	indent = { enable = true },
})

-- Kanagawa Load
require("kanagawa").setup({})
vim.cmd("colorscheme kanagawa")

-- [[ Configure Telescope ]]
-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files, { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })


