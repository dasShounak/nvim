require("bufferline").setup{
	options = {
  		separator_style = 'slope',

		hover = {
			enabled = true,
			delay = 0,
			reveal = {'close'}
		},

		diagnostics = 'nvim-lsp',
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			local icon = level:match("error") and " " or " "
			return " " .. icon .. count
		end,

        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "left",
                highlight = "Directory",
                separator = true -- use a "true" to enable the default, or set your own character
            }
        }
	},
}
