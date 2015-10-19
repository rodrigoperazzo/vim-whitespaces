function! whitespaces#toggle()
    if !exists("s:visible") || s:visible == 0
        call whitespaces#show()
    else
        call whitespaces#hide()
    endif
endfunction

function! whitespaces#show()
    " show leading whitespaces as gray dots
    syn match LeadingWS /\%(^\s*\)\@<= / containedin=ALLBUT,TrailingWS conceal cchar=.
    highlight Conceal ctermbg=NONE ctermfg=238

    " paint trailing whitespaces with red
    syn match TrailingWS /\s\+$/ containedin=ALLBUT,LeadingWS
    highlight TrailingWS ctermbg=1

    let s:visible = 1
endfunction

function! whitespaces#hide()
    syn clear LeadingWS
    syn clear TrailingWS

    let s:visible = 0
endfunction
