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

vim.cmd("colorscheme gruvbox")

require("nvim-lsp-installer").setup {}
require("telescope").setup {}
require('lspconfig')['solargraph'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')['tsserver'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}

vim.api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })
vim.cmd("nnoremap gt :Telescope find_files<CR>")
