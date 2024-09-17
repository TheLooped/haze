local p = require("haze.palette")

local theme = {}

theme.loadSyntax = function()
	local syntax = {
		Boolean = { fg = p.amber },
		Character = { fg = p.coral },
		Comment = { fg = p.periwinkle, style = "italic" },
		Conditional = { fg = p.violet },
		Constant = { fg = p.glacial, style = "bold" },
		Debug = { fg = p.coral },
		Define = { fg = p.tidepool },
		Delimiter = { fg = p.ash },
		Error = { fg = p.coral },
		Exception = { fg = p.frosted },
		Float = { fg = p.amber },
		Function = { fg = p.twilight, style = "italic" },
		Identifier = { fg = p.frost, style = "bold" },
		Include = { link = "PreProc" },
		Keyword = { fg = p.violet },
		Label = { fg = p.golden },
		Macro = { fg = p.tidepool },
		Number = { fg = p.amber },
		Operator = { fg = p.periwinkle },
		PreCondit = { link = "PreProc" },
		PreProc = { fg = p.periwinkle },
		Repeat = { fg = p.violet },
		Special = { fg = p.frosted, style = "italic" },
		SpecialChar = { fg = p.frosted, style = "italic" },
		SpecialComment = { fg = p.glacial },
		Statement = { fg = p.twilight, style = "bold" },
		StorageClass = { fg = p.coral },
		String = { fg = p.mossy },
		Structure = { fg = p.violet },
		Tag = { fg = p.frost },
		Todo = { fg = p.twilight, style = "bold" },
		Type = { fg = p.golden },
		Typedef = { link = "Type" },
		Underlined = { style = "underline" },
		Bold = { style = "bold" },
		Italic = { style = "italic" },
		-- Diff highlighting
		diffAdded = { fg = p.mossy },
		diffRemoved = { fg = p.coral },
		diffChanged = { fg = p.twilight },
		diffOldFile = { fg = p.golden },
		diffNewFile = { fg = p.frosted },
		diffFile = { fg = p.twilight },
		diffLine = { fg = p.periwinkle },
		diffIndexLine = { fg = p.golden },
	}
	return syntax
end

theme.loadEditor = function()
	local editor = {
		ColorColumn = { bg = p.smoke },
		Conceal = { fg = p.periwinkle },
		Cursor = { fg = p.eclipse, bg = p.frost },
		lCursor = { fg = p.eclipse, bg = p.frost },
		CursorIM = { fg = p.eclipse, bg = p.frost },
		CursorLine = { bg = p.abyss },
		CursorLineNr = { fg = p.glacial },
		Directory = { fg = p.violet },
		EndOfBuffer = { fg = p.abyss },
		ErrorMsg = { fg = p.coral, style = "bold" },
		FoldColumn = { fg = p.periwinkle, bg = p.eclipse },
		Folded = { fg = p.golden, bg = p.eclipse, style = "italic" },
		IncSearch = { fg = p.glacial, bg = p.periwinkle },
		LineNr = { fg = p.ash },
		MatchParen = { fg = p.amber, bg = nil, style = "underline" },
		ModeMsg = { fg = p.frost, style = "bold" },
		MoreMsg = { fg = p.glacial },
		NonText = { fg = p.ash },
		Normal = { fg = p.frost, bg = p.shadow },
		NormalNC = { fg = p.ash, bg = p.shadow },
		NormalFloat = { fg = p.frost, bg = p.eclipse },
		FloatBorder = { fg = p.periwinkle, bg = p.eclipse },
		Pmenu = { bg = p.abyss, fg = p.ash },
		PmenuSel = { bg = p.periwinkle, fg = p.eclipse, style = "bold" },
		PmenuSbar = { bg = p.smoke },
		PmenuThumb = { bg = p.ash },
		Question = { fg = p.ash },
		QuickFixLine = { bg = p.smoke },
		Search = { fg = p.golden, bg = nil, style = "underline" },
		SpecialKey = { link = "NonText" },
		SpellBad = { sp = p.coral, style = "undercurl" },
		SpellCap = { sp = p.amber, style = "undercurl" },
		SpellLocal = { sp = p.twilight, style = "undercurl" },
		SpellRare = { sp = p.mossy, style = "undercurl" },
		StatusLine = { fg = p.frost, bg = p.eclipse },
		StatusLineNC = { fg = p.ash, bg = p.eclipse },
		Substitute = { bg = p.periwinkle, fg = p.frost },
		TabLine = { bg = p.smoke, fg = nil },
		TabLineFill = { bg = nil },
		TabLineSel = { fg = p.tidepool, bg = nil },
		Title = { fg = p.tidepool, style = "bold" },
		VertSplit = { fg = p.abyss },
		Visual = { bg = p.smoke },
		VisualNOS = { bg = p.smoke },
		WarningMsg = { fg = p.golden },
		Whitespace = { fg = p.periwinkle },
		WildMenu = { bg = p.slate },
	}
	return editor
end

