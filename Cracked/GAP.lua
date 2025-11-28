-- Cracked by Nivalos
GitGui = Instance.new("ScreenGui")
GitGui.ResetOnSpawn = false
GitGui.Parent = game.CoreGui
audioFrame = Instance.new("Frame")
audioFrame.Size = UDim2.new(0, 400, 0, 300)
audioFrame.Position = UDim2.new(0.5, - 200, 0.4, - 150)
audioFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
audioFrame.BackgroundTransparency = 0.5
audioFrame.Active = true
audioFrame.Visible = true
audioFrame.Draggable = true
audioFrame.Parent = GitGui
imageTitulo1 = Instance.new("ImageLabel")
imageTitulo1.Size = UDim2.new(0, 50, 0, 50)
imageTitulo1.Position = UDim2.new(0, 17, 0, 5)
imageTitulo1.BackgroundTransparency = 1
imageTitulo1.Image = "rbxassetid://130537000077027"
imageTitulo1.Parent = audioFrame
imageTitulo2 = Instance.new("ImageLabel")
imageTitulo2.Size = UDim2.new(0, 50, 0, 50)
imageTitulo2.Position = UDim2.new(0, 333, 0, 5)
imageTitulo2.BackgroundTransparency = 1
imageTitulo2.Image = "rbxassetid://130537000077027"
imageTitulo2.Parent = audioFrame
tituloFrame = Instance.new("Frame")
tituloFrame.Size = UDim2.new(1, - 145, 0, 35)
tituloFrame.Position = UDim2.new(0.5, - 128, 0.03, 5)
tituloFrame.BackgroundColor3 = Color3.fromRGB(64, 64, 64)
tituloFrame.Parent = audioFrame
tituloFrameCorner = Instance.new("UICorner")
tituloFrameCorner.CornerRadius = UDim.new(0, 30)
tituloFrameCorner.Parent = tituloFrame
tituloFrameStroke = Instance.new("UIStroke")
tituloFrameStroke.Thickness = 3
tituloFrameStroke.Color = Color3.fromRGB(0, 0, 0)
tituloFrameStroke.Parent = tituloFrame
TextoTitulo0 = Instance.new("TextLabel")
TextoTitulo0.Size = UDim2.new(1, 0, 1, 0)
TextoTitulo0.Position = UDim2.new(0, 3, 0, 0)
TextoTitulo0.BackgroundTransparency = 1
TextoTitulo0.Text = "GITHUB AUDIO PLAYER V1.0"
TextoTitulo0.TextColor3 = Color3.fromRGB(255, 255, 255)
TextoTitulo0.TextScaled = true
TextoTitulo0.Font = Enum.Font.Fondamento
TextoTitulo0.Parent = tituloFrame
Linha = Instance.new("Frame")
Linha.Size = UDim2.new(1, 0, 0, 4)
Linha.Position = UDim2.new(0, 0, 0.5, - 90)
Linha.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Linha.BorderSizePixel = 0
Linha.Parent = audioFrame
TitleDisplay = Instance.new("ImageLabel")
TitleDisplay.Size = UDim2.new(0, 370, 0, 50)
TitleDisplay.Position = UDim2.new(0, 16, 0, 80)
TitleDisplay.BackgroundTransparency = 1
TitleDisplay.Image = "rbxassetid://120433703592606"
TitleDisplay.Parent = audioFrame
Link = Instance.new("Frame")
Link.Size = UDim2.new(0, 370, 0, 50)
Link.Position = UDim2.new(0.5, - 185, 0.5, - 5)
Link.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
Link.Parent = audioFrame
Web = Instance.new("ImageLabel")
Web.Size = UDim2.new(0, 35, 0, 35)
Web.Position = UDim2.new(0, 11, 0, 7)
Web.BackgroundTransparency = 1
Web.Image = "rbxassetid://121063743595669"
Web.Parent = Link
UrlBox = Instance.new("TextBox")
UrlBox.Size = UDim2.new(0, 258, 0, 38)
UrlBox.Position = UDim2.new(0, 53, 0, 5)
UrlBox.Text = "https://github.com/Dan41/Scripts/raw/refs/heads/main/Jake%20Daniels%20-%20Two%20Face%20(Omido%20Remix).mp3"
UrlBox.PlaceholderText = "GitHub Audio Raw Link"
UrlBox.TextScaled = true
UrlBox.TextColor3 = Color3.fromRGB(0, 255, 255)
UrlBox.PlaceholderColor3 = Color3.fromRGB(255, 215, 0)
UrlBox.BackgroundTransparency = 1
UrlBox.ClearTextOnFocus = false
UrlBox.Parent = Link
BotaoApagar = Instance.new("ImageButton")
BotaoApagar.Size = UDim2.new(0, 35, 0, 35)
BotaoApagar.Position = UDim2.new(0, 320, 0, 7)
BotaoApagar.BackgroundColor3 = Color3.fromRGB(64, 64, 64)
BotaoApagar.BackgroundTransparency = 0.5
BotaoApagar.Parent = Link
TextoApagar = Instance.new("TextLabel")
TextoApagar.Size = UDim2.new(1, 0, 1, 0)
TextoApagar.Position = UDim2.new(0, 0, 0, 0)
TextoApagar.BackgroundTransparency = 1
TextoApagar.Text = "X"
TextoApagar.TextColor3 = Color3.fromRGB(255, 255, 255)
TextoApagar.TextScaled = true
TextoApagar.Parent = BotaoApagar
BotaoPlay = Instance.new("ImageButton")
BotaoPlay.Size = UDim2.new(0, 370, 0, 45)
BotaoPlay.Position = UDim2.new(0, 15, 0, 244)
BotaoPlay.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
BotaoPlay.Parent = audioFrame
TextoPlay = Instance.new("TextLabel")
TextoPlay.Size = UDim2.new(1, 0, 1, 0)
TextoPlay.Position = UDim2.new(0, 0, 0, 0)
TextoPlay.BackgroundTransparency = 1
TextoPlay.Text = "PLAY"
TextoPlay.TextColor3 = Color3.fromRGB(0, 255, 0)
TextoPlay.TextScaled = true
TextoPlay.Font = Enum.Font.Bangers
TextoPlay.Parent = BotaoPlay
BotaoFechar = Instance.new("ImageButton")
BotaoFechar.Size = UDim2.new(0, 40, 0, 40)
BotaoFechar.Position = UDim2.new(0, 410, 0, 10)
BotaoFechar.BackgroundColor3 = Color3.fromRGB(0, 255, 215)
BotaoFechar.Parent = audioFrame
FecharCorner = Instance.new("UICorner")
FecharCorner.CornerRadius = UDim.new(0, 30)
FecharCorner.Parent = BotaoFechar
FecharStroke = Instance.new("UIStroke")
FecharStroke.Thickness = 3
FecharStroke.Color = Color3.fromRGB(0, 0, 0)
FecharStroke.Parent = BotaoFechar
XTexto = Instance.new("TextLabel")
XTexto.Size = UDim2.new(1, 0, 1, 0)
XTexto.Position = UDim2.new(0, 0, 0, - 1)
XTexto.BackgroundTransparency = 1
XTexto.Text = "X"
XTexto.TextColor3 = Color3.fromRGB(0, 0, 255)
XTexto.TextSize = 20
XTexto.Parent = BotaoFechar
Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 30)
Corner.Parent = audioFrame
Stroke = Instance.new("UIStroke")
Stroke.Thickness = 3
Stroke.Color = Color3.fromRGB(255, 255, 255)
Stroke.Parent = audioFrame
Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 20)
Corner.Parent = Link
Stroke = Instance.new("UIStroke")
Stroke.Thickness = 3
Stroke.Color = Color3.fromRGB(64, 64, 64)
Stroke.Parent = Link
Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 30)
Corner.Parent = BotaoApagar
Stroke = Instance.new("UIStroke")
Stroke.Thickness = 3
Stroke.Color = Color3.fromRGB(0, 0, 0)
Stroke.Parent = BotaoApagar
Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 30)
Corner.Parent = BotaoPlay
Stroke = Instance.new("UIStroke")
Stroke.Thickness = 4
Stroke.Color = Color3.fromRGB(0, 0, 0)
Stroke.Parent = BotaoPlay
Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 30)
Corner.Parent = MenuFrame
Stroke = Instance.new("UIStroke")
Stroke.Thickness = 3
Stroke.Color = Color3.fromRGB(0, 0, 0)
Stroke.Parent = MenuFrame
JanelaFlutuante = Instance.new("ImageButton")
JanelaFlutuante.Size = UDim2.new(0, 50, 0, 50)
JanelaFlutuante.Position = UDim2.new(0.04, 1, 0, 0)
JanelaFlutuante.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
JanelaFlutuante.Parent = GitGui
JanelaFlutuante.Draggable = true
JanelaFlutuante.Active = true
JanelaFlutuante.Visible = false
local v1 = Instance.new("ImageLabel")
v1.Size = UDim2.new(1, 0, 1, 0)
v1.Position = UDim2.new(0, 0, 0, 0)
v1.BackgroundTransparency = 1
v1.Image = "rbxassetid://129092587880302"
v1.ImageRectSize = Vector2.new(512, 512)
v1.Parent = JanelaFlutuante
JanelaCorner = Instance.new("UICorner")
JanelaCorner.CornerRadius = UDim.new(0, 30)
JanelaCorner.Parent = JanelaFlutuante
JanelaStroke = Instance.new("UIStroke")
JanelaStroke.Thickness = 3
JanelaStroke.Color = Color3.fromRGB(0, 255, 215)
JanelaStroke.Parent = JanelaFlutuante
function Noti(p2, p3, p4)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = p2,
        Text = p3,
        Icon = "rbxassetid://135163974343523",
        Duration = p4
    })
