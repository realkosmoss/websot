local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Ultimate Tower Defense", "DarkTheme")
local Tab = Window:NewTab("Farms")
local Section = Tab:NewSection("Farms")
Section:NewToggle("Fish Farm", "lolol", function(state)
    if state then
    _G.loop = true
    while _G.loop do
    game:GetService("ReplicatedStorage").Modules.GlobalInit.RemoteEvents.PlayerCatchFish:FireServer()
   wait(0.5)
end
    else
        _G.loop = false
    while _G.loop do
    game:GetService("ReplicatedStorage").Modules.GlobalInit.RemoteEvents.PlayerCatchFish:FireServer()
   wait(0.5)
end
    end
end)
-- really ugly code LMFAO pls no het ;() 
-- i will add more features later if someone even sees this LMFAO
