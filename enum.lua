return function(t)
  local t1 = {}

  for k, v in pairs(t) do
    t1[v] = k
  end

  return setmetatable(t1, {
    __call = function(_, k)
      return t[k]
    end
  })
end
