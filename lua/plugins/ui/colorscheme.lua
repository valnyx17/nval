local colors = {
    fg           = "#C8D0E0",
    fg_light     = "#E5E9F0",
    bg           = "#2E3440",
    gray         = "#646A76",
    light_gray   = "#6C7A96",
    cyan         = "#88C0D0",
    blue         = "#81A1C1",
    dark_blue    = "#5E81AC",
    green        = "#A3BE8C",
    light_green  = "#8FBCBB",
    dark_red     = "#BF616A",
    red          = "#D57780",
    light_red    = "#DE878F",
    pink         = "#E85B7A",
    dark_pink    = "#E44675",
    orange       = "#D08F70",
    yellow       = "#EBCB8B",
    purple       = "#B988B0",
    light_purple = "#B48EAD",
    none         = "NONE",
}

return {
    "rmehri01/onenord.nvim",
    lazy = false,
    opts = {
        custom_colors = colors,
        styles = {
            comments = "italic",
            variables = "bold",
            functions = "bold,italic"
        },
        custom_highlights = {
            IncSearch = {
                fg = colors.pink,
            },
            CurSearch = {
                fg = colors.bg,
                bg = colors.pink
            }
        }
    }
}
