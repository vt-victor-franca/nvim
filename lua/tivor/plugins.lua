return {
    'github/copilot.vim',
    'wbthomason/packer.nvim',
    'Shatur/neovim-session-manager',
    'nvim-lua/plenary.nvim',
    'sainnhe/gruvbox-material',
    'rose-pine/neovim',

    {
        'nvim-telescope/telescope.nvim',
        version = '0.1.2',
        -- or                            , branch = '0.1.x',
        dependencies = { { 'nvim-lua/plenary.nvim' } }
    },

    { 'tpope/vim-commentary' },
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
    },
    { "fatih/vim-go",                    build = ":GoUpdateBinaries" },
    { "nvim-treesitter/nvim-treesitter" },
    "nvim-treesitter/playground",
    "nvim-treesitter/nvim-treesitter-context",
    "tpope/vim-fugitive",
    "nvim-tree/nvim-tree.lua",
    {
        'akinsho/bufferline.nvim',
        version = "v4.*",
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = function()
            require('bufferline').setup()
        end
    },
    "nvim-tree/nvim-web-devicons",
    { "akinsho/toggleterm.nvim", version = '*' },
    {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    },
    { 'neovim/nvim-lspconfig' },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-nvim-lua' },
}
