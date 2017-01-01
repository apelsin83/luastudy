#!/usr/bin/env lua

function fwrite (...)
    local t = ""
    for k, v in ipairs{ ... } do
        t = t .. v
    end
    print(t)
end

fwrite("fff", "fasf", "aaa")
