local palette = require("theme.palette")

local M = {}
local g = vim.g
local highlight = vim.api.nvim_set_hl
local c = palette.palette()

M.style = function()

	-------------------------------------------------------------------------
	-- LSP and Diagnostics
	-------------------------------------------------------------------------

	highlight(0, "DiagnosticError", { link = "chromaRed" })
	highlight(0, "DiagnosticWarn", { fg = warn })
	highlight(0, "DiagnosticInfo", { fg = c.info })
	highlight(0, "DiagnosticHint", { fg = c.hint })
	highlight(0, "DiagnosticOk", { link = "chromaGreen" })

	if g.chromaUndercurls then
		highlight(0, "DiagnosticUnderlineError", { undercurl = true, sp = error })
		highlight(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = warn })
		highlight(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = c.info })
		highlight(0, "DiagnosticUnderlineHint", { undercurl = true, sp = c.hint })
		highlight(0, "DiagnosticUnderlineOk", { undercurl = true, sp = c.chroma_green })
	else
		highlight(0, "DiagnosticUnderlineError", { underline = true, sp = error })
		highlight(0, "DiagnosticUnderlineWarn", { underline = true, sp = warn })
		highlight(0, "DiagnosticUnderlineInfo", { underline = true, sp = c.info })
		highlight(0, "DiagnosticUnderlineHint", { underline = true, sp = c.hint })
		highlight(0, "DiagnosticUnderlineOk", { underline = true, sp = c.chroma_green })
	end

	if g.chromaVirtualTextColor then
		highlight(0, "DiagnosticVirtualTextError", { fg = error, bg = c.error_bg })
		highlight(0, "DiagnosticVirtualTextWarn", { fg = warn, bg = c.warn_bg })
		highlight(0, "DiagnosticVirtualTextInfo", { fg = c.info, bg = c.info_bg })
		highlight(0, "DiagnosticVirtualTextHint", { fg = c.hint, bg = c.hint_bg })
		highlight(0, "DiagnosticVirtualTextOk", { link = "chromaGreenRow" })
	else
		highlight(0, "DiagnosticVirtualTextError", { link = "chromaGrey" })
		highlight(0, "DiagnosticVirtualTextWarn", { link = "chromaGrey" })
		highlight(0, "DiagnosticVirtualTextInfo", { link = "chromaGrey" })
		highlight(0, "DiagnosticVirtualTextHint", { link = "chromaGrey" })
		highlight(0, "DiagnosticVirtualTextOk", { link = "chromaGrey" })
	end

	highlight(0, "DiagnosticSignError", { link = "DiagnosticError" })
	highlight(0, "DiagnosticSignWarn", { link = "DiagnosticWarn" })
	highlight(0, "DiagnosticSignInfo", { link = "DiagnosticInfo" })
	highlight(0, "DiagnosticSignHint", { link = "DiagnosticHint" })
	highlight(0, "DiagnosticSignOk", { link = "DiagnosticOk" })

	-- LSP References
	highlight(0, "LspReferenceRead", { bg = c.reference })
	highlight(0, "LspReferenceText", { bg = c.reference })
	highlight(0, "LspReferenceWrite", { bg = c.reference })
	highlight(0, "LspCodeLens", { fg = c.context, italic = true })
	highlight(0, "LspCodeLensSeparator", { fg = c.context, italic = true })

end


return M
