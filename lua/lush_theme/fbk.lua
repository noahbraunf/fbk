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
-- Note: Because this is lua file, vim will append your file to the runtime,
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

local lush = require('lush')
local hsl = lush.hsl

local color_config = {}

color_config.black  = hsl(249, 20, 7)  -- #0F0E15
color_config.white  = hsl(40, 60, 98)  -- #FDFBF7
color_config.gray   = hsl(23, 16, 72)  -- #C3B5AC
color_config.lgray  = hsl(26, 15, 91)  -- #EBE7E4
color_config.green  = hsl(144, 70, 86) -- #C1F4D5
color_config.blue   = hsl(200, 84, 80) -- #A1DBF7
color_config.red    = hsl(357, 48, 43) -- #A2393F
color_config.yellow = hsl(54, 99, 73)  -- #FEF178

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
color_config.theme = lush(function()
  return {
    -- The following are all the Neovim default highlight groups from the docs
    -- as of 0.5.0-nightly-446, to aid your theme creation. Your themes should
    -- probably style all of these at a bare minimum.
    --
    -- Referenced/linked groups must come before being referenced/lined,
    -- so the order shown ((mostly) alphabetical) is likely
    -- not the order you will end up with.
    --
    -- You can uncomment these and leave them empty to disable any
    -- styling for that group (meaning they mostly get styled as Normal)
    -- or leave them commented to apply vims default colouring or linking.

    Comment      { fg = color_config.black.desaturate(25).lighten(25) }, -- any comment
    ColorColumn  { fg = color_config.black, bg = color_config.lgray }, -- used for the columns set with 'colorcolumn'
    Conceal      { }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor       { }, -- character under the cursor
    lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine   { }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory    { }, -- directory names (and other special names in listings)
    DiffAdd      { fg = color_config.green }, -- diff mode: Added line |diff.txt|
    DiffChange   { }, -- diff mode: Changed line |diff.txt|
    DiffDelete   { fg = color_config.red }, -- diff mode: Deleted line |diff.txt|
    DiffText     { fg = color_config.black, bg = color_config.gray }, -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer  { }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    TermCursor   { }, -- cursor in a focused terminal
    TermCursorNC { }, -- cursor in an unfocused terminal
    ErrorMsg     { }, -- error messages on the command line
    VertSplit    { }, -- the column separating vertically split windows
    Folded       { fg = color_config.gray }, -- line used for closed folds
    FoldColumn   { }, -- 'foldcolumn'
    SignColumn   { }, -- column where |signs| are displayed
    IncSearch    { fg = color_config.black, bg = color_config.green }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute   { fg = color_config.black, bg = color_config.blue }, -- |:substitute| replacement text highlighting
    LineNr       { fg = color_config.green }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { fg = color_config.blue }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen   { fg = color_config.green }, -- The character under the cursor or just before it, if it is a paicolor_config.red bracket, and its match. |pi_paren.txt|
    ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea      { }, -- Area for messages and cmdline
    MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg      { }, -- |more-prompt|
    NonText      { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal       { fg = color_config.white, bg = color_config.black }, -- normal text
    NormalFloat  { }, -- Normal text in floating windows.
    NormalNC     { }, -- normal text in non-current windows
    Pmenu        { }, -- Popup menu: normal item.
    PmenuSel     { fg = color_config.black, bg = color_config.white }, -- Popup menu: selected item.
    PmenuSbar    { }, -- Popup menu: scrollbar.
    PmenuThumb   { }, -- Popup menu: Thumb of the scrollbar.
    Question     { }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search       { fg = color_config.black, bg = color_config.blue }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' color_config.whitespace. |hl-Whitespace|
    SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise. 
    SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine   { }, -- status line of current window
    StatusLineNC { }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine      { }, -- tab pages line, not active tab page label
    TabLineFill  { }, -- tab pages line, where there are no labels
    TabLineSel   { }, -- tab pages line, active tab page label
    Title        { }, -- titles for output from ":set all", ":autocmd" etc.
    Visual       { fg = color_config.black, bg = color_config.white }, -- Visual mode selection
    VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg   { }, -- warning messages
    Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu     { }, -- current match in 'wildmenu' completion

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "prefercolor_config.red" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant       { fg = color_config.lgray, gui = "bold" }, -- (prefercolor_config.red) any constant
    String         { fg = color_config.blue }, --   a string constant: "this is a string"
    Character      { fg = color_config.blue }, --  a character constant: 'c', '\n'
    Number         { fg = color_config.green }, --   a number constant: 234, 0xff
    Boolean        { fg = color_config.red.lighten(70) }, --  a boolean constant: TRUE, false
    Float          { fg = color_config.green }, --    a floating point constant: 2.3e10

    Identifier     { fg = color_config.white.darken(15), gui = "bold" }, -- (prefercolor_config.red) any variable name
    Function       { fg = color_config.white.darken(15), gui = "bold" }, -- function name (also: methods for classes)

    Statement      { fg = color_config.white.darken(5) }, -- (prefercolor_config.red) any statement
    Conditional    { fg = color_config.white.darken(5) }, --  if, then, else, endif, switch, etc.
    Repeat         { fg = color_config.white.darken(5) }, --   for, do, while, etc.
    Label          { fg = color_config.white.darken(5) }, --    case, default, etc.
    Operator       { fg = color_config.green }, -- "sizeof", "+", "*", etc.
    Keyword        { fg = color_config.white.darken(5) }, --  any other keyword
    Exception      { fg = color_config.white.darken(5) }, --  try, catch, throw

    PreProc        { fg = color_config.green }, -- (prefercolor_config.red) generic Preprocessor
    Include        { fg = color_config.green }, --  preprocessor #include
    Define         { fg = color_config.green }, --   preprocessor #define
    Macro          { fg = color_config.green }, --    same as Define
    PreCondit      { fg = color_config.green }, --  preprocessor #if, #else, #endif, etc.

    Type           { fg = color_config.lgray.darken(5) }, -- (prefercolor_config.red) int, long, char, etc.
    StorageClass   { }, -- static, register, volatile, etc.
    Structure      { }, --  struct, union, enum, etc.
    Typedef        { }, --  A typedef

    Special        { fg = color_config.green }, -- (prefercolor_config.red) any special symbol
    SpecialChar    { }, --  special character in a constant
    Tag            { }, --    you can use CTRL-] on this
    Delimiter      { }, --  character that needs attention
    SpecialComment { }, -- special things inside a comment
    Debug          { }, --    debugging statements

    -- Underlined { gui = "underline" }, -- (prefercolor_config.red) text that stands out, HTML links
    -- Bold       { gui = "bold" },
    -- Italic     { gui = "italic" },

    -- ("Ignore", below, may be invisible...)
    -- Ignore         { }, -- (prefercolor_config.red) left blank, hidden  |hl-Ignore|

    Error          { bg = color_config.red }, -- (preferred) any erroneous construct

    Todo           { fg = color_config.white, bg = color_config.yellow }, -- (prefercolor_config.red) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    -- LspReferenceText                     { }, -- used for highlighting "text" references
    -- LspReferenceRead                     { }, -- used for highlighting "read" references
    -- LspReferenceWrite                    { }, -- used for highlighting "write" references

    -- LspDiagnosticsDefaultError           { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultWarning         { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultInformation     { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultHint            { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

    -- LspDiagnosticsVirtualTextError       { }, -- Used for "Error" diagnostic virtual text
    -- LspDiagnosticsVirtualTextWarning     { }, -- Used for "Warning" diagnostic virtual text
    -- LspDiagnosticsVirtualTextInformation { }, -- Used for "Information" diagnostic virtual text
    -- LspDiagnosticsVirtualTextHint        { }, -- Used for "Hint" diagnostic virtual text

    -- LspDiagnosticsUnderlineError         { }, -- Used to underline "Error" diagnostics
    -- LspDiagnosticsUnderlineWarning       { }, -- Used to underline "Warning" diagnostics
    -- LspDiagnosticsUnderlineInformation   { }, -- Used to underline "Information" diagnostics
    -- LspDiagnosticsUnderlineHint          { }, -- Used to underline "Hint" diagnostics

    -- LspDiagnosticsFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingWarning        { }, -- Used to color "Warning" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float

    -- LspDiagnosticsSignError              { }, -- Used for "Error" signs in sign column
    -- LspDiagnosticsSignWarning            { }, -- Used for "Warning" signs in sign column
    -- LspDiagnosticsSignInformation        { }, -- Used for "Information" signs in sign column
    -- LspDiagnosticsSignHint               { }, -- Used for "Hint" signs in sign column

    -- LspCodeLens                          { }, -- Used to color the virtual text of the codelens

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    -- TSAnnotation         { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute          { };    -- (unstable) TODO: docs
    -- TSBoolean            { };    -- For booleans.
    -- TSCharacter          { };    -- For characters.
    -- TSComment            { };    -- For comment blocks.
    -- TSConstructor        { };    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
    -- TSConditional        { };    -- For keywords related to conditionnals.
    -- TSConstant           { };    -- For constants
    -- TSConstBuiltin       { };    -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro         { };    -- For constants that are defined by macros: `NULL` in C.
    -- TSError              { };    -- For syntax/parser errors.
    -- TSException          { };    -- For exception related keywords.
    -- TSField              { };    -- For fields.
    -- TSFloat              { };    -- For floats.
    -- TSFunction           { };    -- For function (calls and definitions).
    -- TSFuncBuiltin        { };    -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro          { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude            { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    -- TSKeyword            { };    -- For keywords that don't fall in previous categories.
    -- TSKeywordFunction    { };    -- For keywords used to define a fuction.
    -- TSLabel              { };    -- For labels: `label:` in C and `:label:` in Lua.
    -- TSMethod             { };    -- For method calls and definitions.
    -- TSNamespace          { };    -- For identifiers referring to modules and namespaces.
    -- TSNone               { };    -- TODO: docs
    -- TSNumber             { };    -- For all numbers
    -- TSOperator           { };    -- For any operator: `+`, but also `->` and `*` in C.
    -- TSParameter          { };    -- For parameters of a function.
    -- TSParameterReference { };    -- For references to parameters of a function.
    -- TSProperty           { };    -- Same as `TSField`.
    -- TSPunctDelimiter     { };    -- For delimiters ie: `.`
    -- TSPunctBracket       { };    -- For brackets and parens.
    -- TSPunctSpecial       { };    -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat             { };    -- For keywords related to loops.
    -- TSString             { };    -- For strings.
    -- TSStringRegex        { };    -- For regexes.
    -- TSStringEscape       { };    -- For escape characters within a string.
    -- TSSymbol             { };    -- For identifiers referring to symbols or atoms.
    -- TSType               { };    -- For types.
    -- TSTypeBuiltin        { };    -- For builtin types.
    -- TSVariable           { };    -- Any variable name that does not have another highlight.
    -- TSVariableBuiltin    { };    -- Variable names that are defined by the languages, like `this` or `self`.

    -- TSTag                { };    -- Tags like html tag names.
    -- TSTagDelimiter       { };    -- Tag delimiter like `<` `>` `/`
    -- TSText               { };    -- For strings considered text in a markup language.
    -- TSEmphasis           { };    -- For text to be represented with emphasis.
    -- TSUnderline          { };    -- For text to be represented with an underline.
    -- TSStrike             { };    -- For strikethrough text.
    -- TSTitle              { };    -- Text that is part of a title.
    -- TSLiteral            { };    -- Literal text.
    -- TSURI                { };    -- Any URI like a link or email.

  }
end)

-- return our parsed theme for extension or use else where.
return color_config

-- vi:nowrap
