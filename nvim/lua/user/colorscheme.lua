vim.g.everforest_ui_contrast ='hight'
vim.g.everforest_background ='hard'
local colorscheme = "everforest"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end 

