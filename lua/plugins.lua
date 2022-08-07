require('packer').startup(function()

	-- packer
	use 'wbthomason/packer.nvim'

	--theme
	use 'folke/tokyonight.nvim'

	--true -> false or false -> true
	use 'AndrewRadev/switch.vim'

  -- auto save
  use "Pocco81/AutoSave.nvim"

	-- tree
  use 'kyazdani42/nvim-tree.lua'

  use 'kyazdani42/nvim-web-devicons'

	-- status line
  use 'nvim-lualine/lualine.nvim'

	-- treesitter(代码高亮)
	use 'nvim-treesitter/nvim-treesitter'

	-- bufferline
	use 'akinsho/bufferline.nvim'

	--cs 替换 ds 删除 yss 添加
  use 'tpope/vim-surround'

  --成对括号
  use "windwp/nvim-autopairs"

  -- lsp
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

	-- indent
	use 'lukas-reineke/indent-blankline.nvim'

	-- emmet
	use 'mattn/emmet-vim'
	
  -- css color
  use 'NvChad/nvim-colorizer.lua'

  -- 注释
  use 'numToStr/Comment.nvim'

  -- 浮动终端
	use 'akinsho/toggleterm.nvim'
  
	-- snippets
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'
	use 'L3MON4D3/LuaSnip'

end)
