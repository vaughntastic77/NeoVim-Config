local line_begin = require("luasnip.extras.expand_conditions").line_begin

return {
-- Section command
s({trig="sc", snippetType="autosnippet"},
  fmta("\\section{<>}",
    {
      i(1),
    }
  ),
  {condition = line_begin}
),
-- Subsection command
s({trig="ssc", snippetType="autosnippet"},
  fmta("\\subsection{<>}",
    {
      i(1),
    }
  ),
  {condition = line_begin}
),
-- Subsubsection command
s({trig="sssc", snippetType="autosnippet"},
  fmta("\\subsubsection{<>}",
    {
      i(1),
    }
  ),
  {condition = line_begin}
),
-- Subsubsubsection command
s({trig="ssssc", snippetType="autosnippet"},
  fmta("\\subsubsection*{<>}",
    {
      i(1),
    }
  ),
  {condition = line_begin}
),
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
