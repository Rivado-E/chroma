local M = {}
local chroma = require('colors.chroma')

M.setup = function(opts)
	opts = opts or {}

	vim.g.chromaTransparent = opts.transparent or true
	vim.g.chromaItalics = opts.italics or false
	vim.g.chromaUndercurls = opts.undercurls or false
	vim.g.chromaUnderlineMatchParen = opts.underline_match_paren or false
	vim.g.chromaTerminalColors = opts.terminal_colors or false
	vim.g.chromaVirtualTextColor = opts.virtual_text_color or false
	vim.g.chromaCursorColor = opts.cursor_color or false
	vim.g.chromaNormalFloat = opts.normal_float or false
	vim.g.chromaWinSeparator = opts.win_separator or 2

	vim.cmd('hi clear')

	vim.o.background = 'dark'
	if vim.fn.exists('syntax_on') then
		vim.cmd('syntax reset')
	end

	vim.o.termguicolors = true
	vim.g.colors_name = 'chroma'

	chroma.style()
end

return M
