local palette = require("theme.palette")

local M = {}
local g = vim.g
local highlight = vim.api.nvim_set_hl
local c = palette.palette()

M.style = function()
	-------------------------------------------------------------------------
	-- Tree-sitter
	-------------------------------------------------------------------------

	-- Tree-sitter highlight groups
	highlight(0, "@variable", { link = "chromaWhite" })
	highlight(0, "@variable.builtin", { fg = c.cyan })
	highlight(0, "@variable.parameter", { fg = c.chroma_grey })
	highlight(0, "@variable.parameter.builtin", { link = "@variable.parameter" })
	highlight(0, "@variable.member", { fg = c.blue })

	highlight(0, "@constant", { link = "chromaYellow" })
	highlight(0, "@constant.builtin", { link = "chromaYellow" })
	highlight(0, "@constant.macro", { link = "chromaBlue" })

	highlight(0, "@module", { fg = c.chroma_grey })
	highlight(0, "@module.builtin", { fg = c.cyan })

	highlight(0, "@string", { link = "chromaGreen" })
	highlight(0, "@string.documentation", { link = "chromaGreen" })
	highlight(0, "@string.regexp", { link = "chromaGreen" })
	highlight(0, "@string.escape", { link = "chromaGreen" })
	highlight(0, "@string.special", { fg = c.fg })
	highlight(0, "@string.special.symbol", { link = "chromaRed" })
	highlight(0, "@string.special.url", { fg = c.chroma_white, underline = true })

	highlight(0, "@character", { link = "chromaRed" })
	highlight(0, "@character.special", { link = "chromaOrange" })

	highlight(0, "@boolean", { fg = c.chroma_orange, bold = true })
	highlight(0, "@number", { link = "chromaYellow" })
	highlight(0, "@number.float", { link = "chromaYellow" })

	highlight(0, "@type", { link = "chromaOrange" })
	highlight(0, "@type.builtin", { link = "chromaWhite" })
	highlight(0, "@type.definition", { link = "chromaPurple" })
	highlight(0, "@type.qualifier", { link = "chromaPurple" })

	highlight(0, "@attribute", { fg = c.chroma_white })
	highlight(0, "@property", { fg = c.blue })

	highlight(0, "@function", { link = "chromaRed" })                     -- user-defined
	highlight(0, "@function.call", { fg = c.chroma_red })                 -- calls (same color for consistency)
	highlight(0, "@function.builtin", { fg = c.chroma_orange })           -- builtins
	highlight(0, "@function.macro", { fg = c.chroma_orange, bold = true }) -- macros stand out
	highlight(0, "@function.method", { link = "chromaRed" })              -- method definitions
	highlight(0, "@function.method.call", { fg = c.chroma_red })          -- method calls

	highlight(0, "@constructor", { link = "chromaOrange" })

	highlight(0, "@keyword", { link = "chromaPurple" })
	highlight(0, "@keyword.coroutine", { link = "chromaPurple" })
	highlight(0, "@keyword.function", { link = "chromaPurple" })
	highlight(0, "@keyword.operator", { link = "chromaPurple" })
	highlight(0, "@keyword.import", { link = "chromaPurple" })
	highlight(0, "@keyword.storage", { link = "chromaWhite" })
	highlight(0, "@keyword.repeat", { link = "chromaPurple" })
	highlight(0, "@keyword.return", { link = "chromaPurple" })
	highlight(0, "@keyword.debug", { link = "chromaRed" })
	highlight(0, "@keyword.exception", { link = "chromaPurple" })
	highlight(0, "@keyword.conditional", { link = "chromaPurple" })
	highlight(0, "@keyword.conditional.ternary", { link = "chromaPurple" })
	highlight(0, "@keyword.directive", { link = "chromaPurple" })
	highlight(0, "@keyword.directive.define", { link = "chromaPurple" })

	highlight(0, "@operator", { link = "chromaGrey" })

	highlight(0, "@punctuation.delimiter", { link = "chromaFgDelimiter" })
	highlight(0, "@punctuation.bracket", { link = "chromaFgDelimiter" })
	highlight(0, "@punctuation.special", { link = "chromaFgDelimiter" })

	highlight(0, "@comment", { fg = c.context, italic = g.chromaItalics })
	highlight(0, "@comment.documentation", { fg = c.context, italic = g.chromaItalics })
	highlight(0, "@comment.error", { link = "chromaRed" })
	highlight(0, "@comment.warning", { fg = warn })
	highlight(0, "@comment.todo", { fg = c.magenta, bold = true })
	highlight(0, "@comment.note", { fg = c.info })

	highlight(0, "@markup.strong", { bold = true })
	highlight(0, "@markup.italic", { italic = true })
	highlight(0, "@markup.strikethrough", { strikethrough = true })
	highlight(0, "@markup.underline", { underline = true })

	highlight(0, "@markup.heading", { link = "Title" })
	highlight(0, "@markup.heading.1", { link = "Title" })
	highlight(0, "@markup.heading.2", { link = "Title" })
	highlight(0, "@markup.heading.3", { link = "Title" })
	highlight(0, "@markup.heading.4", { link = "Title" })
	highlight(0, "@markup.heading.5", { link = "Title" })
	highlight(0, "@markup.heading.6", { link = "Title" })

	highlight(0, "@markup.quote", { fg = c.context })
	highlight(0, "@markup.math", { fg = c.yellow })

	highlight(0, "@markup.link", { fg = c.cyan, underline = true })
	highlight(0, "@markup.link.label", { fg = c.blue })
	highlight(0, "@markup.link.url", { fg = c.chroma_white, underline = true })

	highlight(0, "@markup.raw", { fg = c.orange })
	highlight(0, "@markup.raw.block", { fg = c.orange })

	highlight(0, "@markup.list", { fg = c.blue })
	highlight(0, "@markup.list.checked", { fg = c.chroma_green })
	highlight(0, "@markup.list.unchecked", { fg = c.chroma_blue })

	highlight(0, "@diff.plus", { link = "DiffAdd" })
	highlight(0, "@diff.minus", { link = "DiffDelete" })
	highlight(0, "@diff.delta", { link = "DiffChange" })

	highlight(0, "@tag", { fg = c.cyan })
	highlight(0, "@tag.attribute", { fg = c.light_blue, italic = true })
	highlight(0, "@tag.delimiter", { fg = c.gray })

	highlight(0, "@label", { link = "chromaOrange" })
end

return M
