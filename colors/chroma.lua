local g = vim.g
local highlight = vim.api.nvim_set_hl

local none = "NONE"

-- Core theme colors from chroma palette
local fg = "#D0D0D0"
local chroma_fg_delimiter = "#ADBDB0"
local bg = none -- Default to transparent background
if g.chromaTransparent == false then
  bg = "#252525"
end
local alt_fg = "#a4a4a4"
local alt_bg = "#252525"
if g.chromaTransparent ~= false then
  alt_bg = none
end
local chroma_grey = "#7E7E80"
local chroma_green = "#AECDAF"
local chroma_white = "#CBCBCB"
local chroma_orange = "#CDA07C"
local chroma_blue = "#697BFF"
local chroma_blue2 = "#77B0DA"
local chroma_yellow = "#CFD481"
local chroma_yellow2 = "#FEE592"
local chroma_red = "#C27574"
local chroma_purple = "#A38FA8"
local line = "#3e3e3e"
local dark_gray = "#404040"
local gray = "#808080"
local context = "#606060"
local light_gray = "#cccccc"
local menu_bg = "#202123"
if g.chromaTransparent ~= false then
  menu_bg = none
end
local blue = "#569CD6"
local light_blue = "#77A4B3"
local green = "#6A9955"
local light_green = "#B5CEA8"
local cyan = "#4EC9B0"
local orange = "#CE9178"
local yellow = "#DCDCAA"
local yellow_orange = "#D7BA7D"
local magenta = "#D16D9E"
local cursor_fg = "#515052"
local cursor_bg = "#AEAFAD"
local sign_add = "#587c0c"
local sign_change = "#0c7d9d"
local sign_delete = "#94151b"
local sign_add_alt = "#73C991"
local sign_change_alt = "#CCA700"
local error = "#C27574"
local warn = "#C16700"
local info = "#C8A04F"
local hint = "#378EBB"
local error_bg = "#31262d"
local warn_bg = "#32302f"
local info_bg = "#1e3135"
local hint_bg = "#22323f"
local reference = "#363636"
local success_green = "#14C50B"
local folder_blue = "#42A5F5"
local ui_blue = "#213249"
local ui2_blue = "#042A43"
local ui3_blue = "#0487E0"
local ui4_blue = "#5B94C7"
local ui5_blue = "#083C5A"
local ui6_blue = "#2D4F67"
local ui_orange = "#CE9178"
local ui2_orange = "#D7BA7D"
local ui_purple = "#A38FA8"

local chroma_palette = function()
  return {
    fg = fg,
    chroma_fg_delimiter = chroma_fg_delimiter,
    bg = bg,
    alt_fg = alt_fg,
    alt_bg = alt_bg,
    chroma_grey = chroma_grey,
    chroma_green = chroma_green,
    chroma_white = chroma_white,
    chroma_orange = chroma_orange,
    chroma_blue = chroma_blue,
    chroma_blue2 = chroma_blue2,
    chroma_yellow = chroma_yellow,
    chroma_yellow2 = chroma_yellow2,
    chroma_red = chroma_red,
    chroma_purple = chroma_purple,
    line = line,
    dark_gray = dark_gray,
    gray = gray,
    context = context,
    light_gray = light_gray,
    menu_bg = menu_bg,
    blue = blue,
    light_blue = light_blue,
    green = green,
    light_green = light_green,
    cyan = cyan,
    orange = orange,
    yellow = yellow,
    yellow_orange = yellow_orange,
    magenta = magenta,
    cursor_fg = cursor_fg,
    cursor_bg = cursor_bg,
    sign_add = sign_add,
    sign_change = sign_change,
    sign_delete = sign_delete,
    sign_add_alt = sign_add_alt,
    sign_change_alt = sign_change_alt,
    error = error,
    warn = warn,
    info = info,
    hint = hint,
    error_bg = error_bg,
    warn_bg = warn_bg,
    info_bg = info_bg,
    hint_bg = hint_bg,
    reference = reference,
    success_green = success_green,
    folder_blue = folder_blue,
    ui_blue = ui_blue,
    ui2_blue = ui2_blue,
    ui3_blue = ui3_blue,
    ui4_blue = ui4_blue,
    ui5_blue = ui5_blue,
    ui6_blue = ui6_blue,
    ui_orange = ui_orange,
    ui2_orange = ui2_orange,
    ui_purple = ui_purple,
  }
