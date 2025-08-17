local palette = require("theme.palette")

local M = {}
local g = vim.g
local highlight = vim.api.nvim_set_hl
local c = palette.palette()

-------------------------------------------------------------------------
-- Standard styling
-------------------------------------------------------------------------
M.stye = function()
	-- Specify the colors used by the inbuilt terminal
	if g.chromaTerminalColors then
		g.terminal_color_0 = c.gray
		g.terminal_color_1 = c.chroma_red
		g.terminal_color_2 = c.green
		g.terminal_color_3 = c.chroma_yellow
		g.terminal_color_4 = c.chroma_blue
		g.terminal_color_5 = c.chroma_purple
		g.terminal_color_6 = c.cyan
		g.terminal_color_7 = c.chroma_white
		g.terminal_color_8 = c.gray
		g.terminal_color_9 = c.chroma_red
		g.terminal_color_10 = c.chroma_green
		g.terminal_color_11 = c.chroma_yellow2
		g.terminal_color_12 = c.chroma_blue2
		g.terminal_color_13 = c.chroma_purple
		g.terminal_color_14 = c.cyan
		g.terminal_color_15 = c.chroma_white
	end

	-- Background and text
	highlight(0, "Normal", { bg = c.bg, fg = c.fg })

	-- Color of mode text, -- INSERT --
	highlight(0, "ModeMsg", { fg = c.context })

	-- Comments
	if g.chromaItalics then
		highlight(0, "Comment", { fg = c.context, italic = true })
	else
		highlight(0, "Comment", { link = "chromaGrey" })
	end

	-- Functions
	highlight(0, "Function", { link = "chromaRed" })

	-- Strings
	highlight(0, "String", { link = "chromaGreen" })

	-- Booleans
	highlight(0, "Boolean", { link = "chromaOrange" })

	-- Identifiers
	highlight(0, "Identifier", { link = "chromaWhite" })

	-- Color of titles
	highlight(0, "Title", { fg = c.chroma_orange, bold = true })

	-- const, static
	highlight(0, "StorageClass", { link = "chromaWhite" })

	-- void, intptr_t
	highlight(0, "Type", { fg = c.chroma_orange })

	-- Numbers
	highlight(0, "Constant", { fg = c.chroma_yellow, bold = true })

	-- Character constants
	highlight(0, "Character", { link = "chromaRed" })

	-- Exceptions
	highlight(0, "Exception", { link = "chromaPurple" })

	-- ifdef/endif
	highlight(0, "PreProc", { link = "chromaPurple" })

	-- case in switch statement
	highlight(0, "Label", { link = "chromaOrange" })

	-- end-of-line '$', end-of-file '~'
	highlight(0, "NonText", { fg = c.dark_gray })

	-- sizeof
	highlight(0, "Operator", { link = "chromaGrey" })

	-- for, while
	highlight(0, "Repeat", { link = "chromaPurple" })

	-- Search
	highlight(0, "Search", { bg = c.ui5_blue, fg = c.fg })
	highlight(0, "CurSearch", { bg = c.ui2_orange, fg = c.fg })
	highlight(0, "IncSearch", { bg = c.ui2_orange, fg = c.fg })

	-- '\n' sequences
	highlight(0, "Special", { link = "chromaOrange" })

	-- if, else
	highlight(0, "Statement", { fg = c.chroma_purple })

	-- struct, union, enum, typedef
	highlight(0, "Structure", { link = "chromaWhite" })

	-- Status, split and tab lines
	if g.chromaTransparent == true then
		highlight(0, "StatusLine", { bg = c.none, fg = c.context })
		highlight(0, "StatusLineNC", { bg = c.none, fg = c.gray })
		highlight(0, "StatusLineTerm", { bg = c.none, fg = c.context })
		highlight(0, "StatusLineTermNC", { bg = c.none, fg = c.gray })
	else
		highlight(0, "StatusLine", { bg = c.alt_bg, fg = c.context })
		highlight(0, "StatusLineNC", { bg = c.alt_bg, fg = c.gray })
		highlight(0, "StatusLineTerm", { bg = c.alt_bg, fg = c.context })
		highlight(0, "StatusLineTermNC", { bg = c.alt_bg, fg = c.gray })
	end

	highlight(0, "Tabline", { bg = c.none, fg = c.light_gray })
	highlight(0, "TablineSel", { bg = c.none, fg = c.chroma_fg_delimiter })
	highlight(0, "TablineSelSymbol", { bg = c.none, fg = c.chroma_green })
	highlight(0, "TablineFill", { fg = c.line, bg = c.none })

	if g.chromaWinSeparator == 0 then
		highlight(0, "VertSplit", { bg = c.none, fg = c.none })
	elseif g.chromaWinSeparator == 1 then
		highlight(0, "VertSplit", { bg = c.gray, fg = c.gray })
	else
		highlight(0, "VertSplit", { bg = c.none, fg = c.gray })
	end

	-- Visual selection
	highlight(0, "Visual", { link = "chromaVisual" })
	highlight(0, "VisualNOS", { bg = c.alt_bg, fg = c.fg })

	-- Errors, warnings and whitespace-eol
	highlight(0, "Error", { bg = c.bg, fg = error, bold = true })
	highlight(0, "ErrorMsg", { bg = c.bg, fg = error, bold = true })
	highlight(0, "WarningMsg", { bg = c.bg, fg = warn })

	-- Auto-text-completion menu
	highlight(0, "Pmenu", { bg = c.menu_bg, fg = c.light_gray })
	highlight(0, "PmenuSel", { bg = c.ui2_blue, fg = c.none })
	highlight(0, "PmenuSbar", { bg = c.alt_bg, fg = c.none })
	highlight(0, "PmenuThumb", { bg = c.gray })
	highlight(0, "WildMenu", { bg = c.ui2_blue, fg = c.chroma_fg_delimiter })

	-- Spelling errors
	if g.chromaUndercurls then
		highlight(0, "SpellBad", { bg = c.none, undercurl = true, sp = c.chroma_red })
		highlight(0, "SpellCap", { bg = c.none, undercurl = true, sp = c.chroma_yellow })
		highlight(0, "SpellRare", { bg = c.none, undercurl = true, sp = c.chroma_purple })
		highlight(0, "SpellLocal", { bg = c.none, undercurl = true, sp = c.green })
	else
		highlight(0, "SpellBad", { bg = c.none, underline = true, sp = c.chroma_red })
		highlight(0, "SpellCap", { bg = c.none, underline = true, sp = c.chroma_yellow })
		highlight(0, "SpellRare", { bg = c.none, underline = true, sp = c.chroma_purple })
		highlight(0, "SpellLocal", { bg = c.none, underline = true, sp = c.green })
	end

	-- Misc
	highlight(0, "Question", { fg = c.orange })
	highlight(0, "MoreMsg", { fg = c.orange })
	highlight(0, "LineNr", { bg = c.bg, fg = c.gray })

	if g.chromaCursorColor then
		highlight(0, "Cursor", { fg = c.cursor_fg, bg = c.cursor_bg })
	else
		highlight(0, "Cursor", { fg = c.cursor_fg, bg = c.cursor_bg })
	end

	highlight(0, "lCursor", { fg = c.cursor_fg, bg = c.cursor_bg })
	highlight(0, "CursorLineNr", { bg = c.bg, fg = c.chroma_yellow2 })
	highlight(0, "CursorColumn", { bg = c.alt_bg })
	highlight(0, "CursorLine", { bg = c.none })
	highlight(0, "Folded", { bg = c.alt_bg, fg = c.gray })
	highlight(0, "FoldColumn", { bg = c.alt_bg, fg = c.gray })
	highlight(0, "SignColumn", { bg = c.bg, fg = c.gray })
	highlight(0, "Todo", { fg = c.magenta, bold = true })
	highlight(0, "SpecialKey", { bg = c.bg, fg = c.blue, bold = true })

	if g.chromaUnderlineMatchParen then
		highlight(0, "MatchParen", { bg = c.bg, underline = true })
	else
		highlight(0, "MatchParen", { fg = c.hint, bg = c.reference })
	end

	highlight(0, "Ignore", { link = "chromaGrey" })
	highlight(0, "Underlined", { fg = c.cyan, underline = true })
	highlight(0, "QuickFixLine", { bg = c.ui2_blue, fg = c.none })
	highlight(0, "Delimiter", { link = "chromaFgDelimiter" })
	highlight(0, "Directory", { fg = c.folder_blue })
	highlight(0, "EndOfBuffer", { fg = c.bg })
	highlight(0, "Conceal", { fg = c.gray })

	-- Color column (after line 80)
	highlight(0, "ColorColumn", { bg = c.alt_bg })

	-- nvim -d
	highlight(0, "DiffAdd", { fg = c.alt_bg, bg = c.sign_add })
	highlight(0, "DiffChange", { fg = c.alt_bg, bg = c.sign_change })
	highlight(0, "DiffDelete", { fg = c.alt_bg, bg = c.sign_delete })
	highlight(0, "DiffText", { fg = c.alt_bg, bg = c.sign_delete })
end

return M
