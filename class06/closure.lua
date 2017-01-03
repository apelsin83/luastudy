#!/usr/bin/env lua

names = {"Peter", "Paul", "Mary"}
grades = {Mary = 10, Paul = 7, Peter = 8}
-- table.sort( names, function(n1, n2)
-- return grades[n1] > grades[n2]
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

function digitButton (digit)
  return Button{
    label = tostring( digit ),
    action = function ()
      add_to_display(digit)
    end
  }
end

do
  local oldSin = math.sin
  local k = math.pi/180
  math.sin = function (x)
    print("sdsds")
    return oldSin(x*k)
  end
  print(math.sin(30))
  print(oldSin(30))
end
print(math.sin(30))
-- sandbox
do
  local oldOpen = io.open
  local access_OK = function (filename, mode)
    --<check access>
  end
  io.open = function (filename, mode)
    if access_OK(filename, mode) then
      return oldOpen(filename, mode)
    else
      return nil, "access denied"
    end
  end
end
