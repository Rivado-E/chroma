local palette = require("theme.palette")

local M = {}
local g = vim.g
local highlight = vim.api.nvim_set_hl
local c = palette.palette()

M.style = function()
	-------------------------------------------------------------------------
	-- Custom styling groups
	-------------------------------------------------------------------------

	highlight(0, "chromaVisual", { bg = c.ui6_blue })
	highlight(0, "chromaWhite", { fg = c.chroma_white })
	highlight(0, "chromaGrey", { fg = c.chroma_grey })
	highlight(0, "chromaFgDelimiter", { fg = c.chroma_fg_delimiter })
	highlight(0, "chromaGreen", { fg = c.chroma_green })
	highlight(0, "chromaOrange", { fg = c.chroma_orange })
	highlight(0, "chromaBlue", { fg = c.chroma_blue })
	highlight(0, "chromaBlue2", { fg = c.chroma_blue2 })
	highlight(0, "chromaYellow", { fg = c.chroma_yellow })
	highlight(0, "chromaYellow2", { fg = c.chroma_yellow2 })
	highlight(0, "chromaRed", { fg = c.chroma_red })
	highlight(0, "chromaPurple", { fg = c.chroma_purple })
	highlight(0, "chromaCyan", { fg = c.cyan })
	-- Misc helpers
	highlight(0, "chromaUnderline", { underline = true })
	highlight(0, "chromaNoCombine", { nocombine = true })
	-- Mode helper colors
	highlight(0, "chromaBlueMode", { bg = c.chroma_blue, fg = c.fg })
	highlight(0, "chromaGreenMode", { bg = c.green, fg = c.fg })
	highlight(0, "chromaPurpleMode", { bg = c.chroma_purple, fg = c.fg })
	highlight(0, "chromaRedMode", { bg = c.chroma_red, fg = c.fg })
	highlight(0, "chromaYellowMode", { bg = c.chroma_yellow, fg = c.fg })
	highlight(0, "chromaOrangeMode", { bg = c.chroma_orange, fg = c.fg })
	-- Generic line helper colors
	highlight(0, "chromaCurrentLine", { bg = c.line })
	highlight(0, "chromaErrorLine", { bg = c.alt_bg, fg = c.error })
	highlight(0, "chromaWarnLine", { bg = c.alt_bg, fg = c.warn })
	highlight(0, "chromaInfoLine", { bg = c.alt_bg, fg = c.info })
	highlight(0, "chromaHintLine", { bg = c.alt_bg, fg = c.hint })
	highlight(0, "chromaLineActive", { bg = c.line, fg = c.chroma_blue })
	highlight(0, "chromaRedLineActive", { bg = c.line, fg = c.chroma_red })
	highlight(0, "chromaYellowLineActive", { bg = c.line, fg = c.chroma_yellow })
	highlight(0, "chromaWhiteLineActive", { bg = c.line, fg = c.chroma_white })
	highlight(0, "chromaGrey58Row", { bg = c.alt_bg, fg = c.gray })
	highlight(0, "chromaRedRow", { bg = c.alt_bg, fg = c.chroma_red })
	highlight(0, "chromaYellowRow", { bg = c.alt_bg, fg = c.chroma_yellow })
	highlight(0, "chromaBlueRow", { bg = c.alt_bg, fg = c.chroma_blue })
	highlight(0, "chromaGreenRow", { bg = c.alt_bg, fg = c.chroma_green })
end

return M
