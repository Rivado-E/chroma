local palette = require("theme.palette")

local M = {}
local g = vim.g
local highlight = vim.api.nvim_set_hl
local c = palette.palette()

M.style = function()
	-------------------------------------------------------------------------
	-- Plugin support
	-------------------------------------------------------------------------

	-- Telescope
	highlight(0, "TelescopeSelection", { bg = c.ui2_blue, fg = c.none })
	highlight(0, "TelescopeSelectionCaret", { fg = c.chroma_red, bg = c.ui2_blue })
	highlight(0, "TelescopeMatching", { fg = c.info, bold = true, italic = true })
	highlight(0, "TelescopeBorder", { fg = c.alt_fg })
	highlight(0, "TelescopeNormal", { fg = c.fg, bg = c.menu_bg })
	highlight(0, "TelescopePromptPrefix", { fg = c.hint })
	highlight(0, "TelescopePromptTitle", { fg = c.ui_orange, bold = true })
	highlight(0, "TelescopeResultsTitle", { fg = c.ui_orange, bold = true })
	highlight(0, "TelescopePreviewTitle", { fg = c.ui_orange, bold = true })

	-- NvimTree
	highlight(0, "NvimTreeFolderIcon", { link = "Directory" })
	highlight(0, "NvimTreeIndentMarker", { fg = c.context })
	highlight(0, "NvimTreeNormal", { fg = c.fg, bg = g.chromaTransparent and c.none or c.alt_bg })
	highlight(0, "NvimTreeVertSplit",
		{ fg = g.chromaTransparent and c.none or c.alt_bg, bg = g.chromaTransparent and c.none or c.alt_bg })
	highlight(0, "NvimTreeFolderName", { link = "Directory" })
	highlight(0, "NvimTreeOpenedFolderName", { fg = c.folder_blue, bold = true, italic = true })
	highlight(0, "NvimTreeGitStaged", { fg = c.sign_add_alt })
	highlight(0, "NvimTreeGitNew", { fg = c.sign_add_alt })
	highlight(0, "NvimTreeGitDeleted", { fg = c.sign_delete })
	highlight(0, "NvimTreeGitDirty", { fg = c.sign_change_alt })
	highlight(0, "NvimTreeSymlink", { fg = c.cyan })
	highlight(0, "NvimTreeRootFolder", { fg = c.fg, bold = true })
	highlight(0, "NvimTreeExecFile", { fg = "#9FBA89" })
	highlight(0, "NvimTreeCursorLine", { bg = c.line })

	-- WhichKey
	highlight(0, "WhichKey", { fg = c.chroma_purple })
	highlight(0, "WhichKeySeperator", { fg = c.green })
	highlight(0, "WhichKeyGroup", { fg = c.blue })
	highlight(0, "WhichKeyDesc", { fg = c.fg })
	highlight(0, "WhichKeyFloat", { bg = g.chromaTransparent and c.none or c.alt_bg })

	-- GitSigns
	highlight(0, "GitSignsAdd", { fg = c.sign_add })
	highlight(0, "GitSignsChange", { fg = c.sign_change })
	highlight(0, "GitSignsDelete", { fg = c.sign_delete })

	-- nvim-cmp
	highlight(0, "CmpItemAbbrMatch", { fg = c.ui3_blue })
	highlight(0, "CmpItemAbbrMatchFuzzy", { fg = c.ui3_blue })
	highlight(0, "CmpItemKindFunction", { fg = c.ui_purple })
	highlight(0, "CmpItemKindMethod", { fg = c.ui_purple })
	highlight(0, "CmpItemKindVariable", { fg = c.light_blue })
	highlight(0, "CmpItemKindKeyword", { fg = c.fg })
	highlight(0, "CmpItemKindProperty", { fg = c.light_blue })
	highlight(0, "CmpItemKindConstant", { fg = c.chroma_blue })

	-- Dashboard
	highlight(0, "DashboardHeader", { fg = c.blue })
	highlight(0, "DashboardCenter", { fg = c.chroma_purple })
	highlight(0, "DashboardFooter", { fg = c.cyan })

	-- IndentBlankline
	highlight(0, "IndentBlanklineChar", { fg = c.dark_gray })
	highlight(0, "IndentBlanklineContextChar", { fg = c.context })
	highlight(0, "IndentBlanklineContextStart", { underline = true })

	-- Bufferline
	highlight(0, "BufferLineFill", { bg = g.chromaTransparent and c.none or c.line })
	highlight(0, "BufferLineBackground", { fg = c.gray, bg = g.chromaTransparent and c.none or c.alt_bg })
	highlight(0, "BufferLineBufferSelected", { fg = c.fg, bg = c.bg })
	highlight(0, "BufferLineBufferVisible", { fg = c.fg, bg = c.bg })
end

return M
