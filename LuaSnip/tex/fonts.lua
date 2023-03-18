local helpers = require('luasnip-helper-funcs')
local get_visual = helpers.get_visual

return {
-- Italic font
s({trig = "tit", dscr = "Expands 'tit' into LaTeX's textit{} command.", snippetType="autosnippet"},
  fmta("\\textit{<>}",
    {
      d(1, get_visual),
    }
  )
),
-- Bold font
s({trig = "tbf", dscr = "Expands 'tbf' into LaTeX's textbf{} command.", snippetType="autosnippet"},
  fmta("\\textbf{<>}",
    {
      d(1, get_visual),
    }
  )
),
-- Underline font
s({trig = "tul", dscr = "Expands 'tul' into LaTeX's underline{} command.", snippetType="autosnippet"},
  fmta("\\underline{<>}",
    {
      d(1, get_visual),
    }
  )
),
-- Teletype font
s({trig="ttt", dscr="Expands 'ttt' into '\texttt{}'", snippetType="autosnippet"},
  fmta(
    "\\texttt{<>}",
    { i(1) }
  ),
  {condition = in_mathzone}
),
}


