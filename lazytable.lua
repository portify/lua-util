return function(t)
  return setmetatable({}, {
    __index = function(t1, k)
      if t[k] then
        if type(t[k]) == "string" then
          t1[k] = require(t[k])
        else
          t1[k] = t[k]()
        end
        return t1[k]
      end
    end
  })
end
