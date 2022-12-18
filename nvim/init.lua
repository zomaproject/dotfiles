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

  
local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local extras = require("luasnip.extras")
local l = extras.lambda
local rep = extras.rep
local p = extras.partial
local m = extras.match
local n = extras.nonempty
local dl = extras.dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local conds = require("luasnip.extras.expand_conditions")
local postfix = require("luasnip.extras.postfix").postfix
local types = require("luasnip.util.types")
local parse = require("luasnip.util.parser").parse_snippet



-- agregar un snippes que retorne  un componente de react con la primer letra en mayusculas y el nombre del archivo
ls.add_sniptes("react", {
  s("react", {
    t("import React from 'react'"),
    t(""),
    t("const ${1:$(=vim.fn.expand('%:t:r'))} = () => {"),
    t("  return ("),
    t("    <div>"),
    t("      $0"),
    t("    </div>"),
    t("  )"),
    t("}"),
    t(""),
    t("export default ${1:$(=vim.fn.expand('%:t:r'))}"),
  }),
})