require("catppuccin").setup {
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    term_colors = true,
    transparent_background = false,
    no_italic = false,
    no_bold = false,
    styles = {
        comments = {},
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {}
    },
    color_overrides = {mocha = {base = "#0A010B"}}, -- a dark purple
    highlight_overrides = {
        mocha = function(C)
            return {
                TabLineSel = {bg = C.pink},
                NvimTreeNormal = {bg = C.none},
                CmpBorder = {fg = C.surface2},
                Pmenu = {bg = C.none},
                NormalFloat = {bg = C.none},
                TelescopeBorder = {link = "FloatBorder"}
            }
        end
    }
}
vim.api.nvim_command "colorscheme catppuccin"
