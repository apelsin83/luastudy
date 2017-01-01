#!/usr/bin/env lua

function foo(x)
return 2 * x
end

foo1 = function (x) return 2 * x end

print(foo(2))

print(foo1(4))

network = {
    {
        name = "grauna", IP = "210.26.30.34"
    },
    {
        name = "arraial",
        IP = "210.26.30.23"
    },
    {
        name = "lua",
        IP = "210.26.23.12"
    },
    {
        name = "derain",
        IP = "210.26.23.20"
    },
}

table.sort(network, function (a, b) return (a.name < b.name) end)

for k, v in ipairs(network) do
        print(v.name, v.IP)
    end

--derrivative

function derivative(f, delta)
    delta = delta or 1e-4
    return function (x)
                return (f(x + delta) - f(x)) / delta
           end
end

c = derivative(math.sin)
print(math.cos(5.2), c(5.2))