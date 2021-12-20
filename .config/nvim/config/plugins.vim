" Vim Plug plugins
call plug#begin()
Plug 'kyazdani42/nvim-web-devicons' " Icons for File Tree
Plug 'kyazdani42/nvim-tree.lua' " File Tree
Plug 'ThePrimeagen/vim-be-good' " Game to get better at movements by ThePrimeagen
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'nvim-lua/plenary.nvim'
Plug 'terrortylor/nvim-comment'
Plug 'nvim-telescope/telescope.nvim' " Fuzzy file finder
Plug 'nvim-telescope/telescope-fzy-native.nvim' " faster fuzzy finding
Plug 'neovim/nvim-lspconfig' " lsp stuff
Plug 'jose-elias-alvarez/null-ls.nvim' " lsp stuff
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils' " lsp stuff
Plug 'hrsh7th/cmp-nvim-lsp' " lsp stuff
Plug 'kabouzeid/nvim-lspinstall'
Plug 'hrsh7th/cmp-buffer' " autocomplete
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'dense-analysis/ale'
Plug 'simrat39/rust-tools.nvim'
Plug 'rktjmp/highlight-current-n.nvim'
" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

Plug 'karb94/neoscroll.nvim'

Plug 'steelsojka/pears.nvim'

Plug 'nvim-lualine/lualine.nvim'
Plug 'ThePrimeagen/harpoon'

" Color Themes
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'haishanh/night-owl.vim' " Color Theme

Plug 'glepnir/dashboard-nvim'
Plug 'ahmedkhalf/project.nvim'
Plug 'folke/which-key.nvim'

Plug 'https://gitlab.com/yorickpeterse/nvim-window.git'
call plug#end()


lua << EOF
require('nvim_comment').setup()
require'nvim-treesitter.configs'.setup {
    ensure_installe = "maintained",
    highlight = {
        enable = true
    },
    indent = {
        enable = true
    }
}
require "pears".setup()
require("project_nvim").setup()
require("telescope").setup({})
require("telescope").load_extension('projects')
local wk = require("which-key")
wk.setup()
wk.register({
["<leader>/"] = {name = "Toggle Comment"},
["<leader>f"] = {name = "Find"},
})

require('nvim-window').setup({
chars = {
    'a','s','d','f','g','h','j','k','l',';'
    }
})

EOF

let g:dashboard_default_executive = 'telescope'
