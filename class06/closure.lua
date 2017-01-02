#!/usr/bin/env lua

names = {"Peter", "Paul", "Mary"}
grades = {Mary = 10, Paul = 7, Peter = 8}
-- table.sort( names, function(n1, n2)
--         return grades[n1] > grades[n2]
-- end)

function sortbygrade(names, grades)
    table.sort( names, function(n1, n2)
        return grades[n1] > grades[n2]
    end)
end
sortbygrade(names, grades)
for k, v in pairs( names ) do
    print(k, " ", v)
end


function newCounter ()
    local i = 0
    return function ()
            i = i + 1
        return i
    end
end
-- anonymous function
c1 = newCounter()
print(c1()) --> 1
print(c1()) --> 2
