require("user.options")
require("user.keymaps")
require("user.plugins")
require("user.autocommands")
require("user.colorscheme")
require("user.cmp")
require("user.telescope")
require("user.gitsigns")
require("user.treesitter")
require("user.autopairs")
require("user.comment")
require("user.nvim-tree")
require("user.bufferline")
require("user.lualine")
require("user.toggleterm")
require("user.project")
require("user.impatient")
require("user.illuminate")
require("user.indentline")
require("user.alpha")
require("user.lsp")
require("user.dap")
-- require("user.tsrainbow")
require("user.lab")
require("user.colorizer")
require("user.surrond")
require('user.document-color')
require("user.renamer")
require('user.hop')
require("user.notify")
require("user.nlsp")
require("user.copilot")
require('user.template-string')
require('user.res')
require('user.nvim-web-icons')

vim.cmd([[" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif]])

require('dim').setup({})


-- vim.cmd([[ hi MatchParen ctermbg=NONE guibg=green ]])

  




