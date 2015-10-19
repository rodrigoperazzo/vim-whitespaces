" enable conceal and show cursor on concealed chars
set conceallevel=2 concealcursor=inc

" prevents running whitespaces#show at startup
if !exists("g:ws_hide")
    autocmd VimEnter * call whitespaces#show()
endif

command! ToggleWhitespaces call whitespaces#toggle()
