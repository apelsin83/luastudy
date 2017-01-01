#!/usr/bin/env lua

for i = -10, 10 do
    print(i, i %3)
end


function polynomal(a, x)
    s = a[1]
    for i = 2, #a do
        s = s + a[i] * x ^ (i - 1)
    end
    print(s)
end

polynomal({1, 2, 3}, 2)


sunday = "monday"
monday = "sunday"
t = {sunday = "monday", [sunday] = monday}
print(t.sunday, t[sunday], t[t.sunday])
for key,value in pairs(t) do print(key,value) end