end

local M = {}

M.palette = chroma_palette()

M.style = function()
  -------------------------------------------------------------------------
  -- Custom styling groups
  -------------------------------------------------------------------------

  highlight(0, "chromaVisual", { bg = ui6_blue })
  highlight(0, "chromaWhite", { fg = chroma_white })
  highlight(0, "chromaGrey", { fg = chroma_grey })
  highlight(0, "chromaFgDelimiter", { fg = chroma_fg_delimiter })
  highlight(0, "chromaGreen", { fg = chroma_green })
  highlight(0, "chromaOrange", { fg = chroma_orange })
  highlight(0, "chromaBlue", { fg = chroma_blue })
  highlight(0, "chromaBlue2", { fg = chroma_blue2 })
  highlight(0, "chromaYellow", { fg = chroma_yellow })
  highlight(0, "chromaYellow2", { fg = chroma_yellow2 })
  highlight(0, "chromaRed", { fg = chroma_red })
  highlight(0, "chromaPurple", { fg = chroma_purple })
  highlight(0, "chromaCyan", { fg = cyan })
  -- Misc helpers
  highlight(0, "chromaUnderline", { underline = true })
  highlight(0, "chromaNoCombine", { nocombine = true })
  -- Mode helper colors
  highlight(0, "chromaBlueMode", { bg = chroma_blue, fg = fg })
  highlight(0, "chromaGreenMode", { bg = green, fg = fg })
  highlight(0, "chromaPurpleMode", { bg = chroma_purple, fg = fg })
  highlight(0, "chromaRedMode", { bg = chroma_red, fg = fg })
  highlight(0, "chromaYellowMode", { bg = chroma_yellow, fg = fg })
  highlight(0, "chromaOrangeMode", { bg = chroma_orange, fg = fg })
  -- Generic line helper colors
  highlight(0, "chromaCurrentLine", { bg = line })
  highlight(0, "chromaErrorLine", { bg = alt_bg, fg = error })
  highlight(0, "chromaWarnLine", { bg = alt_bg, fg = warn })
  highlight(0, "chromaInfoLine", { bg = alt_bg, fg = info })
  highlight(0, "chromaHintLine", { bg = alt_bg, fg = hint })
  highlight(0, "chromaLineActive", { bg = line, fg = chroma_blue })
  highlight(0, "chromaRedLineActive", { bg = line, fg = chroma_red })
  highlight(0, "chromaYellowLineActive", { bg = line, fg = chroma_yellow })
  highlight(0, "chromaWhiteLineActive", { bg = line, fg = chroma_white })
  highlight(0, "chromaGrey58Row", { bg = alt_bg, fg = gray })
  highlight(0, "chromaRedRow", { bg = alt_bg, fg = chroma_red })
  highlight(0, "chromaYellowRow", { bg = alt_bg, fg = chroma_yellow })
  highlight(0, "chromaBlueRow", { bg = alt_bg, fg = chroma_blue })
  highlight(0, "chromaGreenRow", { bg = alt_bg, fg = chroma_green })

  -------------------------------------------------------------------------
  -- Standard styling
  -------------------------------------------------------------------------

  -- Specify the colors used by the inbuilt terminal
  if g.chromaTerminalColors then
    g.terminal_color_0 = gray
    g.terminal_color_1 = chroma_red
    g.terminal_color_2 = green
    g.terminal_color_3 = chroma_yellow
    g.terminal_color_4 = chroma_blue
    g.terminal_color_5 = chroma_purple
    g.terminal_color_6 = cyan
    g.terminal_color_7 = chroma_white
    g.terminal_color_8 = gray
    g.terminal_color_9 = chroma_red
    g.terminal_color_10 = chroma_green
    g.terminal_color_11 = chroma_yellow2
    g.terminal_color_12 = chroma_blue2
    g.terminal_color_13 = chroma_purple
    g.terminal_color_14 = cyan
    g.terminal_color_15 = chroma_white
  end

  -- Background and text
  highlight(0, "Normal", { bg = bg, fg = fg })

  -- Color of mode text, -- INSERT --
  highlight(0, "ModeMsg", { fg = context })

  -- Comments
  if g.chromaItalics then
    highlight(0, "Comment", { fg = context, italic = true })
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
  highlight(0, "Title", { fg = chroma_orange, bold = true })

  -- const, static
  highlight(0, "StorageClass", { link = "chromaWhite" })

  -- void, intptr_t
  highlight(0, "Type", { fg = chroma_orange })

  -- Numbers
  highlight(0, "Constant", { link = "chromaYellow" })

  -- Character constants
  highlight(0, "Character", { link = "chromaRed" })

  -- Exceptions
  highlight(0, "Exception", { link = "chromaPurple" })

  -- ifdef/endif
  highlight(0, "PreProc", { link = "chromaPurple" })

  -- case in switch statement
  highlight(0, "Label", { link = "chromaOrange" })

  -- end-of-line '$', end-of-file '~'
  highlight(0, "NonText", { fg = dark_gray })

  -- sizeof
  highlight(0, "Operator", { link = "chromaGrey" })

  -- for, while
  highlight(0, "Repeat", { link = "chromaPurple" })

  -- Search
  highlight(0, "Search", { bg = ui5_blue, fg = fg })
  highlight(0, "CurSearch", { bg = ui2_orange, fg = fg })
  highlight(0, "IncSearch", { bg = ui2_orange, fg = fg })

  -- '\n' sequences
  highlight(0, "Special", { link = "chromaOrange" })

  -- if, else
  highlight(0, "Statement", { fg = chroma_purple })

  -- struct, union, enum, typedef
  highlight(0, "Structure", { link = "chromaWhite" })

  -- Status, split and tab lines
  if g.chromaTransparent == true then
    highlight(0, "StatusLine", { bg = none, fg = context })
    highlight(0, "StatusLineNC", { bg = none, fg = gray })
    highlight(0, "StatusLineTerm", { bg = none, fg = context })
    highlight(0, "StatusLineTermNC", { bg = none, fg = gray })
  else
    highlight(0, "StatusLine", { bg = alt_bg, fg = context })
    highlight(0, "StatusLineNC", { bg = alt_bg, fg = gray })
    highlight(0, "StatusLineTerm", { bg = alt_bg, fg = context })
    highlight(0, "StatusLineTermNC", { bg = alt_bg, fg = gray })
  end

  highlight(0, "Tabline", { bg = line, fg = light_gray })
  highlight(0, "TablineSel", { bg = line, fg = chroma_fg_delimiter })
  highlight(0, "TablineSelSymbol", { bg = line, fg = chroma_green })

  if g.chromaTransparent == true then
    highlight(0, "TablineFill", { fg = line })
  else
    highlight(0, "TablineFill", { bg = line, fg = line })
  end

  if g.chromaWinSeparator == 0 then
    highlight(0, "VertSplit", { bg = none, fg = none })
  elseif g.chromaWinSeparator == 1 then
    highlight(0, "VertSplit", { bg = gray, fg = gray })
  else
    highlight(0, "VertSplit", { bg = none, fg = gray })
  end

  -- Visual selection
  highlight(0, "Visual", { link = "chromaVisual" })
  highlight(0, "VisualNOS", { bg = alt_bg, fg = fg })

  -- Errors, warnings and whitespace-eol
  highlight(0, "Error", { bg = bg, fg = error, bold = true })
  highlight(0, "ErrorMsg", { bg = bg, fg = error, bold = true })
  highlight(0, "WarningMsg", { bg = bg, fg = warn })

  -- Auto-text-completion menu
  highlight(0, "Pmenu", { bg = menu_bg, fg = light_gray })
  highlight(0, "PmenuSel", { bg = ui2_blue, fg = none })
  highlight(0, "PmenuSbar", { bg = alt_bg, fg = none })
  highlight(0, "PmenuThumb", { bg = gray })
  highlight(0, "WildMenu", { bg = ui2_blue, fg = chroma_fg_delimiter })

  -- Spelling errors
  if g.chromaUndercurls then
    highlight(0, "SpellBad", { bg = none, undercurl = true, sp = chroma_red })
    highlight(0, "SpellCap", { bg = none, undercurl = true, sp = chroma_yellow })
    highlight(0, "SpellRare", { bg = none, undercurl = true, sp = chroma_purple })
    highlight(0, "SpellLocal", { bg = none, undercurl = true, sp = green })
  else
    highlight(0, "SpellBad", { bg = none, underline = true, sp = chroma_red })
    highlight(0, "SpellCap", { bg = none, underline = true, sp = chroma_yellow })
    highlight(0, "SpellRare", { bg = none, underline = true, sp = chroma_purple })
    highlight(0, "SpellLocal", { bg = none, underline = true, sp = green })
  end

  -- Misc
  highlight(0, "Question", { fg = orange })
  highlight(0, "MoreMsg", { fg = orange })
  highlight(0, "LineNr", { bg = bg, fg = gray })

  if g.chromaCursorColor then
    highlight(0, "Cursor", { fg = cursor_fg, bg = cursor_bg })
  else
    highlight(0, "Cursor", { fg = cursor_fg, bg = cursor_bg })
  end

  highlight(0, "lCursor", { fg = cursor_fg, bg = cursor_bg })
  highlight(0, "CursorLineNr", { bg = bg, fg = chroma_yellow2 })
  highlight(0, "CursorColumn", { bg = alt_bg })
  highlight(0, "CursorLine", { bg = none })
  highlight(0, "Folded", { bg = alt_bg, fg = gray })
  highlight(0, "FoldColumn", { bg = alt_bg, fg = gray })
  highlight(0, "SignColumn", { bg = bg, fg = gray })
  highlight(0, "Todo", { fg = magenta, bold = true })
  highlight(0, "SpecialKey", { bg = bg, fg = blue, bold = true })

  if g.chromaUnderlineMatchParen then
    highlight(0, "MatchParen", { bg = bg, underline = true })
  else
    highlight(0, "MatchParen", { fg = hint, bg = reference })
  end

  highlight(0, "Ignore", { link = "chromaGrey" })
  highlight(0, "Underlined", { fg = cyan, underline = true })
  highlight(0, "QuickFixLine", { bg = ui2_blue, fg = none })
  highlight(0, "Delimiter", { link = "chromaFgDelimiter" })
  highlight(0, "Directory", { fg = folder_blue })
  highlight(0, "EndOfBuffer", { fg = bg })
  highlight(0, "Conceal", { fg = gray })

  -- Color column (after line 80)
  highlight(0, "ColorColumn", { bg = alt_bg })

  -- nvim -d
  highlight(0, "DiffAdd", { fg = alt_bg, bg = sign_add })
  highlight(0, "DiffChange", { fg = alt_bg, bg = sign_change })
  highlight(0, "DiffDelete", { fg = alt_bg, bg = sign_delete })
  highlight(0, "DiffText", { fg = alt_bg, bg = sign_delete })

  -------------------------------------------------------------------------
  -- Neovim standard styling
  -------------------------------------------------------------------------

  highlight(0, "Whitespace", { fg = dark_gray })
  highlight(0, "TermCursor", { bg = cursor_bg, fg = cursor_fg })

  if g.chromaNormalFloat then
    highlight(0, "NormalFloat", { bg = bg, fg = light_gray })
  else
    highlight(0, "NormalFloat", { bg = alt_bg, fg = none })
  end

  highlight(0, "FloatBorder", { bg = bg, fg = gray })
  highlight(0, "FloatTitle", { bg = alt_bg, fg = chroma_white })

  if g.chromaTransparent then
    highlight(0, "WinBar", { fg = fg })
    highlight(0, "WinBarNC", { fg = gray })
  else
    highlight(0, "WinBar", { bg = alt_bg, fg = fg })
    highlight(0, "WinBarNC", { bg = alt_bg, fg = gray })
  end

  highlight(0, "WinSeparator", { link = "VertSplit" })

  -------------------------------------------------------------------------
  -- LSP and Diagnostics
  -------------------------------------------------------------------------

  highlight(0, "DiagnosticError", { link = "chromaRed" })
  highlight(0, "DiagnosticWarn", { fg = warn })
  highlight(0, "DiagnosticInfo", { fg = info })
  highlight(0, "DiagnosticHint", { fg = hint })
  highlight(0, "DiagnosticOk", { link = "chromaGreen" })

  if g.chromaUndercurls then
    highlight(0, "DiagnosticUnderlineError", { undercurl = true, sp = error })
    highlight(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = warn })
    highlight(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = info })
    highlight(0, "DiagnosticUnderlineHint", { undercurl = true, sp = hint })
    highlight(0, "DiagnosticUnderlineOk", { undercurl = true, sp = chroma_green })
  else
    highlight(0, "DiagnosticUnderlineError", { underline = true, sp = error })
    highlight(0, "DiagnosticUnderlineWarn", { underline = true, sp = warn })
    highlight(0, "DiagnosticUnderlineInfo", { underline = true, sp = info })
    highlight(0, "DiagnosticUnderlineHint", { underline = true, sp = hint })
    highlight(0, "DiagnosticUnderlineOk", { underline = true, sp = chroma_green })
  end

  if g.chromaVirtualTextColor then
    highlight(0, "DiagnosticVirtualTextError", { fg = error, bg = error_bg })
    highlight(0, "DiagnosticVirtualTextWarn", { fg = warn, bg = warn_bg })
    highlight(0, "DiagnosticVirtualTextInfo", { fg = info, bg = info_bg })
    highlight(0, "DiagnosticVirtualTextHint", { fg = hint, bg = hint_bg })
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
  highlight(0, "LspReferenceRead", { bg = reference })
  highlight(0, "LspReferenceText", { bg = reference })
  highlight(0, "LspReferenceWrite", { bg = reference })
  highlight(0, "LspCodeLens", { fg = context, italic = true })
  highlight(0, "LspCodeLensSeparator", { fg = context, italic = true })

  -------------------------------------------------------------------------
  -- Tree-sitter
  -------------------------------------------------------------------------

  -- Tree-sitter highlight groups
  highlight(0, "@variable", { link = "chromaWhite" })
  highlight(0, "@variable.builtin", { link = "chromaWhite" })
  highlight(0, "@variable.parameter", { fg = light_blue })
  highlight(0, "@variable.member", { fg = light_blue })

  highlight(0, "@constant", { link = "chromaYellow" })
  highlight(0, "@constant.builtin", { link = "chromaYellow" })
  highlight(0, "@constant.macro", { link = "chromaBlue" })

  highlight(0, "@module", { link = "chromaWhite" })
  highlight(0, "@module.builtin", { link = "chromaWhite" })

  highlight(0, "@string", { link = "chromaGreen" })
  highlight(0, "@string.documentation", { link = "chromaGreen" })
  highlight(0, "@string.regexp", { link = "chromaGreen" })
  highlight(0, "@string.escape", { link = "chromaGreen" })
  highlight(0, "@string.special", { fg = fg })
  highlight(0, "@string.special.symbol", { link = "chromaRed" })
  highlight(0, "@string.special.url", { fg = chroma_white, underline = true })

  highlight(0, "@character", { link = "chromaRed" })
  highlight(0, "@character.special", { link = "chromaOrange" })

  highlight(0, "@boolean", { link = "chromaOrange" })
  highlight(0, "@number", { link = "chromaYellow" })
  highlight(0, "@number.float", { link = "chromaYellow" })

  highlight(0, "@type", { link = "chromaOrange" })
  highlight(0, "@type.builtin", { link = "chromaWhite" })
  highlight(0, "@type.definition", { link = "chromaPurple" })
  highlight(0, "@type.qualifier", { link = "chromaPurple" })

  highlight(0, "@attribute", { fg = chroma_white })
  highlight(0, "@property", { fg = light_blue })

  highlight(0, "@function", { link = "chromaRed" })
  highlight(0, "@function.builtin", { link = "chromaOrange" })
  highlight(0, "@function.call", { link = "chromaRed" })
  highlight(0, "@function.macro", { link = "chromaRed" })
  highlight(0, "@function.method", { link = "chromaRed" })
  highlight(0, "@function.method.call", { link = "chromaRed" })

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

  highlight(0, "@comment", { fg = context, italic = g.chromaItalics })
  highlight(0, "@comment.documentation", { fg = context, italic = g.chromaItalics })
  highlight(0, "@comment.error", { link = "chromaRed" })
  highlight(0, "@comment.warning", { fg = warn })
  highlight(0, "@comment.todo", { fg = magenta, bold = true })
  highlight(0, "@comment.note", { fg = info })

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

  highlight(0, "@markup.quote", { fg = context })
  highlight(0, "@markup.math", { fg = yellow })

  highlight(0, "@markup.link", { fg = cyan, underline = true })
  highlight(0, "@markup.link.label", { fg = blue })
  highlight(0, "@markup.link.url", { fg = chroma_white, underline = true })

  highlight(0, "@markup.raw", { fg = orange })
  highlight(0, "@markup.raw.block", { fg = orange })

  highlight(0, "@markup.list", { fg = blue })
  highlight(0, "@markup.list.checked", { fg = chroma_green })
  highlight(0, "@markup.list.unchecked", { fg = chroma_blue })

  highlight(0, "@diff.plus", { link = "DiffAdd" })
  highlight(0, "@diff.minus", { link = "DiffDelete" })
  highlight(0, "@diff.delta", { link = "DiffChange" })

  highlight(0, "@tag", { fg = cyan })
  highlight(0, "@tag.attribute", { fg = light_blue, italic = true })
  highlight(0, "@tag.delimiter", { fg = gray })

  highlight(0, "@label", { link = "chromaOrange" })

  -------------------------------------------------------------------------
  -- Plugin support
  -------------------------------------------------------------------------

  -- Telescope
  highlight(0, "TelescopeSelection", { bg = ui2_blue, fg = none })
  highlight(0, "TelescopeSelectionCaret", { fg = chroma_red, bg = ui2_blue })
  highlight(0, "TelescopeMatching", { fg = info, bold = true, italic = true })
  highlight(0, "TelescopeBorder", { fg = alt_fg })
  highlight(0, "TelescopeNormal", { fg = fg, bg = menu_bg })
  highlight(0, "TelescopePromptPrefix", { fg = hint })
  highlight(0, "TelescopePromptTitle", { fg = ui_orange, bold = true })
  highlight(0, "TelescopeResultsTitle", { fg = ui_orange, bold = true })
  highlight(0, "TelescopePreviewTitle", { fg = ui_orange, bold = true })

  -- NvimTree
  highlight(0, "NvimTreeFolderIcon", { link = "Directory" })
  highlight(0, "NvimTreeIndentMarker", { fg = context })
  highlight(0, "NvimTreeNormal", { fg = fg, bg = g.chromaTransparent and none or alt_bg })
  highlight(0, "NvimTreeVertSplit",
    { fg = g.chromaTransparent and none or alt_bg, bg = g.chromaTransparent and none or alt_bg })
  highlight(0, "NvimTreeFolderName", { link = "Directory" })
  highlight(0, "NvimTreeOpenedFolderName", { fg = folder_blue, bold = true, italic = true })
  highlight(0, "NvimTreeGitStaged", { fg = sign_add_alt })
  highlight(0, "NvimTreeGitNew", { fg = sign_add_alt })
  highlight(0, "NvimTreeGitDeleted", { fg = sign_delete })
  highlight(0, "NvimTreeGitDirty", { fg = sign_change_alt })
  highlight(0, "NvimTreeSymlink", { fg = cyan })
  highlight(0, "NvimTreeRootFolder", { fg = fg, bold = true })
  highlight(0, "NvimTreeExecFile", { fg = "#9FBA89" })
  highlight(0, "NvimTreeCursorLine", { bg = line })

  -- WhichKey
  highlight(0, "WhichKey", { fg = chroma_purple })
  highlight(0, "WhichKeySeperator", { fg = green })
  highlight(0, "WhichKeyGroup", { fg = blue })
  highlight(0, "WhichKeyDesc", { fg = fg })
  highlight(0, "WhichKeyFloat", { bg = g.chromaTransparent and none or alt_bg })

  -- GitSigns
  highlight(0, "GitSignsAdd", { fg = sign_add })
  highlight(0, "GitSignsChange", { fg = sign_change })
  highlight(0, "GitSignsDelete", { fg = sign_delete })

  -- nvim-cmp
  highlight(0, "CmpItemAbbrMatch", { fg = ui3_blue })
  highlight(0, "CmpItemAbbrMatchFuzzy", { fg = ui3_blue })
  highlight(0, "CmpItemKindFunction", { fg = ui_purple })
  highlight(0, "CmpItemKindMethod", { fg = ui_purple })
  highlight(0, "CmpItemKindVariable", { fg = light_blue })
  highlight(0, "CmpItemKindKeyword", { fg = fg })
  highlight(0, "CmpItemKindProperty", { fg = light_blue })
  highlight(0, "CmpItemKindConstant", { fg = chroma_blue })

  -- Dashboard
  highlight(0, "DashboardHeader", { fg = blue })
  highlight(0, "DashboardCenter", { fg = chroma_purple })
  highlight(0, "DashboardFooter", { fg = cyan })

  -- IndentBlankline
  highlight(0, "IndentBlanklineChar", { fg = dark_gray })
  highlight(0, "IndentBlanklineContextChar", { fg = context })
  highlight(0, "IndentBlanklineContextStart", { underline = true })

  -- Bufferline
  highlight(0, "BufferLineFill", { bg = g.chromaTransparent and none or line })
  highlight(0, "BufferLineBackground", { fg = gray, bg = g.chromaTransparent and none or alt_bg })
  highlight(0, "BufferLineBufferSelected", { fg = fg, bg = bg })
  highlight(0, "BufferLineBufferVisible", { fg = fg, bg = bg })
