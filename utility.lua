function translateVertices(x, y, vertices)
  local trans = {}

  for i, v in pairs(vertices) do
    if i % 2 == 0 then
      trans[i] = v + y/2
    else
      trans[i] = v + x/2
    end
  end

  return trans
end

function default(value, default)
  if value == nil then
    return default
  else
    return value
  end
end

function changeMessage(msg)
  print(msg)
end

function keyCheck(table)
  for i, key in pairs(table) do
    if love.keyboard.isDown(key) then
      return true
    end
  end
  return false
end
