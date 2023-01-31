keymap = vim.keymap.set

return require('packer').startup(function(use)
        -- Configurations will go here
        use 'wbthomason/packer.nvim'
        use 'williamboman/mason.nvim'   
        use 'williamboman/mason-lspconfig.nvim'
        use 'neovim/nvim-lspconfig'  
	-- Hrsh7th Code Completion Suite
    use 'hrsh7th/nvim-cmp' 
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'                             
    use 'hrsh7th/cmp-path'                              
    use 'hrsh7th/cmp-buffer'                            
    use 'hrsh7th/vim-vsnip'
    use { 'AlphaTechnolog/pywal.nvim', as = 'pywal' }
    use { "catppuccin/nvim", as = "catppuccin" }
    use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
} 
-- Install without configuration
use ({ 'projekt0n/github-nvim-theme' })
 
  -- Treesitter
 use {
  -- recommended packer way of installing it is to run this function, copied from documentation
         'nvim-treesitter/nvim-treesitter',
      run = function()
              local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
              ts_update()
         end,

 }

 -- Telescope used to fuzzy search files
 use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
 }

-- init.lua
 use "lukas-reineke/indent-blankline.nvim"

 use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}

-- using packer.nvim
use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}


use {
  "startup-nvim/startup.nvim",
  requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
  config = function()
    require"startup".setup()
  end
}

use {
  "potamides/pantran.nvim"
}

use 'NvChad/nvim-colorizer.lua'

use ({"ziontee113/color-picker.nvim",
    config = function()
        require("color-picker")
    end,
})

-- mkdir
use {
  'jghauser/mkdir.nvim'
}

use("petertriho/nvim-scrollbar")

use({
    "glepnir/lspsaga.nvim",
    branch = "main",
})

use('jose-elias-alvarez/null-ls.nvim')
use('MunifTanjim/prettier.nvim')
use('mhartington/formatter.nvim')
use 'nvim-tree/nvim-web-devicons'

use({"L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"})
use "rafamadriz/friendly-snippets"
use { 'saadparwaiz1/cmp_luasnip' }
use {"smartpde/telescope-recent-files"}
use { "nvim-telescope/telescope-file-browser.nvim" }
use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
use {'nvim-telescope/telescope-media-files.nvim'}
use 'arkav/lualine-lsp-progress'
end)
