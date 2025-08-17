local palette = require("theme.palette")

local M = {}
local g = vim.g
local highlight = vim.api.nvim_set_hl
local c = palette.palette()

M.style = function()
	-------------------------------------------------------------------------
	-- Neovim standard styling
	-------------------------------------------------------------------------

	highlight(0, "Whitespace", { fg = c.dark_gray })
	highlight(0, "TermCursor", { bg = c.cursor_bg, fg = c.cursor_fg })

	if g.chromaNormalFloat then
		highlight(0, "NormalFloat", { bg = c.bg, fg = c.light_gray })
	else
		highlight(0, "NormalFloat", { bg = c.alt_bg, fg = c.none })
	end

	highlight(0, "FloatBorder", { bg = c.bg, fg = c.gray })
	highlight(0, "FloatTitle", { bg = c.alt_bg, fg = c.chroma_white })

	if g.chromaTransparent then
		highlight(0, "WinBar", { fg = c.fg })
		highlight(0, "WinBarNC", { fg = c.gray })
	else
		highlight(0, "WinBar", { bg = c.alt_bg, fg = c.fg })
		highlight(0, "WinBarNC", { bg = c.alt_bg, fg = c.gray })
	end

	highlight(0, "WinSeparator", { link = "VertSplit" })
end
return M
