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

-- Controller Variables - Colors
local _BLACK_50_BG = {bg="#282a2e", ctermbg=235}
local _BLUE_50_BG = {bg="#00005f", ctermbg=17}
local _COOL_GRAY_BG = {bg="#5f5f87", ctermbg=60}
local _CYAN_10_BG= {bg="#81a2be", ctermbg=109}
local _CYAN_10_FG = {fg="#81a2be", ctermfg=109}
local _CYAN_30_BG = {bg="#005f5f", ctermbg=23}
local _GRAY_20_FG = {fg="#c0c0c0", ctermfg=250}
local _GRAY_30_BG = {bg="#6c6c6c", ctermbg=242}
local _KHAKI_GREEN = {fg="#b5bd68", ctermfg=143}
local _PURPLE_20_FG = {fg="#b294bb", ctermfg=139}
local _PURPLE_50_BG = {bg="#5f005f", ctermbg=53}
local _WHITE_BG = {bg="#abb2bf", ctermbg=249}
local _WHITE_FG = {fg="#abb2bf", ctermfg=249}
local _WHITE_10_FG = {fg="#1d1f21", ctermfg=234}
local _YELLOW_FG = {fg="#b5bd68", ctermfg=143}

-- Controller Variables - Purposes
local _BG = {bg="#1c1c1c", ctermbg=234}
local _BG_DARKER_20 = {ctermbg=16, bg="#111111"}  -- Like _BG, but much darker
local _BG_AS_FG = {fg="#1c1c1c", ctermfg=234}
local _COMMENT = {fg="#707880", ctermfg=243}
local _COMMENT_30_BG = {bg="#707880", ctermbg=243}
local _CONSTANT_FG = {fg="#cc6666", ctermfg=167}
local _CURSOR_GRAY_FG = {fg="#2c323c", ctermfg=236}
local _DIFF_CHANGE_FG = {fg="#d7d7ff", ctermfg=189}
local _ERROR_50_BG = {bg="#5f0000", ctermbg=52}
local _ERROR_BG = {bg="#cc6666", ctermbg=167}
local _ERROR_FG = {fg="#cc6666", ctermfg=167}
local _KNOWN_VARIABLE = {fg="#B294BB", ctermfg=216}  -- LightSalmon1
local _LINE_GRAY_BG = {bg="#707880", ctermbg=243}
local _MENU_GRAY_BG = {bg="#373b41", ctermbg=237}
local _NON_TEXT_FG = {fg="#373b41", ctermfg=237}
local _NOTE_10_FG = {fg="#d7ffaf", ctermfg=193}
local _NOTE_DIFF_ADD_10_FG = _NOTE_10_FG
local _SEARCH_BG = {bg="#1d1f21", ctermbg=234}
local _SEARCH_FG = {fg="#1d1f21", ctermfg=234}
local _SPECIAL_GRAY_BG = {bg="#3b4048", ctermbg=238}
local _SPECIAL_GRAY_FG = {fg="#3b4048", ctermfg=238}
local _SPECIAL_VARIABLE = {fg="#FF4400", ctermfg=96}  -- Pale purple / Plum4
local _STATEMENT = {fg="#81a2be", ctermfg=109}
local _TITLE_BG = {bg="#f0c674", ctermbg=222}
local _TITLE_FG = {fg="#f0c674", ctermfg=222}
local _TYPE = {fg="#de935f", ctermfg=173}
local _VERT_SPLIT_FG = {fg="#303030", ctermfg=236}
local _VISUAL_GRAY_BG = {bg="#373b41", ctermbg=237}
local _VISUAL_GRAY_FG = {fg="#373b41", ctermfg=237}
local _WHITE_50_BG = {bg="#ffffff", ctermbg=231}

