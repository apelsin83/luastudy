#!/usr/bin/env lua

Lib = {
    foo = function (x, y) return x + y end,
    goo = function (x, y) return x - y end
}


-- or

Lib1 = {}
Lib1.foo = function (x,y) return x + y end
Lib1.goo = function (x,y) return x - y end

-- or

Lib = {}
function Lib.foo (x,y) return x + y end
function Lib.goo (x,y) return x - y end


local f = function ( ... )
    --<body>
end
local g = function ( ... )
    --<some code>
f()
-- 'f' is visible here
    --<some code>
end

-- Lua supports such uses of local functions with a syntactic sugar for them:
local function f ( ... )
    --<body>
end


local fact = function (n)
    if n == 0 then return 1
        else return n*fact(n-1) -- -- buggy  When Lua compiles the call fact(n-1) in the function body, the local fact is not yet defined
    end
end

local fact
fact = function (n)
    if n == 0 then return 1
    else return n*fact(n-1)
    end
end

local f, g
-- 'forward' declarations
function g ()
    -- <some code>
end f()
-- <some code>
function f ()
-- <some code>
end
