-- Ensure we have our namespace
if not vim.g then vim.g = {} end

vim.g.mycolorscheme = {
    line_number = "#5c6370",
    identifier = "#61afef",
    comment = "#5c6370",
}

-- Assign default values 
local colors = vim.g.mycolorscheme

-- Highlight function to apply colors
local function highlight(group, guifg, guibg, attr, guisp)
    local command = string.format(
        'highlight %s guifg=%s guibg=%s',
        group,
        guifg,
        guibg
    )
    if attr then
        command = string.format(
            '%s gui=%s',
            command,
            attr
        )
    end
    if guisp then
        command = string.format(
            '%s guisp=%s',
            command,
            guisp
        )
    end
    vim.cmd(command)
end

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
end

vim.g.colors_name = "mycolorscheme"

-- Now we apply the colors we want to use
highlight('LineNr', colors.line_number, 'NONE')
highlight('Identifier', colors.identifier, 'NONE')
highlight('Comment', colors.comment, 'NONE')

