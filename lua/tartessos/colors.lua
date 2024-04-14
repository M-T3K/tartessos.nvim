-- The M module variable will contain all highlighs so they can be used outside
local M = {}

local utils = require('tartessos.utils')

local colors = {
    -- Base Colors
    seafloor_brown = '#382b2c',
    dark_ocean = '#001920',
    medium_ocean = '#00324b',
    blue_grey = '#4c5372',
    standard_blue = '#61afef',
    light_blue = '#00d9ff',
    light_turquoise = '#00dada',
    pistacchio_algae = '#97c279',
    vivid_green = '#2ed30d',
    orichalcum = '#e6d47e',
    rad_yellow = '#fffb00',
    coral_orange = '#ff8200',
    coral_purple = '#c578dc',
    vivid_red = '#c678dd',
    vivid_pink = '#ff0081',
    white_sand = '#faf9e6',
}

-- Diff Colors
colors.diff_add = colors.pistacchio_algae
colors.diff_remove = colors.vivid_red
colors.diff_change = colors.standard_blue
colors.diff_text = colors.standard_blue

M.base_syntax = {
    Normal = {
      fg = colors.white_sand,
      bg = colors.dark_ocean,
    },
    NormalFloat = {
      bg = colors.dark_ocean,
    },
    Pmenu = {
      fg = colors.white_sand,
      bg = colors.dark_ocean,
    },
    PmenuSel = {
      fg = colors.dark_ocean,
      bg = colors.coral_orange,
    },
    PmenuSelBold = {
      fg = colors.dark_ocean,
      bg = colors.coral_orange,
    },
    PmenuThumb = {
      fg = colors.purple,
      bg = colors.green,
    },
    PmenuSbar = {
      bg = colors.dark_ocean,
    },
    Cursor = {
      fg = colors.dark_ocean,
      bg = colors.rad_yellow
    },
    ColorColumn = {
      bg = colors.dark_ocean,
    },
    CursorLine = {
      bg = colors.seafloor_brown,
    },
    NonText = { -- used for "eol", "extends" and "precedes" in listchars
      fg = colors.dark_ocean,
    },
    Visual = {
      bg = utils.lighten(colors.medium_ocean, 0.7),
    },
    VisualNOS = {
      bg = utils.lighten(colors.medium_ocean, 0.7),
    },
    Search = {
      fg = colors.dark_ocean,
      bg = colors.rad_yellow,
    },
    IncSearch = {
      fg = colors.dark_ocean,
      bg = colors.rad_yellow,
    },
    CursorLineNr = {
      fg = colors.orichalcum,
      bg = colors.medium_ocean,
    },
    MatchParen = {
      fg = colors.orichalcum,
    },
    Question = {
      fg = colors.rad_yellow,
    },
    ModeMsg = {
      fg = colors.white_sand,
      style = 'bold',
    },
    MoreMsg = {
      fg = colors.white_sand,
      style = 'bold',
    },
    ErrorMsg = {
      fg = colors.red,
      style = 'bold',
    },
    WarningMsg = {
      fg = colors.rad_yellow,
      style = 'bold',
    },
    VertSplit = {
      fg = colors.brown,
    },
    LineNr = {
      fg = colors.white_sand,
      bg = colors.medium_ocean,
    },
    SignColumn = {
      fg = colors.white_sand,
      bg = colors.medium_ocean,
    },
    StatusLine = {
      fg = colors.dark_ocean,
      bg = colors.dark_ocean,
    },
    StatusLineNC = {
      fg = colors.blue_grey,
      bg = colors.dark_ocean,
    },
    Tabline = {},
    TabLineFill = {},
    TabLineSel = {
      bg = colors.dark_ocean,
    },
    SpellBad = {
      fg = colors.red,
      style = 'undercurl',
    },
    SpellCap = {
      fg = colors.purple,
      style = 'undercurl',
    },
    SpellRare = {
      fg = colors.aqua,
      style = 'undercurl',
    },
    SpellLocal = {
      fg = colors.pink,
      style = 'undercurl',
    },
    SpecialKey = {
      fg = colors.pink,
    },
    Title = {
      fg = colors.rad_yellow,
      style = 'bold',
    },
    Directory = {
      fg = colors.light_blue,
    },
    DiffAdd = {
      bg = colors.diff_add,
    },
    DiffDelete = {
      fg = colors.diff_remove,
    },
    DiffChange = {
      fg= colors.diff_change,
      bg = colors.medium_ocean,
    },
    DiffText = {
      fg = colors.diff_text,
      bg = colors.medium_ocean,
    },
    diffAdded = {
      fg = colors.diff_add,
      bg = colors.medium_ocean,
    },
    diffRemoved = {
      fg = colors.diff_remove,
      bg = colors.medium_ocean,
    },
    Folded = {
      fg = colors.blue_grey,
      bg = colors.dark_ocean,
    },
    FoldColumn = {
      fg = colors.white_sand,
      bg = colors.dark_ocean,
    },
    Constant = {
      fg = colors.white_sand,
    },
    Number = {
      fg = colors.white_sand,
    },
    Float = {
      fg = colors.white_sand,
    },
    Boolean = {
      fg = colors.white_sand,
    },
    Character = {
      fg = colors.pistacchio_algae,
    },
    String = {
      fg = colors.light_turquoise,
    },
    Type = {
      fg = colors.orichalcum,
    },
    Structure = {
      fg = colors.orichalcum,
    },
    StorageClass = {
      fg = colors.orichalcum,
    },
    Typedef = {
      fg = colors.light_blue,
    },
    Identifier = {
      fg = colors.white_sand,
    },
    Function = {
      fg = colors.orichalcum,
    },
    Statement = {
      fg = colors.orichalcum,
    },
    Operator = {
      fg = colors.white_sand,
    },
    Label = {
      fg = colors.orichalcum,
    },
    Keyword = {
      fg = colors.orichalcum,
    },
    PreProc = {
      fg = colors.light_blue,
    },
    Include = {
      fg = colors.light_blue,
    },
    Define = {
      fg = colors.light_blue,
    },
    Macro = {
      fg = colors.light_blue,
    },
    PreCondit = {
      fg = colors.light_blue,
    },
    Special = {
      fg = colors.white_sand,
    },
    SpecialChar = {
      fg = colors.light_turquoise,
    },
    Delimiter = {
      fg = colors.white_sand,
    },
    SpecialComment = {
      fg = colors.blue_grey,
      style = 'italic',
    },
    Tag = {
      fg = colors.coral_orange,
    },
    Todo = {
      fg = colors.coral_orange,
    },
    Comment = {
      fg = colors.vivid_green,
    },
    Underlined = {
      style = 'underline',
    },
    Ignore = {},
    Error = {
      fg = colors.vivid_red,
    },
    Terminal = {
      fg = colors.white_sand,
      bg = colors.dark_ocean,
    },
    EndOfBuffer = {
      fg = colors.dark_ocean,
    },
    Conceal = {
      fg = colors.blue_grey,
    },
    vCursor = {
      style = 'reverse',
    },
    iCursor = {
      style = 'reverse',
    },
    lCursor = {
      style = 'reverse',
    },
    CursorIM = {
      style = 'reverse',
    },
    CursorColumn = {
      bg = colors.dark_ocean,
    },
    Whitespace = { -- used for "nbsp", "space", "tab" and "trail" in listchars
      fg = colors.dark_ocean,
    },
    WildMenu = {
      fg = colors.white_sand,
      bg = colors.medium_ocean,
    },
    QuickFixLine = {
      fg = colors.vivid_pink,
      style = 'bold',
    },
    Debug = {
      fg = colors.coral_orange,
    },
    debugBreakpoint = {
      fg = colors.dark_ocean,
      bg = colors.vivid_red,
    },
    Conditional = {
      fg = colors.orichalcum,
    },
    Repeat = {
      fg = colors.orichalcum,
    },
    Exception = {
      fg = colors.orichalcum,
    },
}

