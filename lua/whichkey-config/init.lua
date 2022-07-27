local wk = require("which-key")
local mappings = {
  q = {":q<CR>", "Quit"},
  w = {":w<CR>", "Save"},
  Q = {":wq<CR>", "Save and Quit"},
  x = {":bdelete<CR>", "Close Buffer"},
  E = {":e ~/.config/nvim/init.lua<CR>", "Edit config"},
  f = {":Telescope find_files<CR>", "Telescope Find Files"},
  r = {":Telescope live_grep<CR>", "Telescope Live Grep"}
}
local opts = {prefix= '<leader>'}

wk.register(mappings, opts)
