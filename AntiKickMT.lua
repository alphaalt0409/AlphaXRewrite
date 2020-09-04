local hook = hookfunction or hookfunc
local newcclosure = newcclosure or protect_function or function(...) return (...) end
local mt = getrawmetatable(game)
local index = mt.__index
local getnamecallmethod = getnamecallmethod or get_namecall_method
local setreadonly = setreadonly or function(mt, tf)
      if not tf then
            make_writeable(mt)
      else
            make_readonly(mt)
      end
end
setreadonly(mt, false)

mt.__index = newcclosure(function(...)
    local method = getnamecallmethod() or ''
    if method:lower() == 'kick' then
        return
    end
    return index(...)    
end)

hook(game:GetService("Players").LocalPlayer.Kick, newcclosure(function()
    return
end))
