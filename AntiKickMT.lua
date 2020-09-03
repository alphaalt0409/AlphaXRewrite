local hook = hookfunction or hookfunc
local newcclosure = newcclosure or protect_function or function(...) return (...) end
hook(game:GetService("Players").LocalPlayer.Kick, newcclosure(function()
    return warn('Blocked Kick')
end))
