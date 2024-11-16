" quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" inform C syntax that the file was included from cpp.vim
let b:filetype_in_cpp_family = 1

" The basic 16 colors

syn keyword cppWord if else while for switch case goto operator continue default return
syn keyword cppWord const constexpr consteval constinit
syn keyword cppWord static extern explicit friend inline mutable noexcept
syn keyword cppWord continue break nullptr private public protected
syn keyword cppWord class struct auto concept requires import export module namespace
syn keyword cppWord alignas alignof asm register
syn keyword cppWord catch throw try virtual static_assert
syn keyword cppWord const_cast dynamic_cast reinterpret_cast  static_cast
syn keyword cppWord co_await co_return co_yield
syn keyword cppWord decltype sizeof template this thread_local typedef typeid typename union using volatile
syn keyword cppWord delete new operator
syn keyword cppWord final override


syn match cppComment "//.*"

execute printf("hi cppWord guifg=%s gui=bold", hycity_cyan)
execute printf("hi cppComment guifg=%s", hycity_red)

let b:current_syntax = "cpp"

" vim: ts=8
