local in_mathzone = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return {
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
