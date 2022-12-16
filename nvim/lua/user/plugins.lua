local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
	git = {
		clone_timeout = 300, -- Timeout, in seconds, for git clones
	},
})

-- Install your plugins here
return packer.startup(function(use)
	-- My plugins here
	use({ "wbthomason/packer.nvim" }) -- Have packer manage itself
	use({ "nvim-lua/plenary.nvim" }) -- Useful lua functions used by lots of plugins
	use({ "windwp/nvim-autopairs" }) -- Autopairs, integrates with both cmp and treesitter
	use({ "numToStr/Comment.nvim" })
	use({ "JoosepAlviste/nvim-ts-context-commentstring" })
	use({ "kyazdani42/nvim-web-devicons" })
	use({ "kyazdani42/nvim-tree.lua", commit = "7282f7de8aedf861fe0162a559fc2b214383c51c" })
	use({ "akinsho/bufferline.nvim" })
	use({ "moll/vim-bbye" })
	use({ "nvim-lualine/lualine.nvim" })
	use({ "akinsho/toggleterm.nvim" })
	use({ "ahmedkhalf/project.nvim" })
	use({ "lewis6991/impatient.nvim" })
	use({ "lukas-reineke/indent-blankline.nvim" })
	use({ "goolord/alpha-nvim" })

	-- Colorschemes
   use "lunarvim/onedarker.nvim"
  use { "catppuccin/nvim", as = "catppuccin" }
  use "lunarvim/darkplus.nvim"
  use "folke/tokyonight.nvim"
  use 'tiagovla/tokyodark.nvim'
	use("cpea2506/one_monokai.nvim")
  use { 'Everblush/everblush.nvim', as = 'everblush' }

 --HTML 
 use  'windwp/nvim-ts-autotag'

	-- cmp plugins
	use({ "hrsh7th/nvim-cmp" }) -- The completion plugin
	use({ "hrsh7th/cmp-buffer" }) -- buffer completions
	use({ "hrsh7th/cmp-path" }) -- path completions
	use({ "saadparwaiz1/cmp_luasnip" }) -- snippet completions
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "hrsh7th/cmp-nvim-lua" })
  use   'David-Kunz/cmp-npm'
  --utilities
  use {"ray-x/lsp_signature.nvim",}
  use 'axelvc/template-string.nvim'
    use   "narutoxy/dim.lua"
  use 'wakatime/vim-wakatime'

	-- snippets
	use({ "L3MON4D3/LuaSnip" }) --snippet engine
	use({ "rafamadriz/friendly-snippets" }) -- a bunch of snippets to use

	-- LSP
	-- use { "williamboman/nvim-lsp-installer", commit = "e9f13d7acaa60aff91c58b923002228668c8c9e6" } -- simple to use language server installer
	use({ "neovim/nvim-lspconfig" }) -- enable LSP
	use({ "williamboman/mason.nvim" })
	use({ "williamboman/mason-lspconfig.nvim" })
	use({ "jose-elias-alvarez/null-ls.nvim" }) -- for formatters and linters
	use({ "RRethy/vim-illuminate" })
	use("hrsh7th/cmp-nvim-lsp-signature-help")
	--renamer
	use({ "filipdutescu/renamer.nvim", branch = "master" })
	--surrond
	use("kylechui/nvim-surround")
	--ts-rainbow
	use("p00f/nvim-ts-rainbow")
	--colorizer
	use("norcalli/nvim-colorizer.lua")
  use { 'mrshmllow/document-color.nvim'}



	use({ "michaelb/sniprun", run = "bash ./install.sh" })
	--code runner
  --copilot  
  -- use 'github/copilot.vim'
  use {
    "zbirenbaum/copilot.lua",
}
  use {
  "zbirenbaum/copilot-cmp",
  after = { "copilot.lua" },
  config = function ()
    require("copilot_cmp").setup()
  end
}
 
  


	use({ "CRAG666/code_runner.nvim", requires = "nvim-lua/plenary.nvim" })
	use({ "0x100101/lab.nvim", run = "cd js && npm ci", requires = { "nvim-lua/plenary.nvim" } })
	-- Telescope
	use({ "nvim-telescope/telescope.nvim" })

  -- rest nvim 
use 'rest-nvim/rest.nvim'




	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
	})

	-- Git
	use({ "lewis6991/gitsigns.nvim" })
	-- Hop
	use({ "phaazon/hop.nvim", branch = "v2" })
	--notify
	use("rcarriga/nvim-notify")
	--nlsp
	use("tamago324/nlsp-settings.nvim")
	-- DAP
	use({ "mfussenegger/nvim-dap" })
	use({ "rcarriga/nvim-dap-ui" })
	use({ "ravenxrz/DAPInstall.nvim" })

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)

