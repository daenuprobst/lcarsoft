--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require("lush")
local hsl = lush.hsl

local background = hsl("#0a0e14")
local space_white = hsl("#f5f6fa")
local violet_creme = hsl("#ddbbff")
local green = hsl("#33cc99")
local magenta = hsl("#cc4499")
local blue = hsl("#4455ff")
local yellow = hsl("#ffcc33")
local violet = hsl("#9944ff")
local orange = hsl("#ff7700")
local african_violet = hsl("#cc88ff")
local text = hsl("#cc77ff")
local red = hsl("#dd4444")
local almond = hsl("#ffaa90")
local almond_creme = hsl("#ffbbaa")
local sunflower = hsl("#ffcc66")
local bluey = hsl("#7788ff")
local sky = hsl("#aaaaff")
local ice = hsl("#88ccff")
local gold = hsl("#ffaa00")
local mars = hsl("#ff2200")
local peach = hsl("#ff8866")
local gray = hsl("#666688")
local butterscotch = hsl("#ff9966")
local tomato = hsl("#ff5555")
local lilac = hsl("#cc33ff")

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global

local theme = lush(function(injected_functions)
	local sym = injected_functions.sym
	return {
		-- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
		-- groups, mostly used for styling UI elements.
		-- Comment them out and add your own properties to override the defaults.
		-- An empty definition `{}` will clear all styling, leaving elements looking
		-- like the 'Normal' group.
		-- To be able to link to a group, it must already be defined, so you may have
		-- to reorder items as you go.
		--
		-- See :h highlight-groups
		--
		-- ColorColumn    { }, -- Columns set with 'colorcolumn'
		-- Conceal        { }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor            { fg = background, bg = gold }, -- Character under the cursor
		-- CurSearch      { }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
		-- lCursor        { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
		-- CursorIM       { }, -- Like Cursor, but used when in IME mode |CursorIM|
		CursorColumn      { bg = background.lighten(5) }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorLine        { bg = background.lighten(5) }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
		-- Directory      { }, -- Directory names (and other special names in listings)
		-- DiffAdd        { }, -- Diff mode: Added line |diff.txt|
		-- DiffChange     { }, -- Diff mode: Changed line |diff.txt|
		-- DiffDelete     { }, -- Diff mode: Deleted line |diff.txt|
		-- DiffText       { }, -- Diff mode: Changed text within a changed line |diff.txt|
		-- EndOfBuffer    { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
		-- TermCursor     { }, -- Cursor in a focused terminal
		-- TermCursorNC   { }, -- Cursor in an unfocused terminal
		-- ErrorMsg       { }, -- Error messages on the command line
		-- VertSplit      { }, -- Column separating vertically split windows
		-- Folded         { }, -- Line used for closed folds
		-- FoldColumn     { }, -- 'foldcolumn'
		-- SignColumn     { }, -- Column where |signs| are displayed
		-- IncSearch      { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		-- Substitute     { }, -- |:substitute| replacement text highlighting
		-- LineNr({ fg = text }), -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		LineNrAbove       { fg = text.mix(background, 50).desaturate(45) }, -- Line number for when the 'relativenumber' option is set, above the cursor line
		LineNrBelow       { fg = text.mix(background, 50).desaturate(45) }, -- Line number for when the 'relativenumber' option is set, below the cursor line
		CursorLineNr      { fg = text, gui = "bold" }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		-- CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
		-- CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line
		-- MatchParen     { }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		-- ModeMsg        { }, -- 'showmode' message (e.g., "-- INSERT -- ")
		-- MsgArea        { }, -- Area for messages and cmdline
		-- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
		-- MoreMsg        { }, -- |more-prompt|
		-- NonText        { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Normal            { bg = background, fg = space_white }, -- Normal text
		-- NormalFloat    { }, -- Normal text in floating windows.
		-- FloatBorder    { }, -- Border of floating windows.
		-- FloatTitle     { }, -- Title of floating windows.
		-- NormalNC       { }, -- normal text in non-current windows
		-- Pmenu          { }, -- Popup menu: Normal item.
		-- PmenuSel       { }, -- Popup menu: Selected item.
		-- PmenuKind      { }, -- Popup menu: Normal item "kind"
		-- PmenuKindSel   { }, -- Popup menu: Selected item "kind"
		-- PmenuExtra     { }, -- Popup menu: Normal item "extra text"
		-- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text"
		-- PmenuSbar      { }, -- Popup menu: Scrollbar.
		-- PmenuThumb     { }, -- Popup menu: Thumb of the scrollbar.
		-- Question       { }, -- |hit-enter| prompt and yes/no questions
		-- QuickFixLine   { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		-- Search         { }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
		-- SpecialKey     { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
		-- SpellBad       { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		-- SpellCap       { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		-- SpellLocal     { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		-- SpellRare      { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
		-- StatusLine     { fg = background, bg = african_violet }, -- Status line of current window
		-- StatusLineNC   { fg = background, bg = almond_creme }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine           { fg = ice.darken(50).desaturate(75), bg = background.darken(100) }, -- Tab pages line, not active tab page label
		TabLineFill       { bg = background.darken(100) }, -- Tab pages line, where there are no labels
		TabLineSel        { fg = ice, bg = background, gui = "bold" }, -- Tab pages line, active tab page label

		-- Title          { }, -- Titles for output from ":set all", ":autocmd" etc.
		Visual            { bg = bluey }, -- Visual mode selection
		VisualNOS         { bg = bluey.darken(20) }, -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg        { fg = yellow }, -- Warning messages
		Whitespace        { fg = background.lighten(15) }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		-- Winseparator   { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
		-- WildMenu       { }, -- Current match in 'wildmenu' completion
		-- WinBar         { }, -- Window bar of current window
		-- WinBarNC       { }, -- Window bar of not-current windows

		-- Common vim syntax groups used for all kinds of code and markup.
		-- Commented-out groups should chain up to their preferred (*) group
		-- by default.
		--
		-- See :h group-name
		--
		-- Uncomment and edit if you want more specific syntax highlighting.

		Comment           { fg = Normal.bg.lighten(30) }, -- Any comment

		-- Constant       { }, -- (*) Any constant
		String            { fg = green }, --   A string constant: "this is a string"
		Character         { fg = String.fg.lighten(60) }, --   A character constant: 'c', '\n'
		Number            { fg = tomato }, --   A number constant: 234, 0xff
		Boolean           { fg = butterscotch, gui = "italic" }, --   A boolean constant: TRUE, false
		-- Float          { }, --   A floating point constant: 2.3e10

		Identifier        { fg = violet_creme }, -- (*) Any variable name
		Function          { fg = magenta }, --   Function name (also: methods for classes)

		Statement         { fg = gold }, -- (*) Any statement
		-- Conditional    { }, --   if, then, else, endif, switch, etc.
		-- Repeat         { }, --   for, do, while, etc.
		-- Label          { }, --   case, default, etc.
		-- Operator       { }, --   "sizeof", "+", "*", etc.
		-- Keyword        { }, --   any other keyword
		-- Exception      { }, --   try, catch, throw

		-- PreProc        { }, -- (*) Generic Preprocessor
		-- Include        { }, --   Preprocessor #include
		-- Define         { }, --   Preprocessor #define
		-- Macro          { }, --   Same as Define
		-- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

		Type              { fg = violet, gui = "italic" }, -- (*) int, long, char, etc.
		-- StorageClass   { }, --   static, register, volatile, etc.
		-- Structure      { }, --   struct, union, enum, etc.
		-- Typedef        { }, --   A typedef

		Special           { fg = ice }, -- (*) Any special symbol
		-- SpecialChar    { }, --   Special character in a constant
		-- Tag            { }, --   You can use CTRL-] on this
		-- Delimiter      { }, --   Character that needs attention
		-- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
		-- Debug          { }, --   Debugging statements

		-- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
		-- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
		-- Error          { }, -- Any erroneous construct
		-- Todo           { }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

		-- These groups are for the native LSP client and diagnostic system. Some
		-- other LSP clients may use these groups, or use their own. Consult your
		-- LSP client's documentation.

		-- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
		--
		-- LspReferenceText            { } , -- Used for highlighting "text" references
		-- LspReferenceRead            { } , -- Used for highlighting "read" references
		-- LspReferenceWrite           { } , -- Used for highlighting "write" references
		-- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
		-- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
		-- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

		-- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
		--
		DiagnosticError               { fg = red.mix(background, 40) }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticWarn                { fg = orange.mix(background, 40) }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticInfo                { fg = bluey.mix(background, 40) }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticHint                { fg = yellow.mix(background, 40).desaturate(50) }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticOk                  { fg = green.mix(background, 40) }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		-- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
		-- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
		-- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
		-- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
		-- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
		-- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
		-- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
		-- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
		-- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
		-- DiagnosticUnderlineOk      { } , -- Used to underline "Ok" diagnostics.
		-- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
		-- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
		-- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
		-- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
		-- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
		-- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
		-- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
		-- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
		-- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
		-- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.

		-- Git signs
		GitSignsCurrentLineBlame      { Comment }, -- GitSignsCurrentLineBlame xxx guifg=#45475b
		GitSignsDelete                { DiagnosticError }, -- GitSignsDelete xxx guifg=#f38ba9
		GitSignsTopdelete             { GitSignsDelete }, -- GitSignsTopdelete xxx links to GitSignsDelete
		GitSignsDeleteNr              { GitSignsDelete }, -- GitSignsDeleteNr xxx links to GitSignsDelete
		GitSignsChange                { DiagnosticHint }, -- GitSignsChange xxx guifg=#f9e2b0
		GitSignsChangedelete          { GitSignsChange }, -- GitSignsChangedelete xxx links to GitSignsChange
		GitSignsChangeNr              { GitSignsChange }, -- GitSignsChangeNr xxx links to GitSignsChange
		GitSignsAdd                   { DiagnosticOk }, -- GitSignsAdd    xxx guifg=#a6e3a2
		GitSignsUntracked             { GitSignsAdd }, -- GitSignsUntracked xxx links to GitSignsAdd
		GitSignsAddNr                 { GitSignsAdd }, -- GitSignsAddNr  xxx links to GitSignsAdd

		-- Flating windows
		NormalFloat                   { bg = background.lighten(5), fg = space_white }, -- NormalFloat    xxx guifg=#cdd6f5 guibg=#181826
		FloatTitle                    { fg = space_white }, -- FloatTitle     xxx guifg=#a6adc9
		FloatFooter                   { FloatTitle }, -- FloatFooter    xxx links to FloatTitle
		FlashPrompt                   { NormalFloat }, -- FlashPrompt    xxx links to NormalFloat
		WhichKeyFloat                 { NormalFloat }, -- WhichKeyFloat  xxx links to NormalFloat
		FloatBorder                   { fg = gold }, -- FloatBorder    xxx guifg=#89b4fb
		LspInfoBorder                 { FloatBorder }, -- LspInfoBorder  xxx links to FloatBorder
		TelescopeBorder               { FloatBorder }, -- TelescopeBorder xxx links to FloatBorder
		WhichKeyBorder                { FloatBorder }, -- WhichKeyBorder xxx links to FloatBorder

		Pmenu                         { bg = background.lighten(10), fg = space_white.darken(10) }, -- Pmenu          xxx guifg=#9399b3 guibg=#2b2b3d
		PmenuKind                     { Pmenu }, -- PmenuKind      xxx links to Pmenu
		PmenuExtra                    { Pmenu }, -- PmenuExtra     xxx links to Pmenu
		NoicePopupmenu                { Pmenu }, -- NoicePopupmenu xxx links to Pmenu
		PmenuSel                      { bg = background.lighten(20), fg = space_white, gui = "bold" }, -- PmenuSel       xxx cterm=bold gui=bold guibg=#45475b
		PmenuKindSel                  { PmenuSel }, -- PmenuKindSel   xxx links to PmenuSel
		PmenuExtraSel                 { PmenuSel }, -- PmenuExtraSel  xxx links to PmenuSel
		PmenuSbar                     { bg = background.lighten(15) }, -- PmenuSbar      xxx guibg=#45475b
		PmenuThumb                    { bg = background.lighten(25) }, -- PmenuThumb     xxx guibg=#6c7087

		-- Neotree
		NeoTreeFloatBorder            { FloatBorder }, -- NeoTreeFloatBorder xxx links to FloatBorder
		NeoTreeFloatTitle             { FloatTitle }, -- NeoTreeFloatTitle xxx links to FloatTitle
		NeoTreeStatusLineNC           { bg = "#181826", fg = "#181826" }, -- NeoTreeStatusLineNC xxx guifg=#181826 guibg=#181826
		NeoTreeWinSeparator           { bg = "#1e1e2f", fg = "#1e1e2f" }, -- NeoTreeWinSeparator xxx guifg=#1e1e2f guibg=#1e1e2f
		NeoTreeVertSplit              { bg = "#1e1e2f", fg = "#1e1e2f" }, -- NeoTreeVertSplit xxx guifg=#1e1e2f guibg=#1e1e2f
		NeoTreeTabSeparatorInactive   { bg = "#1e1e2f", fg = "#1e1e2f" }, -- NeoTreeTabSeparatorInactive xxx guifg=#1e1e2f guibg=#1e1e2f
		NeoTreeTabSeparatorActive     { bg = "#181826", fg = "#181826" }, -- NeoTreeTabSeparatorActive xxx guifg=#181826 guibg=#181826
		NeoTreeTabInactive            { bg = "#1e1e2f", fg = "#6c7087" }, -- NeoTreeTabInactive xxx guifg=#6c7087 guibg=#1e1e2f
		NeoTreeTabActive              { bg = "#181826", gui = "bold", fg = "#b4beff" }, -- NeoTreeTabActive xxx cterm=bold gui=bold guifg=#b4beff guibg=#181826
		NeoTreeFilterTerm             { gui = "bold", fg = green }, -- NeoTreeFilterTerm xxx cterm=bold gui=bold guifg=#a6e3a2
		NeoTreeDimText                { Comment }, -- NeoTreeDimText xxx guifg=#7f849d
		NeoTreeFileNameOpened         { fg = "#f5c2e8" }, -- NeoTreeFileNameOpened xxx guifg=#f5c2e8
		NeoTreeTitleBar               { bg = gold, fg = background }, -- NeoTreeTitleBar xxx guifg=#181826 guibg=#89b4fb
		NeoTreeGitStaged              { fg = green }, -- NeoTreeGitStaged xxx guifg=#a6e3a2
		NeoTreeGitUntracked           { fg = space_white }, -- NeoTreeGitUntracked xxx guifg=#cba6f8
		NeoTreeGitUnstaged            { fg = tomato }, -- NeoTreeGitUnstaged xxx guifg=#f38ba9
		NeoTreeGitModified            { fg = yellow }, -- NeoTreeGitModified xxx guifg=#f9e2b0
		NeoTreeGitIgnored             { fg = sky.desaturate(75).darken(50) }, -- NeoTreeGitIgnored xxx guifg=#6c7087
		NeoTreeGitDeleted             { fg = tomato, gui = "strikethrough" }, -- NeoTreeGitDeleted xxx guifg=#f38ba9
		NeoTreeGitConflict            { fg = tomato, gui = "underline" }, -- NeoTreeGitConflict xxx guifg=#f38ba9
		NeoTreeGitAdded               { fg = green }, -- NeoTreeGitAdded xxx guifg=#a6e3a2
		NeoTreeModified               { fg = yellow }, -- NeoTreeModified xxx guifg=#fab388
		NeoTreeSymbolicLinkTarget     { fg = blue }, -- NeoTreeSymbolicLinkTarget xxx guifg=#f5c2e8
		NeoTreeRootName               { gui = "bold", fg = gold }, -- NeoTreeRootName xxx cterm=bold gui=bold guifg=#89b4fb
		NeoTreeIndentMarker           { fg = bluey.mix(background, 75) }, -- NeoTreeIndentMarker xxx guifg=#6c7087
		NeoTreeExpander               { NeoTreeIndentMarker }, -- NeoTreeExpander xxx guifg=#6c7087
		NeoTreeNormalNC               { bg = background, fg = space_white }, -- NeoTreeNormalNC xxx guifg=#cdd6f5 guibg=#181826
		NeoTreeNormal                 { bg = background, fg = space_white }, -- NeoTreeNormal  xxx guifg=#cdd6f5 guibg=#181826
		NeoTreeDirectoryIcon          { fg = bluey }, -- NeoTreeDirectoryIcon xxx guifg=#89b4fb
		NeoTreeDirectoryName          { fg = sky }, -- NeoTreeDirectoryName xxx guifg=#89b4fb

		-- Noice
		NoiceSplitBorder              { FloatBorder }, -- NoiceSplitBorder xxx links to FloatBorder
		NoiceSplit                    { NormalFloat }, -- NoiceSplit     xxx links to NormalFloat

		NoiceCmdlinePopup             { Normal }, -- NoiceCmdlinePopup xxx links to Normal
		NoiceCmdlinePopupBorderSearch { fg = lilac }, -- NoiceCmdlinePopupBorderSearch xxx links to DiagnosticSignWarn
		NoiceCmdlineIconSearch        { fg = yellow }, -- NoiceCmdlineIconSearch xxx links to DiagnosticSignWarn
		NoiceCmdlinePopupBorder       { fg = lilac }, -- NoiceCmdlinePopupBorder xxx links to DiagnosticSignInfo
		NoiceCmdlineIcon              { fg = bluey }, -- NoiceCmdlineIcon xxx links to DiagnosticSignInfo
		NoiceCmdlinePopupTitle        { fg = bluey }, -- NoiceCmdlinePopupTitle xxx links to DiagnosticSignInfo

		NoicePopup                    { NormalFloat }, -- NoicePopup     xxx links to NormalFloat
		NoicePopupBorder              { FloatBorder }, -- NoicePopupBorder xxx links to FloatBorder
		NoicePopupmenuBorder          { FloatBorder }, -- NoicePopupmenuBorder xxx links to FloatBorder
		NoicePopupmenuSelected        { PmenuSel }, -- NoicePopupmenuSelected xxx links to PmenuSel
		NoiceScrollbar                { PmenuSbar }, -- NoiceScrollbar xxx links to PmenuSbar
		NoiceScrollbarThumb           { PmenuThumb }, -- NoiceScrollbarThumb xxx links to PmenuThumb

		NotifyBackground              { Normal }, -- NotifyBackground xxx links to Normal
		NotifyERRORBody               { fg = space_white.darken(25) }, -- NotifyERRORBody xxx links to Normal
		NotifyWARNBody                { fg = space_white.darken(25) }, -- NotifyWARNBody xxx links to Normal
		NotifyINFOBody                { fg = space_white.darken(25) }, -- NotifyINFOBody xxx links to Normal
		NotifyDEBUGBody               { fg = space_white.darken(25) }, -- NotifyDEBUGBody xxx links to Normal

		NotifyERRORBorder             { DiagnosticError }, -- NotifyERRORBorder xxx guifg=#8a1f1f
		NotifyWARNBorder              { DiagnosticWarn }, -- NotifyWARNBorder xxx guifg=#79491d
		NotifyINFOBorder              { DiagnosticInfo }, -- NotifyINFOBorder xxx guifg=#4f6752
		NotifyDEBUGBorder             { DiagnosticHint }, -- NotifyDEBUGBorder xxx guifg=#8b8b8b
		NotifyTRACEBorder             { fg = magenta.mix(background, 40) }, -- NotifyTRACEBorder xxx guifg=#4f3552
		NotifyERRORIcon               { fg = red }, -- NotifyERRORIcon xxx guifg=#f70067
		NotifyWARNIcon                { fg = orange }, -- NotifyWARNIcon xxx guifg=#f79000
		NotifyINFOIcon                { fg = bluey }, -- NotifyINFOIcon xxx guifg=#a9ff68
		NotifyDEBUGIcon               { fg = yellow }, -- NotifyDEBUGIcon xxx guifg=#8b8b8b
		NotifyTRACEIcon               { fg = magenta }, -- NotifyTRACEIcon xxx guifg=#d484ff
		NotifyERRORTitle              { NotifyERRORIcon }, -- NotifyERRORTitle xxx guifg=#f70067
		NotifyWARNTitle               { NotifyWARNIcon }, -- NotifyWARNTitle xxx guifg=#f79000
		NotifyINFOTitle               { NotifyINFOIcon }, -- NotifyINFOTitle xxx guifg=#a9ff68
		NotifyDEBUGTitle              { NotifyDEBUGIcon }, -- NotifyDEBUGTitle xxx guifg=#8b8b8b
		NotifyTRACETitle              { NotifyTRACEIcon }, -- NotifyTRACETitle xxx guifg=#d484ff
		NotifyINFOTitle18             { fg = "#232731" }, -- NotifyINFOTitle18 xxx guifg=#232731
		NotifyINFOBorder18            { fg = "#202130" }, -- NotifyINFOBorder18 xxx guifg=#202130
		NotifyINFOBody18              { bg = "#1e1e2f", fg = "#252537" }, -- NotifyINFOBody18 xxx guifg=#252537 guibg=#1e1e2f
		NotifyINFOIcon18              { fg = "#232731" }, -- NotifyINFOIcon18 xxx guifg=#232731
		NotifyINFOTitle19             { fg = "#232731" }, -- NotifyINFOTitle19 xxx guifg=#232731
		NotifyINFOBorder19            { fg = "#202130" }, -- NotifyINFOBorder19 xxx guifg=#202130
		NotifyINFOBody19              { bg = "#1e1e2f", fg = "#252537" }, -- NotifyINFOBody19 xxx guifg=#252537 guibg=#1e1e2f
		NotifyINFOIcon19              { fg = "#232731" }, -- NotifyINFOIcon19 xxx guifg=#232731
		NoiceAttr154                  { gui = "bold,italic", fg = "#f38ba9" }, -- NoiceAttr154   xxx cterm=bold,italic gui=bold,italic guifg=#f38ba9
		NotifyERRORTitle20            { fg = "#271d31" }, -- NotifyERRORTitle20 xxx guifg=#271d31
		NotifyERRORBorder20           { fg = "#221e2e" }, -- NotifyERRORBorder20 xxx guifg=#221e2e
		NotifyERRORBody2              { bg = "#1e1e2f", fg = "#252537" }, -- NotifyERRORBody20 xxx guifg=#252537 guibg=#1e1e2f
		-- Tree-Sitter syntax groups.
		--
		-- See :h treesitter-highlight-groups, some groups may not be listed,
		-- submit a PR fix to lush-template!
		--
		-- Tree-Sitter groups are defined with an "@" symbol, which must be
		-- specially handled to be valid lua code, we do this via the special
		-- sym function. The following are all valid ways to call the sym function,
		-- for more details see https://www.lua.org/pil/5.html
		--
		-- sym("@text.literal")
		-- sym('@text.literal')
		-- sym"@text.literal"
		-- sym'@text.literal'
		--
		-- For more information see https://github.com/rktjmp/lush.nvim/issues/109

		-- sym"@text.literal"      { }, -- Comment
		-- sym"@text.reference"    { }, -- Identifier
		-- sym"@text.title"        { }, -- Title
		-- sym"@text.uri"          { }, -- Underlined
		-- sym"@text.underline"    { }, -- Underlined
		-- sym"@text.todo"         { }, -- Todo
		-- sym"@comment"           { }, -- Comment
		-- sym"@punctuation"       { }, -- Delimiter
		-- sym"@constant"          { }, -- Constant
		-- sym"@constant.builtin"  { }, -- Special
		-- sym"@constant.macro"    { }, -- Define
		-- sym"@define"            { }, -- Define
		-- sym"@macro"             { }, -- Macro
		-- sym"@string"            { }, -- String
		-- sym"@string.escape"     { }, -- SpecialChar
		-- sym"@string.special"    { }, -- SpecialChar
		-- sym"@character"         { }, -- Character
		-- sym"@character.special" { }, -- SpecialChar
		-- sym"@number"            { }, -- Number
		-- sym"@boolean"           { }, -- Boolean
		-- sym"@float"             { }, -- Float
		-- sym"@function"          { }, -- Function
		-- sym"@function.builtin"  { }, -- Special
		-- sym"@function.macro"    { }, -- Macro
		-- sym"@parameter"         { }, -- Identifier
		-- sym"@method"            { }, -- Function
		-- sym"@field"             { }, -- Identifier
		-- sym"@property"          { }, -- Identifier
		-- sym"@constructor"       { }, -- Special
		-- sym"@conditional"       { }, -- Conditional
		-- sym"@repeat"            { }, -- Repeat
		-- sym"@label"             { }, -- Label
		-- sym"@operator"          { }, -- Operator
		-- sym"@keyword"           { }, -- Keyword
		-- sym"@exception"         { }, -- Exception
		-- sym"@variable"          { }, -- Identifier
		-- sym"@type"              { }, -- Type
		-- sym"@type.definition"   { }, -- Typedef
		-- sym"@storageclass"      { }, -- StorageClass
		-- sym"@structure"         { }, -- Structure
		-- sym"@namespace"         { }, -- Identifier
		-- sym"@include"           { }, -- Include
		-- sym"@preproc"           { }, -- PreProc
		-- sym"@debug"             { }, -- Debug
		-- sym"@tag"               { }, -- Tag
	}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
