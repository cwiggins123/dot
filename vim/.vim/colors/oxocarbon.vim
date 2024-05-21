" Vim colorscheme file

" Base colors
let s:base00 = "#161616"
let s:base01 = "#262626"
let s:base02 = "#393939"
let s:base03 = "#525252"
let s:base04 = "#dde1e6"
let s:base05 = "#f2f4f8"
let s:base06 = "#ffffff"
let s:base07 = "#08bdba"
let s:base08 = "#3ddbd9"
let s:base09 = "#78a9ff"
let s:base0A = "#ee5396"
let s:base0B = "#33b1ff"
let s:base0C = "#ff7eb6"
let s:base0D = "#42be65"
let s:base0E = "#be95ff"
let s:base0F = "#82cfff"

" Set the colorscheme
set background=dark
hi clear

" Normal colors
hi Normal          guifg=#f2f4f8 guibg=#161616
hi Cursor          guifg=#161616 guibg=#f2f4f8
hi Visual          guifg=#f2f4f8 guibg=#08bdba

" Syntax highlighting
hi Comment         guifg=#525252
hi Constant        guifg=#78a9ff
hi String          guifg=#33b1ff
hi Character       guifg=#33b1ff
hi Number          guifg=#33b1ff
hi Boolean         guifg=#33b1ff
hi Float           guifg=#33b1ff
hi Identifier      guifg=#3ddbd9
hi Function        guifg=#3ddbd9
hi Statement       guifg=#ff7eb6
hi Conditional     guifg=#ff7eb6
hi Repeat          guifg=#ff7eb6
hi Label           guifg=#ff7eb6
hi Operator        guifg=#ff7eb6
hi Keyword         guifg=#ff7eb6
hi Exception       guifg=#ff7eb6
hi PreProc         guifg=#ff7eb6
hi Include         guifg=#ff7eb6
hi Define          guifg=#ff7eb6
hi Macro           guifg=#ff7eb6
hi Typedef         guifg=#ff7eb6
hi Special         guifg=#ff7eb6
hi SpecialChar     guifg=#ff7eb6
hi Tag             guifg=#ff7eb6
hi Delimiter       guifg=#ff7eb6
hi SpecialComment  guifg=#525252
hi Debug           guifg=#525252

" Cursor
hi CursorLine      guibg=#262626
hi CursorColumn    guibg=#262626

" Status line
hi StatusLine      guifg=#f2f4f8 guibg=#262626
hi StatusLineNC    guifg=#525252 guibg=#262626

" Tabs
hi TabLine         guifg=#525252 guibg=#262626
hi TabLineFill     guifg=#525252 guibg=#262626
hi TabLineSel      guifg=#f2f4f8 guibg=#08bdba

" Search
hi Search          guifg=#f2f4f8 guibg=#ff7eb6

" Line numbers
hi LineNr          guifg=#525252 guibg=#161616
hi CursorLineNr    guifg=#f2f4f8 guibg=#161616

" Folded text
hi Folded          guifg=#525252 guibg=#262626

" Diff
hi DiffAdd         guifg=#42be65 guibg=#262626
hi DiffChange      guifg=#78a9ff guibg=#262626
hi DiffDelete      guifg=#ee5396 guibg=#262626
hi DiffText        guifg=#f2f4f8 guibg=#ff7eb6

" Pmenu
hi Pmenu           guifg=#f2f4f8 guibg=#262626
hi PmenuSel        guifg=#262626 guibg=#f2f4f8

" Fold column
hi FoldColumn      guifg=#525252 guibg=#262626

" VertSplit
hi VertSplit       guifg=#525252 guibg=#262626

" Error
hi Error           guifg=#ee5396 guibg=#262626

" Warning
hi WarningMsg      guifg=#ee5396 guibg=#262626

" Underline
hi Underlined      guifg=#f2f4f8 guibg=#161616

" Conceal
hi Conceal         guifg=#f2f4f8 guibg=#161616

" NonText
hi NonText         guifg=#525252

" End of file
hi EndOfBuffer     guifg=#525252
