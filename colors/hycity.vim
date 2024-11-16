hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "hycity"

let hycity_black = "#100F0F"
let hycity_black_x = "#6F6E69"
let hycity_red = "#D14D41"
let hycity_red_x = "#AF3029"
let hycity_green = "#879A39"
let hycity_green_x = "#66800B"
let hycity_yellow = "#D0A215"
let hycity_yellow_x = "#AD8301"
let hycity_blue = "#4385BE"
let hycity_blue_x = "#205EA6"
let hycity_magenta = "#CE5D97"
let hycity_magenta_x = "#A02F6F"
let hycity_cyan = "#3AA99F"
let hycity_cyan_x = "#24837B"
let hycity_white = "#FFFCF0"
let hycity_white_x = "#F2F0E5"
let hycity_cursor_line = "#ECEBD5"

execute printf("hi Normal guibg=%s",hycity_white)
execute printf("hi CursorLine guibg=%s",hycity_cursor_line)
execute printf("hi Visual guibg=%s", hycity_cursor_line)


" vim: sw=2
