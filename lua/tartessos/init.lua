local M = {} -- Module convention

local highlights = require'tartessos.colors'

-- Stolen from Monokai
local function do_highlight(group, color)
    local style = color.style and 'gui=' .. color.style or 'gui=NONE'
    local fg = color.fg and 'guifg = ' .. color.fg or 'guifg = NONE'
    local bg = color.bg and 'guibg = ' .. color.bg or 'guibg = NONE'
    local sp = color.sp and 'guisp = ' .. color.sp or ''
    vim.cmd('highlight ' .. group .. ' ' .. style .. ' ' .. fg .. ' ' .. bg .. ' ' .. sp)
end

function M.apply_colorscheme()
    print("called tartessos.init.apply_colorscheme")
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end
    vim.o.background = 'dark'
    vim.o.termguicolors = true
    vim.g.colors_name = "tartessos"
    for group, color in pairs(highlights.base_syntax) do
        do_highlight(group, color)
    end

    for group, color in pairs(highlights.plugins) do
        do_highlight(group, color)
    end
    print("finished highlighs")
end

function M.setup()
    print("called tartessos.init.setup")
    M.apply_colorscheme()
end

return M