M.plugins = {
    ["@annotation"] = {
      fg = colors.vivid_green,
    },
    ["@attribute"] = {
      fg = colors.light_blue,
    },
    ["@boolean"] = {
      fg = colors.orichalcum,
    },
    ["@character"] = {
      fg = colors.pistacchio_algae,
    },
    ["@character.special"] = {
      fg = colors.light_turquoise,
    },
    ["@comment"] = {
      fg = colors.vivid_green,
    },
    ["@conceal"] = {
      fg = colors.blue_grey,
    },
    ["@conditional"] = {
      fg = colors.orichalcum,
    },
    ["@conditional.ternary"] = {
      fg = colors.orichalcum,
    },
    ["@constant"] = {
      fg = colors.white_sand,
    },
    ["@constant.builtin"] = {
      fg = colors.white_sand,
    },
    ["@constant.macro"] = {
      fg = colors.white_sand,
    },
    ["@constructor"] = {
      fg = colors.orichalcum,
    },
    ["@debug"] = {
      fg = colors.vivid_red,
    },
    ["@define"] = {
      fg = colors.light_blue,
    },
    ["@definition"] = {
      fg = colors.orichalcum,
    },
    ["@definition.associated"] = {
      fg = colors.orichalcum,
    },
    ["@definition.constant"] = {
      fg = colors.orichalcum,
    },
    ["@definition.enum"] = {
      fg = colors.orichalcum,
    },
    ["@definition.field"] = {
      fg = colors.orichalcum,
    },
    ["@definition.function"] = {
      fg = colors.orichalcum,
    },
    ["@definition.import"] = {
      fg = colors.orichalcum
    },
    ["@definition.macro"] = {
      fg = colors.orichalcum,
    },
    ["@definition.method"] = {
      fg = colors.orichalcum,
    },
    ["@definition.namespace"] = {
      fg = colors.orichalcum
    },
    ["@definition.parameter"] = {
      fg = colors.orichalcum,
    },
    ["@definition.type"] = {
      fg = colors.orichalcum,
    },
    ["@definition.var"] = {
      fg = colors.orichalcum,
    },
    ["@error"] = {
      fg = colors.vivid_red,
    },
    ["@exception"] = {
      fg = colors.vivid_pink,
    },
    ["@field"] = {
      fg = colors.orichalcum,
    },
    ["@float"] = {
      fg = colors.white_sand,
    },
    ["@function"] = {
      fg = colors.orichalcum,
    },
    ["@function.builtin"] = {
      fg = colors.orichalcum,
    },
    ["@function.call"] = {
      fg = colors.orichalcum,
    },
    ["@function.macro"] = {
      fg = colors.orichalcum,
    },
    ["@include"] = {
      fg = colors.light_blue,
    },
    ["@keyword"] = {
      fg = colors.orichalcum,
    },
    ["@keyword.function"] = {
      fg = colors.orichalcum,
    },
    ["@keyword.operator"] = {
      fg = colors.white_sand,
    },
    ["@keyword.return"] = {
      fg = colors.orichalcum,
    },
    ["@label"] = {
      fg = colors.orichalcum,
    },
    ["@math"] = {
      fg = colors.white_sand,
    },
    ["@method"] = {
      fg = colors.orichalcum,
    },
    ["@method.call"] = {
      fg = colors.orichalcum
    },
    ["@namespace"] = {
      fg = colors.light_blue,
    },
    ["@number"] = {
      fg = colors.white_sand,
    },
    ["@operator"] = {
      fg = colors.white_sand,
    },
    ["@parameter"] = {
      fg = colors.white_sand,
    },
    ["@parameter.reference"] = {
      fg = colors.white_sand
    },
    ["@preproc"] = {
      fg = colors.light_blue,
    },
    ["@property"] = {
      fg = colors.white_sand,
    },
    ["@punctuation.bracket"] = {
      fg = colors.white_sand,
    },
    ["@punctuation.delimiter"] = {
      fg = colors.white_sand,
    },
    ["@punctuation.special"] = {
      fg = colors.orichalcum,
    },
    ["@reference"] = {
      fg = colors.white_sand,
    },
    ["@repeat"] = {
      fg = colors.orichalcum,
    },
    ["@scope"] = {
      fg = colors.white_sand,
    },
    ["@storageclass"] = {
      fg = colors.orichalcum,
    },
    ["@storageclass.lifetime"] = {
      fg = colors.orichalcum,
    },
    ["@strike"] = {
      fg = colors.white_sand,
    },
    ["@string"] = {
      fg = colors.light_turquoise,
    },
    ["@string.escape"] = {
      fg = colors.pistacchio_algae,
    },
    ["@string.regex"] = {
      fg = colors.standard_blue,
    },
    ["@string.special"] = {
      fg = colors.standard_blue,
    },
    ["@symbol"] = {
      fg = colors.orichalcum,
    },
    ["@tag"] = {
      fg = colors.orichalcum,
    },
    ["@tag.attribute"] = {
      fg = colors.orichalcum,
    },
    ["@tag.delimiter"] =  {
      fg = colors.white_sand
    },
    ["@text"] = {
      fg = colors.white_sand,
    },
    ["@text.danger"] = {
      fg = colors.vivid_red,
      style = 'bold',
    },
    ["@text.diff.add"] = {
      fg = colors.diff_add,
    },
    ["@text.diff.delete"] = {
      fg = colors.diff_remove,
    },
    ["@text.emphasis"] = {
      style = 'bold',
    },
    ["@text.environment"] = {
      fg = colors.white_sand,
    },
    ["@text.environment.name"] = {
      fg = colors.orichalcum,
    },
    ["@text.literal"] = {
      fg = colors.pistacchio_algae,
    },
    ["@text.math"] = {
      fg = colors.white_sand,
    },
    ["@text.note"] = {
      fg = colors.white_sand,
    },
    ["@text.quote"] = {
      fg = colors.light_turquoise,
    },
    ["@text.reference"] = {
      fg = colors.pistacchio_algae,
      style = 'italic',
    },
    ["@text.strike"] = {
      fg = colors.white_sand,
    },
    ["@text.strong"] = {
      style = 'bold',
    },
    ["@text.title"] = {
      fg = colors.standard_blue,
      style = 'bold',
    },
    ["@text.todo"] = {
      fg = colors.white_sand,
    },
    ["@text.underline"] = {
      style = 'underline',
    },
    ["@text.uri"] = {
      fg = colors.light_blue,
      style = 'underline',
    },
    ["@text.warning"] = {
      fg = colors.rad_yellow,
      style = 'bold',
    },
    ["@todo"] = {
      fg = colors.white_sand,
    },
    ["@type"] = {
      fg = colors.orichalcum,
    },
    ["@type.builtin"] = {
      fg = colors.orichalcum,
    },
    ["@type.definition"] = {
      fg = colors.orichalcum,
    },
    ["@type.qualifier"] = {
      fg = colors.orichalcum,
    },
    ["@uri"] = {
      fg = colors.light_blue,
      style = 'underline',
    },
    ["@variable"] = {
      fg = colors.orichalcum,
    },
    ["@variable.builtin"] = {
      fg = colors.orichalcum,
    },
    dbui_tables = {
      fg = colors.white_sand,
    },
    DiagnosticSignError = {
      fg = colors.vivid_red,
    },
    DiagnosticSignWarn = {
      fg = colors.rad_yellow,
    },
    DiagnosticSignInfo = {
      fg = colors.white_sand,
    },
    DiagnosticSignHint = {
      fg = colors.pistacchio_algae,
    },
    DiagnosticVirtualTextError = {
      fg = colors.vivid_red,
    },
    DiagnosticVirtualTextWarn = {
      fg = colors.rad_yellow,
    },
    DiagnosticVirtualTextInfo = {
      fg = colors.white_sand,
    },
    DiagnosticVirtualTextHint = {
      fg = colors.pistacchio_algae,
    },
    DiagnosticUnderlineError = {
      style = 'undercurl',
      sp = colors.vivid_red,
    },
    DiagnosticUnderlineWarn = {
      style = 'undercurl',
      sp = colors.rad_yellow,
    },
    DiagnosticUnderlineInfo = {
      style = 'undercurl',
      sp = colors.white_sand,
    },
    DiagnosticUnderlineHint = {
      style = 'undercurl',
      sp = colors.pistacchio_algae,
    },
    CursorWord0 = {
      bg = colors.white_sand,
      fg = colors.seafloor_brown,
    },
    CursorWord1 = {
      bg = colors.white_sand,
      fg = colors.seafloor_brown,
    },
    NvimTreeFolderName = {
      fg = colors.white_sand,
    },
    NvimTreeRootFolder = {
      fg = colors.pistacchio_algae,
    },
    NvimTreeSpecialFile = {
      fg = colors.white_sand,
      style = 'NONE',
    },

    -- Telescope
    TelescopeBorder = {
      fg = colors.dark_ocean,
    },
    TelescopeNormal = {
      fg = colors.dark_ocean,
      bg = colors.dark_ocean,
    },
    TelescopeSelection = {
      fg = colors.white_sand,
      style = 'bold',
    },
    TelescopeSelectionCaret = {
      fg = colors.vivid_green,
    },
    TelescopeMultiSelection = {
      fg = colors.standard_blue,
    },
    TelescopeMatching = {
      fg = colors.light_blue,
    },

    -- hrsh7th/nvim-cmp
    CmpDocumentation = { fg = colors.white_sand, bg = colors.dark_ocean },
    CmpDocumentationBorder = { fg = colors.white_sand, bg = colors.dark_ocean },

    CmpItemAbbr = { fg = colors.white_sand },
    CmpItemAbbrMatch = { fg = colors.standard_blue },
    CmpItemAbbrMatchFuzzy = { fg = colors.standard_blue },

    CmpItemKindDefault = { fg = colors.white_sand },
    CmpItemMenu = { fg = colors.dark_ocean },

    CmpItemKindKeyword = { fg = colors.orichalcum },
    CmpItemKindVariable = { fg = colors.orichalcum },
    CmpItemKindConstant = { fg = colors.orichalcum },
    CmpItemKindReference = { fg = colors.orichalcum },
    CmpItemKindValue = { fg = colors.orichalcum },

    CmpItemKindFunction = { fg = colors.orichalcum },
    CmpItemKindMethod = { fg = colors.orichalcum },
    CmpItemKindConstructor = { fg = colors.orichalcum },

    CmpItemKindClass = { fg = colors.orichalcum },
    CmpItemKindInterface = { fg = colors.orichalcum },
    CmpItemKindStruct = { fg = colors.orichalcum },
    CmpItemKindEvent = { fg = colors.orichalcum },
    CmpItemKindEnum = { fg = colors.orichalcum },
    CmpItemKindUnit = { fg = colors.orichalcum },

    CmpItemKindModule = { fg = colors.rad_yellow },

    CmpItemKindProperty = { fg = colors.white_sand },
    CmpItemKindField = { fg = colors.white_sand },
    CmpItemKindTypeParameter = { fg = colors.white_sand },
    CmpItemKindEnumMember = { fg = colors.white_sand },
    CmpItemKindOperator = { fg = colors.white_sand },

    -- ray-x/lsp_signature.nvim
    LspSignatureActiveParameter = { fg = colors.standard_blue },
}

return M
