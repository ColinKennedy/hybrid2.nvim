-- Maintainer: Colin Kennedy, <colinvfx@gmail.com>

local _extend = function(table_to_modify, items)
    for key, value in pairs(items)
    do
        table_to_modify[key] = value
    end
end

-- TODO: Make sure this works
local _multi_2 = function(first, second)
    local output = {}

    _extend(output, first)
    _extend(output, second)

    return output
end


-- TODO: Make sure this works
local _multi_3 = function(first, second, third)
    local output = {}

    _extend(output, first)
    _extend(output, second)
    _extend(output, third)

    return output
end


vim.cmd[[set background=dark]]

-- General Palette. Make sure these colors look good!
local _BLACK_20 = "#2c323c"
local _BLACK_30 = "#282a2e"
local _BLACK_50 = "#1d1f21"

local _WHITE = "#abb2bf"

local _GRAY_10 = "#c0c0c0"
local _GRAY_20 = "#707880"
local _GRAY_30 = "#6c6c6c"
local _GRAY_50 = "#373b41"

-- Used for errors
local _RED_10 = "#cc6666"
local _RED_20 = "#5f0000"

-- Colors that denote "sections"
local _SECTION_10 = "#de935f"
local _SECTION_20 = "#DF8239"
local _SECTION_30 = "#f0c674"
local _SECTION_40 = "#f0e4c8"
local _SECTION_50 = "#cccccc"
local _SECTION_60 = "#ffffff"

-- "Base" colors, used for "normal" situations
local _GREEN_10 = "#b5bd68"
local _GREEN_30 = "#5f875f"

-- Typically used for "builtin" colors
local _PURPLE_10 = "#d7d7ff"
local _PURPLE_30 = "#b294bb"
local _PURPLE_50 = "#5f005f"
local _COOL_BLUE_10 = "#81a2be"
local _COOL_BLUE_20 = "#005f5f"

-- Special purpose, "don't use these too often" colors
local _ACCENT_ATTENTION_NORMAL = "#d7ffaf"
local _ACCENT_DEEP_BLUE_10 = "#00005f"
local _ACCENT_COOL_GRAY = "#5f5f87"
local _ACCENT_CRITICAL_10 = "#FF4400"

-- Controller Variables - Colors
local _BLACK_30_BG = {bg=_BLACK_30, ctermbg=235}
local _ACCENT_BLUE_50_BG = {bg=_ACCENT_DEEP_BLUE_10, ctermbg=17}
local _ACCENT_COOL_GRAY_BG = {bg=_ACCENT_COOL_GRAY, ctermbg=60}
local _CYAN_10_BG= {bg=_COOL_BLUE_10, ctermbg=109}
local _CYAN_10_FG = {fg=_COOL_BLUE_10, ctermfg=109}
local _CYAN_30_BG = {bg=_COOL_BLUE_20, ctermbg=23}
local _GRAY_20_FG = {fg=_GRAY_10, ctermfg=250}
local _GRAY_30_BG = {bg=_GRAY_30, ctermbg=242}
local _KHAKI_GREEN = {fg=_GREEN_10, ctermfg=143}
local _PURPLE_20_FG = {fg=_PURPLE_30, ctermfg=139}
local _PURPLE_50_BG = {bg=_PURPLE_50, ctermbg=53}
local _WHITE_BG = {bg=_WHITE, ctermbg=249}
local _WHITE_FG = {fg=_WHITE, ctermfg=249}
local _WHITE_10_FG = {fg=_BLACK_50, ctermfg=234}