-- Controller Variables - Miscellaneous
local _BOLD = {gui=bold, cterm=bold}
local _NONE = {cterm=nil, gui=nil}  -- Use this to disable highlighting on a group
local _REVERSE = {gui=reverse, cterm=reverse}
local _UNDERLINE = {gui=underline, cterm=underline}


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
vim.api.nvim_set_hl(0, "ColorColumn", _BLACK_50_BG)
vim.api.nvim_set_hl(0, "Conceal", _multi_2(_GRAY_20_FG, _GRAY_30_BG))
vim.api.nvim_set_hl(0, "DiffAdd", _multi_2(_NOTE_10_FG, {bg="#5f875f", ctermbg=65}))
vim.api.nvim_set_hl(0, "DiffChange", _multi_2(_DIFF_CHANGE_FG, _COOL_GRAY_BG))
vim.api.nvim_set_hl(0, "DiffDelete", _multi_2(_SEARCH_FG, _ERROR_BG))
vim.api.nvim_set_hl(0, "DiffText", _multi_2(_WHITE_10_FG, _CYAN_10_BG))
vim.api.nvim_set_hl(0, "Directory", _CYAN_10_FG)
vim.api.nvim_set_hl(0, "EndOfBuffer", _NON_TEXT_FG)
vim.api.nvim_set_hl(0, "ErrorMsg", _ERROR_FG)
vim.api.nvim_set_hl(0, "FoldColumn", _BG)
vim.api.nvim_set_hl(0, "Folded", _COMMENT)
vim.api.nvim_set_hl(0, "IncSearch", {link="Search"})
vim.api.nvim_set_hl(0, "LineNr", _CURSOR_GRAY_FG)
vim.api.nvim_set_hl(0, "MatchParen", _multi_2(_WHITE_10_FG, _COOL_GRAY_BG))
vim.api.nvim_set_hl(0, "NonText", _NON_TEXT_FG)
vim.api.nvim_set_hl(0, "Pmenu", _multi_2(_GRAY_20_FG, _MENU_GRAY_BG))
vim.api.nvim_set_hl(0, "PmenuSel", _multi_2(_BG_AS_FG, _WHITE_BG))
-- Not sure if I need these
-- vim.api.nvim_set_hl(0, "PmenuSbar", _SPECIAL_GRAY_BG)
-- vim.api.nvim_set_hl(0, "PmenuThumb", _WHITE_50_BG)
vim.api.nvim_set_hl(0, "Question", _NOTE_10_FG)
vim.api.nvim_set_hl(0, "QuickFixLine", _multi_2(_SEARCH_FG, _SEARCH_BG))
vim.api.nvim_set_hl(0, "Search", _multi_2(_SEARCH_FG, _TITLE_BG))  -- Matching search text
vim.api.nvim_set_hl(0, "SignColumn", _BG)
vim.api.nvim_set_hl(0, "SpecialKey", _SPECIAL_GRAY_FG)
vim.api.nvim_set_hl(0, "SpellBad", _multi_3(_ERROR_FG, _ERROR_50_BG, _UNDERLINE))
vim.api.nvim_set_hl(0, "SpellCap", _multi_3(_CYAN_10_FG, _BLUE_50_BG, _UNDERLINE))
vim.api.nvim_set_hl(0, "SpellLocal", _multi_3(_CYAN_10_FG, _CYAN_30_BG, _UNDERLINE))
vim.api.nvim_set_hl(0, "SpellRare", _multi_3(_PURPLE_20_FG, _PURPLE_50_BG, _UNDERLINE))
vim.api.nvim_set_hl(0, "StatusLine", _multi_3(_COMMENT, _SEARCH_BG, _REVERSE))
vim.api.nvim_set_hl(0, "StatusLineNC", _multi_3(_VERT_SPLIT_FG, _LINE_GRAY_BG, _REVERSE))
vim.api.nvim_set_hl(0, "TabLine", _GRAY_30_BG)
vim.api.nvim_set_hl(0, "TabLineFill", _REVERSE)
vim.api.nvim_set_hl(0, "TermCursor", _multi_2(_BG_AS_FG, _WHITE_BG))
vim.api.nvim_set_hl(0, "TabLineSel", _BOLD)
vim.api.nvim_set_hl(0, "VertSplit", _VERT_SPLIT_FG)
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
vim.api.nvim_set_hl(0, "@namespace", _COMMENT)
vim.api.nvim_set_hl(0, "@punctuation", _WHITE_FG)
vim.api.nvim_set_hl(0, "@string.documentation", _KHAKI_GREEN)
vim.api.nvim_set_hl(0, "@text.uri", _SPECIAL_VARIABLE)
vim.api.nvim_set_hl(0, "@variable.builtin", _KNOWN_VARIABLE)
-- nvim-treesitter - Language Specific
vim.api.nvim_set_hl(0, "@character.cpp", {link="String"})

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
--
vim.api.nvim_set_hl(0, "CursorLine", {cterm=nil, ctermbg=nil, ctermfg=nil, bg=nil, fg=nil})
vim.api.nvim_set_hl(0, "CursorColumn", _BLACK_50_BG)
vim.api.nvim_set_hl(0, "CursorLineNr", _TITLE_FG)
vim.cmd[[set cursorline]]


-- Plugin - https://github.com/machakann/vim-highlightedyank
vim.api.nvim_set_hl(0, "HighlightedyankRegion", {link="Search"})
