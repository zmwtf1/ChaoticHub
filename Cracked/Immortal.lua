-- Cracked by Nivalos
if game.PlaceId == 7979341445 then
    local v1 = game:GetService("ReplicatedStorage"):FindFirstChild("Death")
    local v2 = game.Players.LocalPlayer
    local v3 = v2:FindFirstChild("ScriptExecuted")
    if not v3 then
        v3 = Instance.new("Folder")
        v3.Name = "ScriptExecuted"
        v3.Parent = v2
    end
    if v3:FindFirstChild("Executed") then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Error!",
            Text = "Script Already Executed!",
            Icon = "rbxassetid://14703317744",
            Duration = 15
        })
    else
        if v1 then
            v1:Destroy()
        end
        local v4 = Instance.new("BoolValue")
        v4.Name = "Executed"
        v4.Parent = v3
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "|| Immortality ||",
            Text = "CREATED BY: Termux_404 ~ Roblox",
            Duration = 30,
            Icon = "rbxassetid://15155314638"
        })
    end
else
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Error!",
        Text = "Only in Worlds Hardest Game",
        Icon = "rbxassetid://14703317744",
        Duration = 15
    })
end