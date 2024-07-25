return {
    'github/copilot.vim',
    'wbthomason/packer.nvim',
    'Shatur/neovim-session-manager',
    'nvim-lua/plenary.nvim',
    'sainnhe/gruvbox-material',
    'rose-pine/neovim',

    {
        'nvim-telescope/telescope.nvim', version = '0.1.2',
        -- or                            , branch = '0.1.x',
        dependencies = { { 'nvim-lua/plenary.nvim' } }
    },

    { 'tpope/vim-commentary' },
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
    },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    { "fatih/vim-go", build = ":GoUpdateBinaries" },
    "nvim-treesitter/playground",
    "tpope/vim-fugitive",
    "nvim-treesitter/nvim-treesitter-context",
    "nvim-tree/nvim-tree.lua",
    { 'akinsho/bufferline.nvim', version = "v4.*", dependencies = 'nvim-tree/nvim-web-devicons', config = function()
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
{
    'VonHeikemen/lsp-zero.nvim',
    dependencies = {
        { 'neovim/nvim-lspconfig' },
        { 'williamboman/mason.nvim' },
        { 'williamboman/mason-lspconfig.nvim' },
        { 'hrsh7th/nvim-cmp' },
        { 'hrsh7th/cmp-buffer' },
        { 'hrsh7th/cmp-path' },
        { 'saadparwaiz1/cmp_luasnip' },
        { 'hrsh7th/cmp-nvim-lsp' },
        { 'hrsh7th/cmp-nvim-lua' },
        { 'L3MON4D3/LuaSnip' },
        { 'rafamadriz/friendly-snippets' },
    }
}
}
