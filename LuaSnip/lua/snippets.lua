
return {
-- Environment snippet
s({trig=";st", snippetType="autosnippet"},
  fmta(
    [[
      s({trig="<>", snippetType="autosnippet"},
        {
            t("<>"),
        }
      ),    
    ]],
    {
      i(1),
      i(2),
    }
  ),
  {condition = line_begin}
),
}
