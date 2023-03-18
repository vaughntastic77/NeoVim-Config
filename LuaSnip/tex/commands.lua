return {
-- Document class
s({trig="dc", snippetType="autosnippet"},
  fmta("\\documentclass{<>}",
    {
      i(1),
    }
  ),
  {condition = line_begin}
),
-- newcommand
s({trig="nc", snippetType="autosnippet"},
  fmta("\\newcommand{<>}{<>}",
    {
      i(1),
      i(2),
    }
  ),
  {condition = line_begin}
),
-- renewcommand
s({trig="rnc", snippetType="autosnippet"},
  fmta("\\renewcommand{<>}{<>}",
    {
      i(1),
      i(2),
    }
  ),
  {condition = line_begin}
),
}
