warn("bydoitenroi")
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Gun Ball", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local autoparry = false
function shoot()
game:GetService("ReplicatedStorage").RemoteEvent:FireServer({["name"] = "defense",["origin"] = "balltargets"},{})
end
Tab:AddToggle({
	Name = "Auto Parry",
	Default = false,
	Callback = function(Value)
		autoparry = Value
		task.spawn(function()
		while task.wait() do
		if autoparry then
		shoot()
		end
		end
		end)
	end    
})
