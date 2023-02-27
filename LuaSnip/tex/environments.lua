return {
-- Environment snippet
s({trig="env", snippetType="autosnippet"},
  fmta(
    [[
      \begin{<>}
          <>
      \end{<>}
    ]],
    {
      i(1),
      i(0),
      rep(1),
    }
  ),
  {condition = line_begin}
),
}