end

-- User customization of theme colors.
M.custom_colors = function(colors)
  fg = colors.fg and colors.fg or M.palette.fg
  chroma_fg_delimiter = colors.chroma_fg_delimiter and colors.chroma_fg_delimiter or M.palette.chroma_fg_delimiter
  bg = colors.bg and colors.bg or M.palette.bg
  alt_fg = colors.alt_fg and colors.alt_fg or M.palette.alt_fg
  alt_bg = colors.alt_bg and colors.alt_bg or M.palette.alt_bg
  chroma_grey = colors.chroma_grey and colors.chroma_grey or M.palette.chroma_grey
  chroma_green = colors.chroma_green and colors.chroma_green or M.palette.chroma_green
  chroma_white = colors.chroma_white and colors.chroma_white or M.palette.chroma_white
  chroma_orange = colors.chroma_orange and colors.chroma_orange or M.palette.chroma_orange
  chroma_blue = colors.chroma_blue and colors.chroma_blue or M.palette.chroma_blue
  chroma_blue2 = colors.chroma_blue2 and colors.chroma_blue2 or M.palette.chroma_blue2
  chroma_yellow = colors.chroma_yellow and colors.chroma_yellow or M.palette.chroma_yellow
  chroma_yellow2 = colors.chroma_yellow2 and colors.chroma_yellow2 or M.palette.chroma_yellow2
  chroma_red = colors.chroma_red and colors.chroma_red or M.palette.chroma_red
  chroma_purple = colors.chroma_purple and colors.chroma_purple or M.palette.chroma_purple

  -- Rebuild the palette with custom colors.
  M.palette = chroma_palette()
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