theme.loadTerminal = function()
	vim.g.terminal_color_0 = p.ash
	vim.g.terminal_color_1 = p.coral
	vim.g.terminal_color_2 = p.mossy
	vim.g.terminal_color_3 = p.golden
	vim.g.terminal_color_4 = p.twilight
	vim.g.terminal_color_5 = p.violet
	vim.g.terminal_color_6 = p.glacial
	vim.g.terminal_color_7 = p.frost
	vim.g.terminal_color_8 = p.slate
	vim.g.terminal_color_9 = p.amber
	vim.g.terminal_color_10 = p.frosted
	vim.g.terminal_color_11 = p.amber
	vim.g.terminal_color_12 = p.periwinkle
	vim.g.terminal_color_13 = p.violet
	vim.g.terminal_color_14 = p.tidepool
	vim.g.terminal_color_15 = p.frost
end

theme.loadTreesitter = function()
	local treesitter = {
		["@variable"] = { fg = p.frost },
		["@variable.builtin"] = { fg = p.periwinkle },
		["@variable.parameter"] = { fg = p.frosted },
		["@variable.member"] = { fg = p.tidepool },
		["@constant"] = { link = "Constant" },
		["@constant.builtin"] = { fg = p.frosted },
		["@constant.macro"] = { link = "Macro" },
		["@module"] = { fg = p.tidepool, style = "italic" },
		["@label"] = { link = "Label" },
		["@string"] = { link = "String" },
		["@string.regexp"] = { fg = p.coral },
		["@string.escape"] = { fg = p.amber },
		["@string.special"] = { link = "Special" },
		["@character"] = { link = "Character" },
		["@character.special"] = { link = "SpecialChar" },
		["@boolean"] = { link = "Boolean" },
		["@number"] = { link = "Number" },
		["@float"] = { link = "Float" },
		["@function"] = { link = "Function" },
		["@function.builtin"] = { fg = p.coral },
		["@function.call"] = { link = "Function" },
		["@function.macro"] = { fg = p.glacial },
		["@method"] = { link = "Function" },
		["@constructor"] = { fg = p.violet },
		["@parameter"] = { fg = p.frosted },

		["@keyword"] = { link = "Keyword" },
		["@keyword.function"] = { fg = p.periwinkle },
		["@keyword.operator"] = { link = "Operator" },
		["@keyword.return"] = { fg = p.periwinkle },

		["@conditional"] = { link = "Conditional" },
		["@repeat"] = { link = "Repeat" },
		["@debug"] = { link = "Debug" },
		["@label"] = { link = "Label" },
		["@include"] = { link = "Include" },
		["@exception"] = { link = "Exception" },

		["@type"] = { link = "Type" },
		["@type.builtin"] = { fg = p.golden, style = "italic" },
		["@type.qualifier"] = { link = "Type" },
		["@type.definition"] = { link = "Typedef" },

		["@storageclass"] = { link = "StorageClass" },
		["@attribute"] = { link = "PreProc" },
		["@field"] = { fg = p.tidepool },
		["@property"] = { fg = p.tidepool },

		["@punctuation.delimiter"] = { fg = p.ash },
		["@punctuation.bracket"] = { fg = p.ash },
		["@punctuation.special"] = { fg = p.periwinkle },

		["@comment"] = { link = "Comment" },
		["@tag"] = { fg = p.periwinkle },
		["@tag.attribute"] = { fg = p.glacial, style = "italic" },
		["@tag.delimiter"] = { fg = p.twilight },
	}
	return treesitter
end

theme.loadLsp = function()
	local lsp = {
		LspReferenceText = { bg = p.smoke },
		LspReferenceRead = { bg = p.smoke },
		LspReferenceWrite = { bg = p.smoke },
		DiagnosticError = { fg = p.coral, style = "bold" },
		DiagnosticWarn = { fg = p.amber, style = "bold" },
		DiagnosticInfo = { fg = p.glacial, style = "italic" },
		DiagnosticHint = { fg = p.periwinkle, style = "italic" },
		DiagnosticVirtualTextError = { fg = p.coral, bg = p.eclipse, style = "bold,italic" },
		DiagnosticVirtualTextWarn = { fg = p.amber, bg = p.eclipse, style = "bold,italic" },
		DiagnosticVirtualTextInfo = { fg = p.glacial, bg = p.eclipse, style = "italic" },
		DiagnosticVirtualTextHint = { fg = p.periwinkle, bg = p.eclipse, style = "italic" },
		DiagnosticUnderlineError = { style = "undercurl", sp = p.coral },
		DiagnosticUnderlineWarn = { style = "undercurl", sp = p.amber },
		DiagnosticUnderlineInfo = { style = "undercurl", sp = p.ash },
		DiagnosticUnderlineHint = { style = "undercurl", sp = p.ash },
		LspSignatureActiveParameter = { fg = p.periwinkle, style = "bold,underline" },
		LspCodeLens = { fg = p.slate },
		LspCodeLensSeparator = { fg = p.slate },
	}
	return lsp
end

return theme
