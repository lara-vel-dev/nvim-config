local M = {}

local colors = {
    bg = "#0B132B",
    fg = "#5F8EA8",
    linebg = "#1E2132",
    linefg = "#444B71",
    indigo = "#1C2D5A",
    moonlight = "#E3F4F8",
    blue = "#264E63",
    navy = "#7ca3cb",
    comment = "#8aa1b9",
    lightblue = "#AEDEFC",
    purple = "#B7A3E3",
    yellow = "#FFF1CB",
    red = "#FF8F8F",
    green = "#C1E59F",
    lightpurple = "#EBD6FB",
    turquois = "#91C6BC"
}

function M.colorscheme()
    vim.g.colors_name = "moonlight"

    local set = vim.api.nvim_set_hl

    -- core editor
    set(0, "Normal", { bg = colors.bg, fg = colors.comment })
    set(0, "Visual", { bg = colors.blue, fg = colors.moonlight })
    set(0, "CursorLine", { bg = colors.blue })
    set(0, "LineNr", { bg = colors.linebg, fg = colors.linefg })
        
    -- search & navigation
    set(0, "Search", { bg = colors.yellow, fg = colors.bg })
    set(0, "IncSearch", { bg = colors.lightblue, fg = colors.bg })
    set(0, "MatchParen", { bg = colors.indigo, fg = colors.moonlight })

    -- messages
    set(0, "ErrorMsg", { fg = colors.red, bold = true })
    set(0, "WarningMsg", { fg = colors.yellow })
    set(0, "MoreMsg", { fg = colors.green })
    set(0, "ModeMsg", { fg = colors.lightblue })

    -- syntax
    set(0, "Comment", { fg = colors.comment, italic = true })
    set(0, "String", { fg = colors.navy })
    set(0, "Number", { fg = colors.yellow })
    set(0, "Boolean", { fg = colors.purple })
    set(0, "Keyword", { fg = colors.purple })
    set(0, "Function", { fg = colors.lightblue }) 
    set(0, "Type", { fg = colors.peach })
    set(0, "Constant", { fg = colors.lightpurple })
    set(0, "PrePoc", { fg = colors.lightblue }) 
    set(0, "Special", { fg = colors.moonlight })
    set(0, "Operator", { fg = colors.red })
    set(0, "Identifier", { fg = colors.turquois })

    -- LSP
    set(0, "DiagnosticError", { fg = colors.red })
    set(0, "DiagnosticWarn",  { fg = colors.yellow })
    set(0, "DiagnosticInfo",  { fg = colors.lightblue })
    set(0, "DiagnosticHint",  { fg = colors.green })
    set(0, "DiagnosticUnderlineError", { undercurl = true, sp = colors.red })
    set(0, "DiagnosticUnderlineWarn",  { undercurl = true, sp = colors.yellow })
    set(0, "DiagnosticUnderlineInfo",  { undercurl = true, sp = colors.blue })
    set(0, "DiagnosticUnderlineHint",  { undercurl = true, sp = colors.green })

    -- Diff & Git
    set(0, "DiffAdd",    { fg = colors.green, bg = colors.indigo })
    set(0, "DiffChange", { fg = colors.yellow, bg = colors.indigo })
    set(0, "DiffDelete", { fg = colors.red, bg = colors.indigo })
    set(0, "DiffText",   { fg = colors.cyan, bold = true })

end

return M
