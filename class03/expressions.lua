#!/usr/bin/env lua

a = 5
b = 3
-- print(a % b)
-- print(a - math.floor(a/b) * b)
--
-- print("4 and 5:" , 4 and 5)
-- print("nil and 5", nil and 5)
-- print("4 or 5", 4 or 5)
-- print("false and 5", false and 5)

x = 4
y = 5
-- x=x or v
if not x then x = v end

-- a?b:c
max = (x > y) and x or y
-- print(max)

-- print("Hello" .. " world")

a = "Hello sdada"
-- print(#a)
a = {}
a[1] = 1
a[2] = nil
a[3] = 1
a[4] = 1

-- print(a[#a])
-- print(#a)

days = {"Sunday", "Monday", "Tuesday", "Wednesday",
  "Thursday", "Friday", "Saturday"}

-- print(days[4])

-- are equeal
a = {x=10, y=20}
a = {}; a.x=10; a.y=20

w = {x=0, y=0, label="console"}
x = {math.sin(0), math.sin(1), math.sin(2)}
w[1] = "another field" -- add key 1 to table 'w'
x.f = w -- add key "f" to table 'x'
-- print(w["x"]) --> 0
-- print(w[1]) --> another field
-- print(x.f[1]) --> another field
w.x = nil -- remove field "x"

polyline = {color="blue", thickness=2, npoints=4,
            {x=0, y=0}, --polyline[1]
            {x=-10, y=0}, --polyline[2]
            {x=-10, y=1}, --polyline[3]
            {x=0, y=1} --polyline[4]
}
print(#polyline)

opnames = {["+"] = "add", ["-"] = "sub", ["*"] = "mul", ["/"] = "div"}