end
Noti("Welcome", "Script created by @Termux_404", 10)
JanelaFlutuante.MouseButton1Click:Connect(function()
    audioFrame.Visible = true
    JanelaFlutuante.Visible = false
end)
BotaoFechar.MouseButton1Click:Connect(function()
    audioFrame.Visible = false
    wait(0.2)
    JanelaFlutuante.Visible = true
end)
BotaoApagar.MouseButton1Click:Connect(function()
    UrlBox.Text = ""
end)
local vu5 = "https://github.com/Dan41/Scripts/raw/refs/heads/main/Jake%20Daniels%20-%20Two%20Face%20(Omido%20Remix).mp3"
local vu6 = getcustomasset or getsynasset
local vu7 = vu5:match("([^/]+)$")
local vu8 = 0
local vu9 = nil
local function vu10()
    if vu9 and vu9.IsPlaying then
        vu9:Stop()
        Noti("INFO", "Audio stopped.", 5)
    end
end
local function vu17()
    local v11 = tick()
    if v11 - vu8 < 1 then
        Noti("INFO", "Wait for 1 seconds before trying again.", 5)
    else
        if pcall(function()
            return readfile(vu7) ~= nil
        end) then
            Noti("INFO", "File already exists, playing audio.", 5)
        else
            local v12, vu13 = pcall(function()
                return game:HttpGet(vu5)
            end)
            if not v12 or (not vu13 or vu13 == "") then
                Noti("INFO", "Download Failed: Could not retrieve data", 5)
                return
            end
            local v14, v15 = pcall(function()
                writefile(vu7, vu13)
            end)
            if not v14 then
                Noti("INFO", "Download Failed: " .. v15, 5)
                return
            end
            Noti("INFO", "Download success", 5)
        end
        if vu9 and vu9.IsPlaying then
            vu10()
        end
        local v16 = Instance.new("Sound")
        v16.SoundId = vu6(vu7)
        v16.Volume = 1
        v16.Looped = true
        v16.Parent = game:GetService("SoundService")
        v16:Play()
        vu9 = v16
        vu8 = v11
    end
end
UrlBox.FocusLost:Connect(function()
    local v18 = UrlBox.Text:gsub("[%s%z\239\191\189-\239\191\189]", "")
    UrlBox.Text = v18
    vu5 = v18
    vu7 = vu5:match("([^/]+)$")
end)
local vu19 = false
BotaoPlay.MouseButton1Click:Connect(function()
    if vu19 then
        BotaoPlay.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        TextoPlay.TextColor3 = Color3.fromRGB(0, 255, 0)
        TextoPlay.Text = "PLAY"
        vu10()
    else
        BotaoPlay.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        TextoPlay.TextColor3 = Color3.fromRGB(255, 0, 0)
        TextoPlay.Text = "STOP"
        vu17()
    end
    vu19 = not vu19
end)
local v20 = {
    "rbxassetid://120433703592606",
    "rbxassetid://117755734745491",
    "rbxassetid://113902409735451"
}
while true do
    local v21, v22, v23 = ipairs(v20)
    while true do
        local v24
        v23, v24 = v21(v22, v23)
        if v23 == nil then
            break
        end
        TitleDisplay.Image = v24
        wait(0.5)
    end
end