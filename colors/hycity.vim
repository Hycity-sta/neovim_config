hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "hycity"

let hycity_white       = "#FFFFFF"
let hycity_black       = "#000000"
let hycity_red         = "#f47c7c"
let hycity_green       = "#a1de93"
let hycity_yellow      = "#f7f48b"
let hycity_blue        = "#70a1d7"
let hycity_magenta     = "#CE5D97"
let hycity_cyan        = "#3AA99F"
let hycity_purple      = "#995CCC"

let hycity_cursor_line = "#e7e6e1"

execute printf("hi Normal guibg=%s",    hycity_white)
execute printf("hi CursorLine guibg=%s",hycity_cursor_line)
execute printf("hi Visual guibg=%s",    hycity_cursor_line)


" vim: sw=2
