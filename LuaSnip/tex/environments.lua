local helpers = require('luasnip-helper-funcs')
local get_visual = helpers.get_visual

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
}
