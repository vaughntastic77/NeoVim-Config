
return {
-- Simple text snippet
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
-- Single-line input snippet
s({trig=";si", snippetType="autosnippet"},
  fmta(
    [[
       s({trig="<>", snippetType="autosnippet"},
            fmta("<>",
                {
                    i(1),
                }
            ),
        ),
      ]],
{
      i(1),
      i(2),
    }
  ),
  {condition = line_begin}
),
-- Multi-line input snippet
s({trig=";mi", snippetType="autosnippet"},
  fmta(
    [=[
      s({trig="<>", snippetType="autosnippet"},
        fmta(
        [[
            <>
        ]],
            {
                i(1),
            }
        ),
     ),
    ]=],
        {
         i(1),
        i(2),
        }
    ),
  {condition = line_begin}
),
}
