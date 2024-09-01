vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Icons
  use 'nvim-tree/nvim-web-devicons'
  -- Indent lines blankline plugin
  use "lukas-reineke/indent-blankline.nvim"
  -- Telescope 
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
 use {
    'numToStr/Comment.nvim',
}
  -- Colorscheme setup
  use ({
	  "rebelot/kanagawa.nvim",
	  as = 'kana',
	  config = function()
	  vim.cmd('colorscheme kanagawa-wave')
	  end
})
 -- Colorizer
 use 'norcalli/nvim-colorizer.lua'

 -- Treesitter
 use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
 -- NVIM Tree
 use {
     "nvim-tree/nvim-tree.lua",
  }
 -- Harpoon
 use ('ThePrimeagen/harpoon')

 -- Lua line
 use {
	'nvim-lualine/lualine.nvim',
	 requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

 -- Toogle terminal
 use "akinsho/toggleterm.nvim"

 -- LSP
 use {
     "williamboman/mason.nvim",
     "williamboman/mason-lspconfig.nvim",
     "neovim/nvim-lspconfig",
     'hrsh7th/nvim-cmp', -- Autocompletion plugin
     'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp
     'saadparwaiz1/cmp_luasnip', -- Snippets source for nvim-cmp
     'L3MON4D3/LuaSnip',
 }
 -- Code Snipets
 use 'hrsh7th/vim-vsnip'
 use'hrsh7th/vim-vsnip-integ'
 -- Copilot for auto-completion
 use "github/copilot.vim"

 end)
