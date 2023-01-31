require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "go", "lua", "rust" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

  }
}

vim.opt.list = true
vim.opt.listchars:append "space:⋅"

require("indent_blankline").setup {
    --space_char_blankline = "",
    show_current_context = true,
    show_current_context_start = true,
}