-- Controller Variables - Purposes
local _BG = {bg=_BLACK_50, ctermbg=234}
local _BG_DARKER_20 = {ctermbg=16, bg="#111111"}  -- Like _BG, but much darker
local _BG_AS_FG = {fg=_BLACK_50, ctermfg=234}
local _COMMENT = {fg=_GRAY_20, ctermfg=243}
local _CONSTANT_FG = {fg=_RED_10, ctermfg=167}
local _CURSOR_GRAY_FG = {fg=_BLACK_20, ctermfg=236}
local _DIFF_CHANGE_FG = {fg=_PURPLE_10, ctermfg=189}
local _ERROR_50_BG = {bg=_RED_20, ctermbg=52}
local _ERROR_BG = {bg=_RED_10, ctermbg=167}
local _ERROR_FG = {fg=_RED_10, ctermfg=167}
local _KNOWN_VARIABLE = {fg=_PURPLE_30, ctermfg=216}  -- LightSalmon1
local _LINE_GRAY_BG = {bg=_GRAY_20, ctermbg=243}
local _MENU_GRAY_BG = {bg=_GRAY_50, ctermbg=237}
local _NON_TEXT_FG = {fg=_GRAY_50, ctermfg=237}
local _NOTE_10_FG = {fg=_ACCENT_ATTENTION_NORMAL, ctermfg=193}
local _NOTE_DIFF_ADD_10_FG = _NOTE_10_FG
local _SEARCH_BG = {bg=_BLACK_50, ctermbg=234}
local _SEARCH_FG = {fg=_BLACK_50, ctermfg=234}
local _SPECIAL_GRAY_FG = {fg=_GRAY_50, ctermfg=238}
local _SPECIAL_VARIABLE = {fg=_ACCENT_CRITICAL_10, ctermfg=96}
local _STATEMENT = {fg=_COOL_BLUE_10, ctermfg=109}
local _TITLE_BG = {bg=_SECTION_30, ctermbg=222}
local _TITLE_FG = {fg=_SECTION_30, ctermfg=222}
local _TYPE = {fg=_SECTION_10, ctermfg=173}
local _VERT_SPLIT_FG = {fg=_GRAY_50, ctermfg=236}
local _VISUAL_GRAY_BG = {bg=_GRAY_50, ctermbg=237}
local _VISUAL_GRAY_FG = {fg=_GRAY_50, ctermfg=237}

-- Controller Variables - Miscellaneous
local _BOLD = {bold = true}
local _NONE = {cterm=nil, gui=nil}  -- Use this to disable highlighting on a group
local _REVERSE = {reverse = true}
local _UNDERLINE = {underline = true}


