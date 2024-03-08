-- Ensure we have our namespace
if not vim.g then vim.g = {} end

vim.g.mycolorscheme = {
    line_number = "#5c6370",
    identifier = "#61afef",
    comment = "#5c6370",
}

-- Assign default values 
local default = {
    gray = "#484C53",
    red = "",
    orange = "#F6C88F",
    yellow = "",
    green = "",
    cyan = "",
    blue = "",
    peach = "#C59172",
    pumpkin = "",
    purple = "",
    bg = "#1E1F22",
    fg = "#26282D",
    comment = "#808080",
    identifier = "",
    line_number = "",
}

-- Highlight function to apply colors
 local function highlight(group, color)
     local style = color.style and 'gui=' .. color.style or 'gui=NONE'
     local fg = color.fg and 'guifg=' .. color.fg or 'guifg=NONE'
     local bg = color.bg and 'guibg=' .. color.bg or 'guibg=NONE'
     local sp = color.sp and 'guisp=' .. color.sp or ''
     vim.cmd('highlight ' .. group .. ' ' .. style .. ' ' .. fg .. ' ' .. bg .. ' ' .. sp)
 end

 -- Call highlight function with different groups
 highlight('Normal', {fg = "#ffffff", bg = default.bg})
 highlight('Comment', {fg = default.comment})
 highlight('Cursor', {fg = default.bg, bg = default.fg})

-- Ruby
highlight('rubyClass', {fg = default.peach})
highlight('rubyConstant', {fg = default.orange})
highlight('rubyModule', {fg = default.peach})
