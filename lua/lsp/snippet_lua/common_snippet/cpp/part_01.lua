local A = require("lsp.snippet_lua.all")

local M = {
    cppa = {
        A.s(A.tr("main",10), {
            A.t({"int main(int argc, char *argv[]) {"}),
            A.t({"","\t"}), A.i(0),
            A.t({"","\treturn 0;"}),
            A.t({"","}"})
        })
    },

    cppc = {
        A.s(A.tr("out",20), {
            A.t({'std::cout<< '}),
            A.i(0),
            A.t({';'}),
        })
    },

    cppd = {
        A.s(A.tr("header",20), {
            A.t({'#ifndef include__'}),
            A.i(0),
            A.t({'','#define include__'}),
            A.t({'',''}),
            A.t({'',''}),
            A.t({'',''}),
            A.t({'','#endif'}),
        })
    },

    cppe = {
        A.s(A.tr("zhcpp",20), {
            A.t({'std::locale::global(std::locale("zh_CN.UTF-8"));'}),
            A.t({'','std::ios::sync_with_stdio(false);'}),
            A.i(0)
        })
    },

    cppf = {
        A.s(A.tr("once",20), {
            A.t({'#pragma once'}),
            A.i(0)
        })
    }

}

return M

-- 不能使用"\n"来表示换行, 但是可以使用"\t"来表示缩进
-- 但是要输入\n这个字符串的话, 要用\\n来表示
