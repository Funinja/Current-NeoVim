require('options')
require('treesitter-config')
require('lualine-config')
require('bufferline-config')
require('nvim-tree-config')
require('nvim-ts-autotag-config')
require('telescope-config')
require('cmp-config')
require('keybindings')
require('whichkey-config')
require('lang-server')
require('plugins')

vim.opt.signcolumn = 'yes'
vim.cmd('nnoremap <C-v> :TagbarToggle<CR>')
vim.opt.termguicolors = true
pcall(vim.cmd, 'colorscheme nightfly')


