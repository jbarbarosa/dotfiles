local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'

Plug('nvim-telescope/telescope-fzf-native.nvim', {['do'] = vim.fn['cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build']})

Plug('nvim-telescope/telescope-fzf-native.nvim', {['do'] = vim.fn['make']})

Plug 'nvim-lua/plenary.nvim'

Plug 'nvim-telescope/telescope.nvim'

Plug('nvim-treesitter/nvim-treesitter', {['do'] = vim.fn[':TSUpdate']})

Plug 'williamboman/nvim-lsp-installer'

Plug 'neovim/nvim-lspconfig'

vim.call('plug#end')

require("nvim-lsp-installer").setup {}
require("telescope").setup {}