-- General
vim.api.nvim_set_hl(0, "Normal", _multi_2(_BG, _WHITE_FG))  -- BG color
vim.api.nvim_set_hl(0, "NormalFloat", _BG_DARKER_20)  -- Floating BG color
vim.api.nvim_set_hl(0, "Boolean", _CONSTANT_FG)
vim.api.nvim_set_hl(0, "Character", _CONSTANT_FG)
vim.api.nvim_set_hl(0, "Comment", _COMMENT)
vim.api.nvim_set_hl(0, "Conditional", _STATEMENT)
vim.api.nvim_set_hl(0, "Constant", _CONSTANT_FG)
vim.api.nvim_set_hl(0, "Define", _STATEMENT)
vim.api.nvim_set_hl(0, "Error", _multi_2(_ERROR_FG, _ERROR_50_BG))
vim.api.nvim_set_hl(0, "Exception", _STATEMENT)
vim.api.nvim_set_hl(0, "Float", _CONSTANT_FG)
vim.api.nvim_set_hl(0, "Function", _TITLE_FG)
vim.api.nvim_set_hl(0, "Identifier", _WHITE_FG)
vim.api.nvim_set_hl(0, "Include", _STATEMENT)
vim.api.nvim_set_hl(0, "Keyword", _STATEMENT)
vim.api.nvim_set_hl(0, "Label", _STATEMENT)
vim.api.nvim_set_hl(0, "Macro", _STATEMENT)
vim.api.nvim_set_hl(0, "Number", _CONSTANT_FG)
vim.api.nvim_set_hl(0, "Operator", _STATEMENT)
vim.api.nvim_set_hl(0, "PreCondit", _STATEMENT)
vim.api.nvim_set_hl(0, "PreProc", _STATEMENT)
vim.api.nvim_set_hl(0, "Repeat", _STATEMENT)
vim.api.nvim_set_hl(0, "Special", _KHAKI_GREEN)
vim.api.nvim_set_hl(0, "SpecialComment", _KHAKI_GREEN)
vim.api.nvim_set_hl(0, "Statement", _STATEMENT)
vim.api.nvim_set_hl(0, "StorageClass", _TYPE)
vim.api.nvim_set_hl(0, "String", _KHAKI_GREEN)
vim.api.nvim_set_hl(0, "Structure", _STATEMENT)
vim.api.nvim_set_hl(0, "Title", _TITLE_FG)
vim.api.nvim_set_hl(0, "Todo", _NOTE_10_FG)
vim.api.nvim_set_hl(0, "Type", _TYPE)
vim.api.nvim_set_hl(0, "Typedef", _STATEMENT)
vim.api.nvim_set_hl(0, "Underlined", _multi_2(_CYAN_10_FG, {gui=underline, cterm=underline}))
vim.api.nvim_set_hl(0, "Cursor", {gui=reverse, cterm=reverse})
vim.api.nvim_set_hl(0, "ColorColumn", _BLACK_30_BG)
vim.api.nvim_set_hl(0, "Conceal", _multi_2(_GRAY_20_FG, _GRAY_30_BG))
vim.api.nvim_set_hl(0, "DiffAdd", _multi_2(_NOTE_10_FG, {bg=_GREEN_30, ctermbg=65}))
vim.api.nvim_set_hl(0, "DiffChange", _multi_2(_DIFF_CHANGE_FG, _ACCENT_COOL_GRAY_BG))
vim.api.nvim_set_hl(0, "DiffDelete", _multi_2(_SEARCH_FG, _ERROR_BG))
vim.api.nvim_set_hl(0, "DiffText", _multi_2(_WHITE_10_FG, _CYAN_10_BG))
vim.api.nvim_set_hl(0, "Directory", _CYAN_10_FG)
vim.api.nvim_set_hl(0, "EndOfBuffer", _NON_TEXT_FG)
vim.api.nvim_set_hl(0, "ErrorMsg", _ERROR_FG)
vim.api.nvim_set_hl(0, "FoldColumn", _BG)
vim.api.nvim_set_hl(0, "Folded", _COMMENT)
vim.api.nvim_set_hl(0, "IncSearch", {link="Search"})
vim.api.nvim_set_hl(0, "LineNr", _CURSOR_GRAY_FG)
vim.api.nvim_set_hl(0, "MatchParen", _multi_2(_WHITE_10_FG, _ACCENT_COOL_GRAY_BG))
vim.api.nvim_set_hl(0, "NonText", _NON_TEXT_FG)
vim.api.nvim_set_hl(0, "Pmenu", _multi_2(_GRAY_20_FG, _MENU_GRAY_BG))
vim.api.nvim_set_hl(0, "PmenuSel", _multi_2(_BG_AS_FG, _WHITE_BG))
vim.api.nvim_set_hl(0, "Question", _NOTE_10_FG)
vim.api.nvim_set_hl(0, "QuickFixLine", _multi_2(_SEARCH_FG, _SEARCH_BG))
vim.api.nvim_set_hl(0, "Search", _multi_2(_SEARCH_FG, _TITLE_BG))  -- Matching search text
vim.api.nvim_set_hl(0, "SignColumn", _BG)
vim.api.nvim_set_hl(0, "SpecialKey", _SPECIAL_GRAY_FG)
vim.api.nvim_set_hl(0, "SpellBad", _multi_3(_ERROR_FG, _ERROR_50_BG, _UNDERLINE))
vim.api.nvim_set_hl(0, "SpellCap", _multi_3(_CYAN_10_FG, _ACCENT_BLUE_50_BG, _UNDERLINE))
vim.api.nvim_set_hl(0, "SpellLocal", _multi_3(_CYAN_10_FG, _CYAN_30_BG, _UNDERLINE))
vim.api.nvim_set_hl(0, "SpellRare", _multi_3(_PURPLE_20_FG, _PURPLE_50_BG, _UNDERLINE))
vim.api.nvim_set_hl(0, "StatusLine", _multi_3(_COMMENT, _SEARCH_BG, _REVERSE))
vim.api.nvim_set_hl(0, "StatusLineNC", _multi_3(_VERT_SPLIT_FG, _LINE_GRAY_BG, _REVERSE))
vim.api.nvim_set_hl(0, "WinSeparator", _VERT_SPLIT_FG)
vim.api.nvim_set_hl(0, "TabLine", _GRAY_30_BG)
vim.api.nvim_set_hl(0, "TabLineFill", _REVERSE)
vim.api.nvim_set_hl(0, "TermCursor", _multi_2(_BG_AS_FG, _WHITE_BG))
vim.api.nvim_set_hl(0, "TabLineSel", _BOLD)
vim.api.nvim_set_hl(0, "VertSplit", {link="WinSeparator"})
vim.api.nvim_set_hl(0, "Visual", _VISUAL_GRAY_BG)
vim.api.nvim_set_hl(0, "VisualNOS", _VISUAL_GRAY_FG)

