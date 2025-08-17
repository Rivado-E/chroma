local palette = require("theme.palette")
local treesitter = require("theme.ts")
local nvim = require("theme.nvim")
local lsp = require("theme.lsp")
local semantic = require("theme.semantic")
local standard = require("theme.standard")
local customs = require("theme.customs")
local plugins = require("theme.plugins")

local M = {}
local g = vim.g
local highlight = vim.api.nvim_set_hl
local c = palette.palette()

M.palette = palette

M.style = function()

	customs.style()
	standard.style()
	nvim.style()
	lsp.style()
	treesitter.style()
	plugins.style()
	semantic.style()

end

-- User customization of theme colors.
M.custom_colors = function(colors)
	c.fg = colors.fg and colors.fg or M.palette.fg
	c.chroma_fg_delimiter = colors.chroma_fg_delimiter and colors.chroma_fg_delimiter or M.palette.chroma_fg_delimiter
	c.bg = colors.bg and colors.bg or M.palette.bg
	c.alt_fg = colors.alt_fg and colors.alt_fg or M.palette.alt_fg
	c.alt_bg = colors.alt_bg and colors.alt_bg or M.palette.alt_bg
	c.chroma_grey = colors.chroma_grey and colors.chroma_grey or M.palette.chroma_grey
	c.chroma_green = colors.chroma_green and colors.chroma_green or M.palette.chroma_green
	c.chroma_white = colors.chroma_white and colors.chroma_white or M.palette.chroma_white
	c.chroma_orange = colors.chroma_orange and colors.chroma_orange or M.palette.chroma_orange
	c.chroma_blue = colors.chroma_blue and colors.chroma_blue or M.palette.chroma_blue
	c.chroma_blue2 = colors.chroma_blue2 and colors.chroma_blue2 or M.palette.chroma_blue2
	c.chroma_yellow = colors.chroma_yellow and colors.chroma_yellow or M.palette.chroma_yellow
	c.chroma_yellow2 = colors.chroma_yellow2 and colors.chroma_yellow2 or M.palette.chroma_yellow2
	c.chroma_red = colors.chroma_red and colors.chroma_red or M.palette.chroma_red
	c.chroma_purple = colors.chroma_purple and colors.chroma_purple or M.palette.chroma_purple
end

-- Auto-load the theme when this file is sourced as a colorscheme
vim.cmd('hi clear')

if vim.fn.exists('syntax_on') then
	vim.cmd('syntax reset')
end

vim.o.termguicolors = true
vim.g.colors_name = 'chroma'

-- Set default options for transparent theme
vim.g.chromaTransparent = vim.g.chromaTransparent or true
vim.g.chromaItalics = vim.g.chromaItalics or false
vim.g.chromaUndercurls = vim.g.chromaUndercurls or false
vim.g.chromaTerminalColors = vim.g.chromaTerminalColors or false
vim.g.chromaVirtualTextColor = vim.g.chromaVirtualTextColor or false
vim.g.chromaCursorColor = vim.g.chromaCursorColor or false
vim.g.chromaNormalFloat = vim.g.chromaNormalFloat or false
vim.g.chromaUnderlineMatchParen = vim.g.chromaUnderlineMatchParen or false
vim.g.chromaWinSeparator = vim.g.chromaWinSeparator or 2

M.style()

return M
