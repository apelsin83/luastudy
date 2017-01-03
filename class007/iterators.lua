#!/usr/bin/env lua

function values(t)
  local i = 0
  return function() i = i + 1; return t[i] end
end


t = {10, 20, 30}
iter = values(t)
-- creates the iterator
while true do
  local element = iter() -- calls the iterator
  if element == nil then break end
  print(element)
end

-- Iterator to traverse all words from the input file:
function allwords ()
  local line = io.read() -- current line
  local pos = 1
  -- current position in the line
  return function ()
    -- iterator function
    while line do
      -- repeat while there are lines
      local s, e = string.find(line, "%w+", pos)
      if s then
        -- found a word?
        pos = e + 1
        -- next position is after this word
        return string.sub(line, s, e)
          -- return the word
      else
        line = io.read() -- word not found; try next line
        pos = 1
        -- restart from first position
      end
    end
    return nil
      -- no more lines: end of traversal
  end
end
