 require('lualine').setup {
      options = { disabled_filetypes = { 'packer', 'NvimTree' }, theme = "horizon" },
      sections = {
		lualine_c = {
			...,
			'lsp_progress'
		}
	}
}
