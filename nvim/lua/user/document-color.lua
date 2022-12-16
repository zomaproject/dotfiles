
local status_ok, document_color = pcall(require, "document-color")
if not status_ok then
  return
end
  document_color.setup {
    -- Default options
    mode = "background", -- "background" | "foreground" | "single"
  }

