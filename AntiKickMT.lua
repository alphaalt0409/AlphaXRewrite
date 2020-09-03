local hook = hookfunction or hookfunc
local newcclosure = newcclosure or protect_function or function(...) return (...) end

hook(game:GetService("Players").LocalPlayer.Kick, newcclosure(function()
    wait(9e99)
    return
end))
