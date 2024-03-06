local helpers = require('luasnip-helper-funcs')
local get_visual = helpers.get_visual
local line_begin = require("luasnip.extras.expand_conditions").line_begin

return {
-- Environment snippet
s({trig="env", snippetType="autosnippet"},
  fmta(
    [[
      \begin{<>}
          <><>
      \end{<>}
    ]],
    {
      i(1),
      d(2, get_visual),
      i(0),
      rep(1),
    }
  ),
  {condition = line_begin}
),
-- Figure environment snippet
s({trig="fig", snippetType="autosnippet"},
  fmta(
    [[
      \begin{figure}[ht!]
          \centering
          \includegraphics[width=6in]{<>}
          \caption{<>}
          \label{fig:<>}
      \end{figure}
    ]],
    {
      i(1),
      i(2),
      rep(1),
    }
  ),
  {condition = line_begin}
),
}
