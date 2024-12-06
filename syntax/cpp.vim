" quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" inform C syntax that the file was included from cpp.vim
let b:filetype_in_cpp_family = 1

" color: black red green yellow blue magenta cyan white _x
" purple
" red blue black purple
syn keyword cpp_word if else while for switch case goto continue default return break
syn keyword cpp_word const constexpr consteval constinit operator requires volatile
syn keyword cpp_word static extern explicit friend inline mutable noexcept
syn keyword cpp_word final override virtual
syn keyword cpp_word alignas alignof asm register
syn keyword cpp_word catch throw try 
syn keyword cpp_word static_assert
syn keyword cpp_word const_cast dynamic_cast reinterpret_cast  static_cast
syn keyword cpp_word decltype sizeof template this thread_local typedef typeid typename using
syn keyword cpp_word delete new 
syn keyword cpp_word co_await co_return co_yield
syn keyword cpp_word import export module 
execute printf("hi cpp_word guifg=%s gui=italic", hycity_black)

syn keyword cpp_decaled_word class struct auto union enum concept namespace
execute printf("hi cpp_decaled_word guifg=%s gui=italic", hycity_purple)

syn keyword cpp_p_word private public protected
execute printf("hi cpp_p_word guifg=%s gui=italic", hycity_blue)

syn match cpp_preprocess_word "#pragma"
syn match cpp_preprocess_word "#define"
syn match cpp_preprocess_word "#include"
syn match cpp_preprocess_word "#ifdef"
syn match cpp_preprocess_word "#else"
syn match cpp_preprocess_word "#endif"
execute printf("hi cpp_preprocess_word guifg=%s gui=italic", hycity_black)

syn keyword cpp_important_word not nullptr
execute printf("hi cpp_important_word guifg=%s gui=bold", hycity_red)

syn match cpp_comment "//.*"
execute printf("hi cpp_comment guifg=%s", hycity_red)


let b:current_syntax = "cpp"

" vim: ts=8
