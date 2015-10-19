" enable conceal and show cursor on concealed chars
set conceallevel=2 concealcursor=inc

" show leading whitespaces as gray dots
syn match LeadingWS /\%(^\s*\)\@<= / containedin=ALLBUT,TrailingWS conceal cchar=.
highlight Conceal ctermbg=NONE ctermfg=238

" paint trailing whitespaces with red
syn match TrailingWS /\s\+$/ containedin=ALLBUT,LeadingWS
highlight TrailingWS ctermbg=1
