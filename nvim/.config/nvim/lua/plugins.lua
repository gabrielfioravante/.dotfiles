require("lazy").setup({
	-- Languages
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
	{ "neovim/nvim-lspconfig" },
	{
		"stevearc/conform.nvim",
		opts = {},
	},
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/nvim-cmp" },
	{ "L3MON4D3/LuaSnip" },

	-- Tressiter
	{ "nvim-treesitter/nvim-treesitter", lazy = false, build = ":TSUpdate" },
	"nvim-treesitter/nvim-treesitter-context",

	-- Telescope
	"nvim-lua/popup.nvim",
	"nvim-lua/plenary.nvim",
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	{ "nvim-telescope/telescope.nvim", branch = "0.1.x" },

	-- Harpoon
	"ThePrimeagen/harpoon",

	-- Comments
	"b3nj5m1n/kommentary",

	-- Autopairs
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
	},

	-- Git
	"TimUntersberger/neogit",
	"lewis6991/gitsigns.nvim",

	-- Visual
	{ "sainnhe/gruvbox-material", lazy = false },
	"kyazdani42/nvim-web-devicons",
	"hoob3rt/lualine.nvim",
	"folke/todo-comments.nvim",

    -- Tmux
    "christoomey/vim-tmux-navigator",

	-- Copilot
	'github/copilot.vim',
})
