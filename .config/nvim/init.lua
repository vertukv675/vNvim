require('plugins')
require('mason-config')
require('setup-all-lsps')
require('code-completion')
require('syntax-highlight')
--require('file-explorer')
require('custom-keys')
require('theme')
require('file-finder')
require('statusline')
require('better-ui')



-- local pywal = require('pywal')

-- pywal.setup()
vim.opt.termguicolors = true
require("bufferline").setup{
options = {
        hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'}
        }
    }
}
require('nvim-autopairs').setup()
vim.opt.guifont = { "Comic Mono", "h10" }
require 'colorizer'.setup()
require("scrollbar").setup()


vim.keymap.set("n", "<Leader><Leader>",
  [[<cmd>lua require('telescope').extensions.recent_files.pick()<CR>]],
  {noremap = true, silent = true})

vim.keymap.set("n", "<Leader>/",
  [[<cmd>lua require('telescope').extensions.file_browser.file_browser()<CR>]],
  {noremap = true, silent = true})

vim.keymap.set("n", "n",
  [[<cmd>lua require('telescope').extensions.file_browser.file_browser()<CR>]],
  {noremap = true, silent = true})


