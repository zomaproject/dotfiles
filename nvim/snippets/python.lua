
local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local c = ls.choice_node


s(
    "sn",
    sn(1, {
      t { "Select a choice :" },
      c(1, { t "choice 1", t "choice 2", t "choice 3" }),
    })
),

