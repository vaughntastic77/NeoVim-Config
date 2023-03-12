local in_mathzone = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return {
-- \texttt
s({trig="ttt", dscr="Expands 'ttt' into '\texttt{}'"},
  fmta(
    "\\texttt{<>}",
    { i(1) }
  ),
  {condition = in_mathzone}
),
-- \frac
s({trig="ff", dscr="Expands 'ff' into '\frac{}{}'"},
  fmta(
    "\\frac{<>}{<>}",
    {
      i(1),
      i(2)
    }
  ),
  {condition = in_mathzone}
),
-- Equation
s({trig="eq", dscr="Expands 'eq' into an equation environment"},
  fmta(
     [[
       \begin{equation}
           <>
       \end{equation}
     ]],
     { i(0) }
  )
)
}
