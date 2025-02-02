local OrionLib = loadstring(game:HttpGet(('https://gist.githubusercontent.com/Mc4121ban/f8dfc15fb9caf503c700bfd14523bd5c/raw/8eb117482c0ba1705de449058ad4a2d7f80ffbfb/gistfile1.txt')))()
local Window = OrionLib:MakeWindow({Name = "Gun Ball | doitenroi.9941", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
local autoparry = false
local ifr = false
function shoot()
if ifr then
local args = {
    [1] = {
        ["success"] = false,
        ["reason"] = "blocked"
    }
}

game:GetService("ReplicatedStorage").resources.assets.balls.communication.network_remote_event:FireServer(unpack(args))
game:GetService("ReplicatedStorage").resources.assets.balls.communication.network_remote_event:FireServer(unpack(args))
end
game:GetService("ReplicatedStorage").RemoteEvent:FireServer({["name"] = "defense",["origin"] = "balltargets"},{})
end
Tab:AddToggle({
    Name = "Auto Parry",
    Default = false,
    Callback = function(Value)
        autoparry = Value
    end
})
Tab:AddToggle({
    Name = "Infinity Range Parry",
    Default = false,
    Callback = function(Value)
        ifr = Value
    end
})
task.spawn(function()
while task.wait() do
if autoparry then
task.spawn(shoot)
task.spawn(shoot)
task.spawn(shoot)
end
end
end)
