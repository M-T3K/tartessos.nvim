local M = {} -- Module convention

function M.apply_colorscheme()
    print("called tartessos.init.apply_colorscheme")
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
    vim.o.termguicolors = true
    vim.g.colors_name = "tartessos"
end

function M.setup()
    print("called tartessos.init.setup")
    M.apply_colorscheme()
end

return M
