local M = {}

local function HL(grp, spec) vim.api.nvim_set_hl(0, grp, spec) end
local function LINK(a, b) vim.api.nvim_set_hl(0, a, { link = b }) end

M.highlight = function()
	-- Core types
	LINK("@lsp.type.namespace", "@module")
	LINK("@lsp.typemod.namespace.defaultLibrary", "@module.builtin")

	LINK("@lsp.type.type", "@type")
	LINK("@lsp.typemod.type.defaultLibrary", "@type.builtin")
	LINK("@lsp.type.class", "@type")
	LINK("@lsp.type.struct", "@type")
	LINK("@lsp.type.interface", "@type")
	LINK("@lsp.type.enum", "@type")
	LINK("@lsp.type.typeParameter", "@type.definition")

	-- Variables / properties / members
	LINK("@lsp.type.variable", "@variable")
	LINK("@lsp.typemod.variable.defaultLibrary", "@variable.builtin")
	LINK("@lsp.typemod.variable.readonly", "@constant") -- readonly gets constant style
	LINK("@lsp.type.parameter", "@variable.parameter")
	LINK("@lsp.type.property", "@property")
	LINK("@lsp.typemod.property.readonly", "@property") -- keep same style; adjust if you want it like @constant
	LINK("@lsp.type.enumMember", "@constant")

	-- Functions / methods / macros / ctors
	LINK("@lsp.type.function", "@function")
	LINK("@lsp.typemod.function.defaultLibrary", "@function.builtin")
	LINK("@lsp.type.method", "@function.method")
	LINK("@lsp.typemod.method.defaultLibrary", "@function.builtin")
	LINK("@lsp.type.macro", "@function.macro")
	LINK("@lsp.type.constructor", "@constructor")

	-- Literals
	LINK("@lsp.type.string", "@string")
	LINK("@lsp.type.regexp", "@string.regexp")
	LINK("@lsp.type.number", "@number")
	LINK("@lsp.type.boolean", "@boolean")
	LINK("@lsp.type.character", "@character")

	-- Keywords / operators / punctuation
	LINK("@lsp.type.keyword", "@keyword")
	LINK("@lsp.type.operator", "@operator")

	-- Comments / markup
	LINK("@lsp.type.comment", "@comment")

	-- Decorators / attributes / annotations
	LINK("@lsp.type.decorator", "@attribute")

	-- Modifiers (map only the useful ones; no italics)
	LINK("@lsp.mod.deprecated", "DiagnosticDeprecated") -- strikethrough, if your theme sets it
	-- You can also map @lsp.mod.async → @keyword.coroutine if you like:
	-- LINK("@lsp.mod.async",          "@keyword.coroutine")
end

return M
