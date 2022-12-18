
require("one_monokai").setup({
    --[[ colors = {
        green = "#00ff00",
        blue = "#0000ff",
        roman = "#e36965",
        lmao = "#282c34",
    }, ]]
    themes = function(colors)
        return {
            Normal = { bg = "#1e1e1e" },
            -- Comment = { fg = colors.pink, italic = true },
            -- ErrorMsg = { fg = "black", bg = "#ec6075", standout = true },
            -- NormalFloat = { link = "Normal" },
        }
    end,
})
 local colorscheme = "one_monokai"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end 

