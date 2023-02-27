local helpers = require('luasnip-helper-funcs')
local get_visual = helpers.get_visual

return {
-- Italic font
s({trig = "tii", dscr = "Expands 'tii' into LaTeX's textit{} command."},
  fmta("\\textit{<>}",
    {
      d(1, get_visual),
    }
  )
),
}