-- Disable LSP underlining. I already use virtual text so there's no need for
-- distracting underlines as well.
--
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", _NONE)
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", _NONE)
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", _NONE)
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", _NONE)
vim.api.nvim_set_hl(0, "DiagnosticUnderlineOk", _NONE)


-- Quickfix
vim.api.nvim_set_hl(0, "qfLineNr", _TITLE_FG)
vim.api.nvim_set_hl(0, "QuickFixLine", {link="Search"})
-- qfFileName
-- qfLineNr
-- qfError

-- nvim-treesitter settings
--
-- https://github.com/nvim-treesitter/nvim-treesitter
--
vim.api.nvim_set_hl(0, "@attribute", {link="Function"})
vim.api.nvim_set_hl(0, "@function.builtin", _KNOWN_VARIABLE)
vim.api.nvim_set_hl(0, "@markup.link", _SPECIAL_VARIABLE)
vim.api.nvim_set_hl(0, "@markup.raw", _STATEMENT)
vim.api.nvim_set_hl(0, "@module", _COMMENT)
vim.api.nvim_set_hl(0, "@punctuation", _WHITE_FG)
vim.api.nvim_set_hl(0, "@string.documentation", _KHAKI_GREEN)
vim.api.nvim_set_hl(0, "@string.special.url", _SPECIAL_VARIABLE)
vim.api.nvim_set_hl(0, "@text.uri", {link="@string.special.url"})
vim.api.nvim_set_hl(0, "@variable.builtin", _KNOWN_VARIABLE)

-- nvim-treesitter - Language Specific
vim.api.nvim_set_hl(0, "@character.cpp", {link="String"})
vim.api.nvim_set_hl(0, "@diff.add.diff", {link="DiffAdd"})
vim.api.nvim_set_hl(0, "@diff.delete.diff", {link="DiffDelete"})
vim.api.nvim_set_hl(0, "@diff.minus.diff", {link="DiffDelete"})
vim.api.nvim_set_hl(0, "@diff.plus.diff", {link="DiffAdd"})
vim.api.nvim_set_hl(0, "@text.diff.add.diff", {link="DiffAdd"})
vim.api.nvim_set_hl(0, "@text.diff.delete.diff", {link="DiffDelete"})

-- Plugin - https://github.com/airblade/vim-gitgutter
vim.api.nvim_set_hl(0, "GitGutterAdd", _NOTE_DIFF_ADD_10_FG)
vim.api.nvim_set_hl(0, "GitGutterChange", _DIFF_CHANGE_FG)
vim.api.nvim_set_hl(0, "GitGutterDelete", _VERT_SPLIT_FG)
vim.api.nvim_set_hl(0, "GitGutterAddInvisible", {bg="Grey", ctermbg=242})
vim.api.nvim_set_hl(0, "GitGutterChangeInvisible", {bg="Grey", ctermbg=242})
vim.api.nvim_set_hl(0, "GitGutterDeleteInvisible", {bg="Grey", ctermbg=242})

-- Special: Disable line highlighting of the cursor row BUT highlight the current line as a color
--
-- Reference: https://stackoverflow.com/a/26205823
-- Reference: https://www.reddit.com/r/neovim/comments/16zjizx/comment/k3ey1rt/?utm_source=share&utm_medium=web2x&context=3
--
vim.api.nvim_set_hl(0, "CursorLine", {cterm=nil, ctermbg=nil, ctermfg=nil, bg=nil, fg=nil})
vim.api.nvim_set_hl(0, "CursorColumn", _BLACK_30_BG)
vim.api.nvim_set_hl(0, "CursorLineNr", _TITLE_FG)
vim.cmd[[set cursorline]]


-- Plugin - https://github.com/machakann/vim-highlightedyank
vim.api.nvim_set_hl(0, "HighlightedyankRegion", {link="Search"})
