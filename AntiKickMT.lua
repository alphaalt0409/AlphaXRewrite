local hook = hookfunction or hookfunc
local newcclosure = newcclosure or protect_function or function(...) return (...) end
local mt = getrawmetatable(game)
local index = mt.__index

setreadonly(mt, false)

hook(mt.__index, newcclosure(function(...)
      local method = getnamecallmethod()
      if method:lower() == 'kick' then
                return
      end
      return index(...)    
end))

hook(game:GetService("Players").LocalPlayer.Kick, newcclosure(function()
    wait(9e99)
    return
end))
