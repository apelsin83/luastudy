#!/usr/bin/env lua


-- Variadic functions

function add (...)
    local s = 0
    for i, v in ipairs{...} do
        s = s + v
    end
    return s
end

print(add(3,4,10,25,12))


function foo(a, b, c) end

function foo(...)
    local a, b, c = ...
end


function foo1 (...)
    print("colling foo:", ...)
    return foo(...)
end

function fwrite (fmt, ...)
    return io.write( string.format( fmt , ... ))
end

fwrite("%d and %d", 4, 5)

function nonils (...)
    local arg = table.pack(...)
    for i = 1, arg.n do
        if arg[i] == nil then return false end
    end
    return true
end

print(nonils(nil))

function rename(arg)
    return os.rename( arg.old, arg.new )
end

rename{old="temp.lua", new="temp1.lua"}
