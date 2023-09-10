local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ "phaazon/hop.nvim" },
	{
        "nvim-neo-tree/neo-tree.nvim",
    	branch = "v3.x",
    	dependencies = {
      	    "nvim-lua/plenary.nvim",
      		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      		"MunifTanjim/nui.nvim",
			"s1n7ax/nvim-window-picker"
		}
	},
	{
		"nvim-treesitter/nvim-treesitter"
	},
	{
		"neovim/nvim-lspconfig"
	},
	{
		"joshdick/onedark.vim"
	},
    {
        "neovim/nvim-lspconfig",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/nvim-cmp",
        "L3MON4D3/LuaSnip"
    },
    {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim"
    },
    {
        "nvim-telescope/telescope.nvim"
    },
    {
        "jose-elias-alvarez/null-ls.nvim"
    },
    { 
        "catppuccin/nvim", 
        name = "catppuccin", 
        priority = 1000 
    },
    { "nvim-lualine/lualine.nvim",  "nvim-tree/nvim-web-devicons" }   

})
