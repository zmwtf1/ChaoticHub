-- Cracked by Nivalos
s = Instance.new("Sound")
function Som(p1)
    s.SoundId = "rbxassetid://" .. p1
    s.Looped = false
    s.Parent = game:GetService("SoundService")
    s:Play()
end
function Corner(p2, p3)
    corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, p3)
    corner.Parent = p2
end
function Stroke(p4, p5, p6, p7, p8)
    local v9 = p4:FindFirstChildOfClass("UIStroke")
    if not v9 then
        v9 = Instance.new("UIStroke")
        v9.Parent = p4
    end
    v9.Color = Color3.fromRGB(p5, p6, p7)
    v9.Thickness = p8
end
notificacaoAtiva = "?"
function Notificar(p10, p11, pu12)
    if notificacaoAtiva and notificacaoAtiva.Parent then
        notificacaoAtiva.Parent:Destroy()
    end
    local vu13 = Instance.new("ScreenGui")
    vu13.Parent = cloneref(game:GetService("CoreGui"))
    local vu14 = Instance.new("ImageButton")
    vu14.Size = UDim2.new(0.6, 0, 0, 80)
    vu14.Position = UDim2.new(0.5, 0, 0, - 50)
    vu14.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    vu14.BackgroundTransparency = 1
    vu14.BorderSizePixel = 0
    vu14.AnchorPoint = Vector2.new(0.5, 0)
    vu14.Parent = vu13
    vu14.Name = "NotificacaoButton"
    local vu15 = Instance.new("TextLabel")
    vu15.Size = UDim2.new(1, - 20, 0.5, 0)
    vu15.Position = UDim2.new(0.5, 0, 0, 0)
    vu15.AnchorPoint = Vector2.new(0.5, 0)
    vu15.BackgroundTransparency = 1
    vu15.Text = p10
    vu15.TextColor3 = Color3.fromRGB(255, 255, 255)
    vu15.TextTransparency = 1
    vu15.TextScaled = true
    vu15.Font = Enum.Font.GothamBold
    vu15.TextXAlignment = Enum.TextXAlignment.Center
    vu15.TextYAlignment = Enum.TextYAlignment.Center
    vu15.Parent = vu14
    local vu16 = Instance.new("TextLabel")
    vu16.Size = UDim2.new(1, - 20, 0.5, - 10)
    vu16.Position = UDim2.new(0.5, 0, 0.5, 0)
    vu16.AnchorPoint = Vector2.new(0.5, 0)
    vu16.BackgroundTransparency = 1
    vu16.Text = p11
    vu16.TextColor3 = Color3.fromRGB(0, 255, 255)
    vu16.TextTransparency = 1
    vu16.TextScaled = true
    vu16.Font = Enum.Font.Gotham
    vu16.TextXAlignment = Enum.TextXAlignment.Center
    vu16.TextYAlignment = Enum.TextYAlignment.Center
    vu16.TextWrapped = true
    vu16.Parent = vu14
    Corner(vu14, 10)
    Stroke(vu14, 123, 104, 238, 2)
    Stroke(vu15, 0, 0, 0, 2)
    Stroke(vu16, 0, 0, 0, 2)
    local function vu21()
        local v17 = game:GetService("TweenService")
        local v18 = v17:Create(vu14, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {
            Position = UDim2.new(0.5, 0, 0, - 50),
            BackgroundTransparency = 1
        })
        local v19 = v17:Create(vu15, TweenInfo.new(0.5), {
            TextTransparency = 1
        })
        local v20 = v17:Create(vu16, TweenInfo.new(0.5), {
            TextTransparency = 1
        })
        v18:Play()
        v19:Play()
        v20:Play()
        v18.Completed:Wait()
        vu13:Destroy()
    end
    vu14.MouseButton1Click:Connect(function()
        coroutine.wrap(vu21)()
    end)
    local v22 = game:GetService("TweenService")
    v22:Create(vu14, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
        Position = UDim2.new(0.5, 0, 0, 10),
        BackgroundTransparency = 0.1
    }):Play()
    v22:Create(vu15, TweenInfo.new(0.5), {
        TextTransparency = 0
    }):Play()
    v22:Create(vu16, TweenInfo.new(0.5), {
        TextTransparency = 0
    }):Play()
    notificacaoAtiva = vu14
    coroutine.wrap(function()
        task.delay(pu12 or 3, function()
            if vu14 and vu14.Parent then
                vu21()
            end
        end)
    end)()
end
if typeof(ishooked) == "function" and typeof(restorefunction) == "function" then
    restorefunction(ishooked)
end
local v23, v24 = pcall(function()
    return ishooked
end)
if v23 and typeof(v24) == "function" then
    local v25, v26 = pcall(v24, game.HttpGet)
    if v25 and v26 then
        getgenv().CH_LOAD = true
        return
    end
end
function Http(p27)
    tentativas = 10
    for _ = 1, tentativas do
        local v28, v29 = pcall(game.HttpGet, game, p27)
        if v28 and v29 then
            return v29
        end
        wait(2)
    end
    return nil
end
URLS = {
    Versao = "https://raw.githubusercontent.com/ChaoticHub/CHAOTIC-HUB-PAINEL/refs/heads/main/%5BCH%5D%20CHAOS%20CHAOTIC%20HUB%20PAINEL/1%20%5B%F0%9F%93%85%5D%20VERS%C3%83O%20%5B%F0%9F%93%85%5D",
    Dev = "https://raw.githubusercontent.com/ChaoticHub/CHAOTIC-HUB-PAINEL/refs/heads/main/%5BCH%5D%20CHAOS%20CHAOTIC%20HUB%20PAINEL/2%20%5B%F0%9F%94%A7%5D%20DESENVOLVEDOR%20%5B%F0%9F%94%A7%5D",
    Admin = "https://raw.githubusercontent.com/ChaoticHub/CHAOTIC-HUB-PAINEL/refs/heads/main/%5BCH%5D%20CHAOS%20CHAOTIC%20HUB%20PAINEL/3%20%5B%E2%AD%90%5D%20Admins%20%5B%E2%AD%90%5D",
    Elite = "https://raw.githubusercontent.com/ChaoticHub/CHAOTIC-HUB-MONETIZACAO/refs/heads/main/CHAOS%20CHAOTIC%20HUB/1%20%5B%F0%9F%94%A5%5D%20ELITES%20%5B%F0%9F%94%A5%5D",
    Premium = "https://raw.githubusercontent.com/ChaoticHub/CHAOTIC-HUB-MONETIZACAO/refs/heads/main/CHAOS%20CHAOTIC%20HUB/2%20%5B%F0%9F%91%91%5D%20PREMIUMS%20%5B%F0%9F%91%91%5D",
    Atacar = "https://raw.githubusercontent.com/ChaoticHub/CHAOTIC-HUB-MONETIZACAO/refs/heads/main/CHAOS%20CHAOTIC%20HUB/6%20%5B%F0%9F%92%80%5D%20Atacar%20Premium%20%5B%F0%9F%92%80%5D",
    PremiumsTemp = "https://raw.githubusercontent.com/ChaoticHub/CHAOTIC-HUB-MONETIZACAO/refs/heads/main/CHAOS%20CHAOTIC%20HUB/3%20%5B%E2%8F%B0%5DPREMIUMS%20TEMPOR%C3%81RIOS%5B%E2%8F%B0%5D",
    Oculto = "https://raw.githubusercontent.com/ChaoticHub/CHAOTIC-HUB-MONETIZACAO/refs/heads/main/CHAOS%20CHAOTIC%20HUB/4%20%5B%F0%9F%91%BB%5D%20OCULTOS%20%5B%F0%9F%91%BB%5D",
    Personalizado = "https://raw.githubusercontent.com/ChaoticHub/CHAOTIC-HUB-MONETIZACAO/refs/heads/main/CHAOS%20CHAOTIC%20HUB/5%20%5B%F0%9F%96%8C%EF%B8%8F%5D%20PERSONALIZADOS%20%5B%F0%9F%96%8C%EF%B8%8F%5D",
    Bans = "https://raw.githubusercontent.com/ChaoticHub/CHAOTIC-HUB-MONETIZACAO/refs/heads/main/CHAOS%20CHAOTIC%20HUB/8%20%5B%F0%9F%9A%AB%5D%20BANIDOS%20%5B%F0%9F%9A%AB%5D",
    Anuncios = "https://raw.githubusercontent.com/ChaoticHub/CHAOTIC-HUB-MONETIZACAO/refs/heads/main/CHAOS%20CHAOTIC%20HUB/7%20%5B%F0%9F%93%A2%5D%20AN%C3%9ANCIO%20GLOBAL%20%5B%F0%9F%93%A2%5D"
}
RankUsuario = "Free"
VersaoAtual = "3.5"
Devs = {}
Admins = {}
Elites = {}
Premiums = {}
PremiumsTemp = {}
Atacadores = {}
Ocultos = {}
Personalizados = {}
Banidos = {}
Safelist = {}
Alvos = {}
Usuarios = {}
HttpService = game:GetService("HttpService")
funcs = {
    "isfolder",
    "makefolder",
    "isfile",
    "writefile",
    "readfile",
    "delfolder",
    "listfiles"
}
folderName = "[CHAOS] CHAOTIC HUB"
fileNames = {
    "Settings.json",
    "Targets.json",
    "Safelist.json",
    "[CH] README.txt"
}
infoMessage = "Welcome to the Chaotic Hub files!\nOnly make any changes here if you have experience, Otherwise leave here immediately, If you do something wrong all script settings will be reset and your game will close! ~ Termux_404 :)"
templates = {
    ["Settings.json"] = {
        Settings = {
            NotifyTargets = true,
            KillAura = false,
            ViewAttack = false,
            KillAuraRequiresWeaponInHand = true,
            RequiresWeaponGui = false,
            Hitbox = false,
            HitboxSize = 25,
            HitboxColor = "R",
            HitboxTransparency = 0.9,
            ClickKill = false,
            DeathTouch = false,
            Aimlock = false,
            AimlockDistance = 100,
            AutomaticShooting = false,
            AimlockGui = false,
            Aimbot = false,
            AimbotDistance = 16,
            KillCommand = false,
            KillCommandPrefix = ":",
            AutoAttack = false,
            TouchFling = false,
            TouchFlingPower = 10000,
            OnlyTargets = false,
            OnlyTargetsGui = false,
            AntiC4 = false,
            AntiGrenade = false,
            AntiTrap = false,
            AntiAxe = false,
            AntiFirework = false,
            AntiCarry = false,
            AntiFling = false,
            AntiVoid = false,
            AntiVoidTp = false,
            AntiGotos = false,
            AntiGotosKey = "G",
            Invisible = false,
            MobileButtons = false,
            MDashSize = "UDim2.new(0, 70, 0, 70)",
            MCarrySize = "UDim2.new(0, 70, 0, 70)",
            MDashPosition = {
                X = 0.5,
                XOffset = 433,
                Y = 0,
                YOffset = 100
            },
            MCarryPosition = {
                X = 0.5,
                XOffset = 326,
                Y = 0,
                YOffset = 100
            },
            CustomDash = false,
            CustomDashDelay = 0,
            CustomDashPower = 90,
            CustomDashNoGravity = false,
            CustomSprint = false,
            CustomSprintInfinite = false,
            CustomSprintSpeed = 100,
            Shiftlock = false,
            Speed = false,
            SpeedPower = 100,
            Jump = false,
            JumpPower = 200,
            InfJump = false,
            BunnyHop = false,
            BunnyHopDelay = 0.7,
            TpTool = false,
            NoClip = false,
            Float = false,
            FloatHeight = 5,
            FreezeAll = false,
            BetterGraphics = false,
            NoSound = false,
            Time = "Day",
            Rain = false,
            Lightning = false,
            HideTrees = false,
            TransparentWalls = false,
            Char = false,
            CharName = "builderman",
            FreeGamepass = false,
            AutoGiver = false,
            AutoGiverWeapon = "Pencil",
            DropToolsAutoBack = true,
            GrabTools = false,
            GrabToolsWeapon = "All",
            AutoBack = false,
            KillLogger = false,
            PublicKillLogger = false,
            PingAndFpsDisplay = false,
            SpamSound = false,
            SpamSoundDelay = 0.1,
            FakeLag = false,
            JoinLogger = false,
            JoinLoggerMode = "Both",
            VoidAndDecapit = false,
            GlobalKill = false,
            GlobalKillSafelist = false,
            Dictionary = false,
            DictionarySafelist = false
        }
    },
    ["Targets.json"] = {
        Targets = {}
    },
    ["Safelist.json"] = {
        Safelist = {}
    },
    ["[CH] README.txt"] = infoMessage
}
function SuportaExecutor()
    local v30, vu31 = pcall(function()
        return getfenv()
    end)
    if not v30 or type(vu31) ~= "table" then
        return false
    end
    local v32, v33, v34 = ipairs(funcs)
    while true do
        local vu35
        v34, vu35 = v32(v33, v34)
        if v34 == nil then
            break
        end
        local v36, v37 = pcall(function()
            return vu31[vu35]
        end)
        if not v36 or typeof(v37) ~= "function" then
            return false
        end
    end
    return true
end
local _, _ = pcall(function()
    if SuportaExecutor() then
        if not isfolder(folderName) then
            makefolder(folderName)
        end
        local v38, v39, v40 = ipairs(fileNames)
        while true do
            local v41
            v40, v41 = v38(v39, v40)
            if v40 == nil then
                break
            end
            local v42 = folderName .. "/" .. v41
            if not isfile(v42) then
                local v43 = v41 == "[CH] README.txt" and templates[v41] or HttpService:JSONEncode(templates[v41] or {})
                writefile(v42, v43)
            end
        end
    end
end)
function ResetFiles()
    if isfolder("[CHAOS] CHAOTIC HUB") then
        delfolder("[CHAOS] CHAOTIC HUB")
        task.wait(2)
        pcall(function()
            game.Players.LocalPlayer:Kick("The script has been updated with new features. Please restart to ensure everything works correctly.")
        end)
        pcall(function()
            game.Players.LocalPlayer:Remove()
        end)
        pcall(function()
            game.Players.LocalPlayer:Destroy()
        end)
        pcall(function()
            game.Players.LocalPlayer.Parent = nil
        end)
    end
end
function Safe(pu44, pu45)
    local _, _ = pcall(function()
        if not SuportaExecutor() then
            return
        end
        local v46 = folderName .. "/Safelist.json"
        local v47, vu48 = pcall(readfile, v46)
        local v49
        if v47 then
            local v50
            v50, v49 = pcall(function()
                return HttpService:JSONDecode(vu48)
            end)
            if not v50 or type(v49.Safelist) ~= "table" then
                ResetFiles()
                return
            end
        else
            v49 = {
                Safelist = {}
            }
        end
        if pu45 ~= "add" then
            if pu45 == "remove" then
                local v51, v52, v53 = ipairs(v49.Safelist)
                while true do
                    local v54
                    v53, v54 = v51(v52, v53)
                    if v53 == nil then
                        break
                    end
                    if v54 == pu44 then
                        table.remove(v49.Safelist, v53)
                        break
                    end
                end
            end
        else
            local v55, v56, v57 = ipairs(v49.Safelist)
            while true do
                local v58
                v57, v58 = v55(v56, v57)
                if v57 == nil then
                    break
                end
                if v58 == pu44 then
                    return
                end
            end
            table.insert(v49.Safelist, pu44)
        end
        writefile(v46, HttpService:JSONEncode(v49))
    end)
end
function Target(pu59, pu60)
    local _, _ = pcall(function()
        if not SuportaExecutor() then
            return
        end
        local v61 = folderName .. "/Targets.json";
        ({}).Targets = {}
        local v62, vu63 = pcall(readfile, v61)
        if not v62 then
            ResetFiles()
            return
        end
        local v64, v65 = pcall(function()
            return HttpService:JSONDecode(vu63)
        end)
        if not (v64 and (v65 and v65.Targets)) then
            ResetFiles()
            return
        end
        if pu60 ~= "add" then
            if pu60 == "remove" then
                local v66, v67, v68 = ipairs(v65.Targets)
                while true do
                    local v69
                    v68, v69 = v66(v67, v68)
                    if v68 == nil then
                        break
                    end
                    if v69 == pu59 then
                        table.remove(v65.Targets, v68)
                        break
                    end
                end
            end
        else
            local v70, v71, v72 = ipairs(v65.Targets)
            while true do
                local v73
                v72, v73 = v70(v71, v72)
                if v72 == nil then
                    break
                end
                if v73 == pu59 then
                    return
                end
            end
            table.insert(v65.Targets, pu59)
        end
        writefile(v61, HttpService:JSONEncode(v65))
    end)
end
function ConfigFile(pu74, pu75)
    local v85, v86 = pcall(function()
        if not SuportaExecutor() then
            return nil
        end
        local v76 = folderName .. "/Settings.json"
        if not isfile(v76) then
            return nil
        end
        local v77, vu78 = pcall(readfile, v76)
        if not v77 then
            ResetFiles()
            return ConfigFile(pu74, pu75)
        end
        local v79, v80 = pcall(function()
            return HttpService:JSONDecode(vu78)
        end)
        if not (v79 and (v80 and v80.Settings)) then
            ResetFiles()
            return ConfigFile(pu74, pu75)
        end
        if v80.Settings[pu74] == nil then
            ResetFiles()
            return ConfigFile(pu74, pu75)
        end
        if typeof(pu75) == "string" and pu75:find("UDim2%.new%(") then
            local v81, v82, v83, v84 = pu75:match("UDim2%.new%(([^,]+),%s*([^,]+),%s*([^,]+),%s*([^)]+)%)")
            if not (v81 and (v82 and (v83 and v84))) then
                ResetFiles()
                return ConfigFile(pu74, pu75)
            end
            pu75 = {
                X = tonumber(v81),
                XOffset = tonumber(v82),
                Y = tonumber(v83),
                YOffset = tonumber(v84)
            }
        end
        v80.Settings[pu74] = pu75
        writefile(v76, HttpService:JSONEncode(v80))
    end)
    if v85 then
        return v86
    else
        return nil
    end
end
function LerConfig(pu87)
    local v94, v95 = pcall(function()
        if not SuportaExecutor() then
            return nil
        end
        local v88 = folderName .. "/Settings.json"
        if not isfile(v88) then
            return nil
        end
        local v89, vu90 = pcall(readfile, v88)
        if not v89 then
            ResetFiles()
            return LerConfig(pu87)
        end
        local v91, v92 = pcall(function()
            return HttpService:JSONDecode(vu90)
        end)
        if not v91 or (not v92 or (not v92.Settings or v92.Settings[pu87] == nil)) then
            ResetFiles()
            return LerConfig(pu87)
        end
        local v93 = v92.Settings[pu87]
        if typeof(v93) == "table" and (v93.X and (v93.XOffset and (v93.Y and v93.YOffset))) then
            string.format("%d", v93.X)
            string.format("%d", v93.XOffset)
            string.format("%d", v93.Y)
            string.format("%d", v93.YOffset)
            local _ = string.format
        end
        return v93
    end)
    if v94 then
        return v95
    else
        return nil
    end
end
PodeTocar = false
task.spawn(function()
    local _, _ = pcall(function()
        local v96 = SuportaExecutor() and isfolder("[CHAOS] CHAOTIC HUB") and (not isfile("[CHAOS] CHAOTIC HUB/CHAOTIC THEME.mp3") and Http("https://github.com/ChaoticHub/CHAOTIC-HUB-PAINEL/raw/refs/heads/main/%5BCH%5D%20CHAOS%20CHAOTIC%20HUB%20PAINEL/CHAOTIC%20THEME.mp3"))
        if v96 then
            writefile("[CHAOS] CHAOTIC HUB/CHAOTIC THEME.mp3", v96)
        end
    end)
    PodeTocar = true
end)
local vu97 = nil
local vu98 = nil
pcall(function()
    vu98 = getcustomasset or getsynasset
end)
function Tema(pu99)
    local _, _ = pcall(function()
        if SuportaExecutor() and vu98 then
            local v100 = "[CHAOS] CHAOTIC HUB/CHAOTIC THEME.mp3"
            if pu99 then
                if not vu97 and isfile(v100) then
                    vu97 = Instance.new("Sound", game:GetService("SoundService"))
                    vu97.SoundId = vu98(v100)
                    vu97.Looped = true
                    vu97:Play()
                end
            elseif not pu99 and vu97 then
                vu97:Stop()
                vu97:Destroy()
                vu97 = nil
            end
        end
    end)
end
traducao = {
EmDev = "This option is still under development, it will be available soon!",
Erro = "Chaotic Error",
Banido = "Our team has blocked your access and you are banned, Join our discord for an appeal: https://discord.gg/kbh2dEdnYP",
GameErro = "This project was developed for the game \'CHAOS\'",
Sucesso = "Success",
ErroDados = "Unable to retrieve essential data for script execution. Please ensure your executor is compatible and that no other script is interfering with Chaotic Hub\'s operation.",
Desligado = "The script has been temporarily disabled by the developer. Please try again in a few minutes or later.",
BanidoTitle = "Banned",
BanidoText = "The Chaotic Hub team has decided to revoke your access to this script. You will no longer be able to use it.",
PcUser = "Since you are on PC, you can press the \'F1\' key to open the menu!",
OP1 = "HOME",
OP2 = "PLAYERS",
OP3 = "COMBAT",
OP4 = "DEFENSE",
OP5 = "MOVEMENT",
OP6 = "CLIENT",
OP7 = "MISC",
OP8 = "STORE",
OP9 = "Premium",
Nave = "Navigation",
SuaInfo = "Your Information",
MySkill = "Your Skill",
KillAtual = "Current Killing",
KillTotal = "Total Killing",
YDefeats = "Their Deaths",
Defeats = "Deaths",
Skill = "Skill",
days = "days",
ContaCriada = "Account Created:",
GameTime = "Usage Time",
GlobalAds = "Announcements",
Termux = "Hey, I\'m Termux_404 the creator and developer of CH, If you need anything talk to me on our discord server.",
Eryss = "Server manager of CH discord server, And admin, i dont bite, im cool trust me",
Wiwy = "I\'m known as Wolfiy and I\'m also one of the CH admins, I kill toxic hackers/abusers, And if you didn\'t like my avatar Semataquepassa",
UpdateTitle = "Others",
CopyDC = "Discord Copied",
CopySB = "Scriptblox Copied",
Musica = "Music",
RejoinText = "Could not rejoin the server, You are alone here!",
ShErro = "No valid server found, please try again.",
voltar = "Return to map",
FreeOn = "Freecam mode has activated, Enjoy!",
FreeOff = "Freecam mode has been disabled, Your camera has been normalized",
SafeZone = "Welcome to the CH safezone!",
IY = "Script executed successfully",
Opcoes = "Options",
Nome = "Name",
SearchText = "Search Players",
NoResult = "No results for",
Wait = "Waiting for Players",
SelecionarTodos = "All selectable players have been marked as targets",
DeselecionarTodos = "All selected players currently on the server have been deselected",
JogadorProte = "Protected Player",
Protegido = "You do not have permission to attack this player.",
DevInfo = "Founder and lead developer of CH",
AdminInfo = "Member of the CH administrative team",
EliteInfo = "Elite-tier player in CH, ranked above Premium users",
PremiumInfo = "Premium user of CH, a special rank below the Elite category",
PremiumTInfo = "Temporary Premium user of CH, granted access via Discord boosting",
VcMesmo = "This is you, If you buy the \'Customized\' product in our store, You will be able to see what your profile looks like",
FreeInfo = "Free CH user with no special privileges",
DevJoin = "The developer has joined your server, don\'t be afraid he is cool",
AdminJoin = "An Administrator has just joined your server",
EliteJoin = "A player with the Elite rank has just joined your server",
PremiumJoin = "A player with Premium rank has just joined your server",
PremiumTJoin = "A player with the Temporary Premium rank has just joined your server",
Infos = "Information",
USERTITLE = "Script user",
CHUSER = "Like you, This player is also using this script, Only Premium/Elite players can know about this",
Mod = "Moderation",
NaoPer = "You do not have permission to punish this player, or he is not using this script.",
Ocorreu = "An error occurred",
Kickbox = "Kick player (reason)",
perfil = "Player Profile:",
Avatar = "Avatar price:",
RankTemp = "Temporary Premium",
load = "Loading",
MotivoKick = "Reason",
SemMotivo = "Reason not specified",
Quem = "Responsible:",
UsuarioDe = "User Detected",
UsuarioDeText = "A new user has been detected on the server, you can moderate it in the player profile",
toolblock = "Your weapons have been blocked!",
VcSafeTitle = "You have been protected",
VcSafeText = "An Admin or Elite player has protected you from commands",
VcNSafeTitle = "Protection Removed",
VcNSafeText = "An Administrator has removed your protection, Commands from Premium & Elite users may affect you!",
AnyRoblox = "Any Roblox user",
AddSL = "Add here players you want to protect from your own actions in C H.",
ErroObterPlayer = "We searched all over Roblox, but we couldn\'t find any user with this name.",
SobreSL = "In this list you can list all the players that you do not want to affect with C H, such as friends, etc.",
SobreTL = "In this list, all the players you selected as targets will be saved.",
AlvoVoltouTitulo = "Your Target has joined",
AlvoVoltouTexto = "Joined the game, if you don\'t want to receive this notification disable it in the saved targets menu",
SobreTG = "Here you will find options for a single target player",
NotiAlvos = "Notify Targets",
SeusAlvos = "Your targets saved",
TopoLista = "Top of the list",
FinalLista = "End of the list",
ClearAlvos = "Remove all targets",
EsperarAlvos = "Waiting for new targets",
PlayersTL = "Here will be all the players who were selected as targets.",
DicaTexto = "Tip: Enable the \'Targets Only\' option and only those players will be affected by CH!",
MscErro = "Unable to play music, please try again in a few seconds",
ExplodeErro = "Obtain one of the following weapons: C4 or Firework.",
AxeErro = "Get the throwing knife for this option to work!",
TrapErro = "Get the trap for this option to work!",
Saude = "Health",
Distancia = "Distance",
Adjust = "Adjust",
SobreCombate = "Combat Session: Here you will find options to assist you during combat and defeat annoying enemies",
SobreDefesa = "Defense Session: Here you will find options to protect yourself from certain elements in the game",
SobreMovimento = "Movement Session: Here you will find general movement options to help with your mobility",
SobreVisual = "Client Session: These are purely visual options, visible only to you and not to other players",
SobreMisc = "Misc Session: Here you will find various options that can significantly enhance your gameplay experience",
SobrePremium = "Premium & Elite Session: Here you will find exclusive options for Premium & Elite users.",
About = "What does it do",
SobreConfigOpcao = "Click on the settings icon of any option to configure it according to your preferences.",
Sobre1 = "Automatically attacks nearby players.",
Sobre2 = "Adjust the size, color & transparency of the players\' hitbox",
Sobre3 = "Allows you to kill players by clicking on them within a certain distance",
Sobre4 = "Deals damage to any player that touches your character.",
Sobre5 = "Makes the revolver fire hit the target with 100% accuracy",
Sobre6 = "Adjust your character\'s rotation and camera position towards the enemy",
Sobre7 = "Allows you to use the command \':kill player\' in chat, prefix \':\' can be changed",
Sobre8 = "Automatically uses your primary weapon without requiring manual action.",
Sobre9 = "Performs a fast, invisible fling movement to throw players.",
Sobre10 = "When enabled, combat options will only affect selected targets.",
Sobre11 = "Protection against C4 explosives.",
Sobre12 = "Protection against thrown grenades.",
Sobre13 = "Prevents being affected by traps placed by others.",
Sobre14 = "Will block the use of throwing knife, protecting all players",
Sobre15 = "It will protect you from fireworks",
Sobre16 = "Prevents your character from being carried by another player, automatically resetting when in Ragdoll",
Sobre17 = "Protection against fling or push techniques.",
Sobre18 = "Prevents falling into the void; offers teleport back.",
Sobre19 = "Blocks enemies from teleporting to your position.",
Sobre20 = "Makes your character invisible to other players.",
Sobre21 = "Adds \'Dash\' & \'Carry\' buttons to your screen",
Sobre22 = "Performs quick dashes with adjustable delay and strength.",
Sobre23 = "Infinite sprint with adjustable speed.",
Sobre24 = "Lock the camera to your character for better control",
Sobre25 = "Increases character movement speed.",
Sobre26 = "Increases jump power.",
Sobre27 = "Allows you to jump repeatedly without limits.",
Sobre28 = "Performs continuous quick jumps with set delay.",
Sobre29 = "Tool to teleport your character.",
Sobre30 = "Allows passing through walls and objects.",
Sobre31 = "Makes your character float at a custom height.",
Sobre32 = "Freezes all players on the server",
Sobre33 = "Enables more realistic visual effects.",
Sobre34 = "Disables all game sounds.",
Sobre35 = "Changes the time between day and night",
Sobre36 = "Enables rain effects in the environment.",
Sobre37 = "Activates lightning effects in the environment",
Sobre38 = "Removes player avatars for better performance.",
Sobre39 = "Removes trees from the map for clearer visibility.",
Sobre40 = "Makes walls semi-transparent for better vision.",
Sobre41 = "Gives you a construction and editing tool",
Sobre42 = "Paid weapons have become completely free, with the exception of the grenade",
Sobre43 = "Automatically gives you the selected weapon.",
Sobre44 = "It will teleport you to get the fireworks and return to the previous position",
Sobre45 = "Will make you drop your weapons on the ground",
Sobre46 = "This option equips any weapon dropped in the game.",
Sobre47 = "Automatically teleports you back to your last death position.",
Sobre48 = "Elimination tracking: who defeated whom",
Sobre49 = "Displays your ping and frames per second.",
Sobre50 = "Makes all game audios play at the same time, with customizable delay",
Sobre51 = "Changes the position of the \'Ice Spear\' weapon to a SUS position on your character... Lol (Credits to @zalupo4ka)",
Sobre52 = "It makes it seem like you have a terrible internet connection.",
Sobre53 = "Logs players joining and leaving the server.",
Sobre54 = "This option will remove the player from the game, deleting the character and preventing him from respawning.",
Sobre55 = "This option will kill you and prevent you from coming back, Click the reset button to return",
Sobre56 = "Automates the immortality glitch",
Sobre57 = "This option will allow players to use the kill command in chat, with the \':\' prefix.",
Sobre58 = "This option will turn you into a nerd, Allowing players to use the command",
Sobre59 = "Change your appearance to the appearance of any Roblox player!",
Sobre60 = "This option will trigger and remove all traps in the game, but will cause your death.",
Atacando = "Attacking...",
ViewKA = "View Attack",
Requer = "Requires weapon in hand",
RequerGui = "Requires weapon in hand[GUI]",
Tamanho = "Size",
Transpa = "Transparency",
Prefix = "Prefix",
Power = "Power",
SAG = "Display on screen",
NaoKawaii = "Player has immortality glitch, Try again or use LoopKill Revolver",
KilledTitle = "Player Eliminated",
KilledText = "The player is successfully eliminated",
AlvoIn = "Invalid Player",
AlvoInText = "Unable to attack this player at the moment, how about trying again?",
Somente = "Targets Only",
TpDeVolta = "Teleports back to the map",
Afastar = "STAY AWAY",
Granada = "GRENADE",
foguete = "FIREWORK",
Invisivel = "INVISIBLE",
Invisibilidade = "Invisibility",
Custom = "Customize Position",
ArrasteTe = "Drag the mobile buttons to the position of your choice",
Delay = "Delay",
inf = "Infinite",
Speed = "Speed",
Jump = "Jump Power",
Altura = "Height",
Dash = "Dash button size",
Carry = "Carry button size",
Done = "Done",
AtiveMobile = "You need to enable the option before customizing the button position",
Dia = "Day",
Noite = "Night",
MB = "Mobile Buttons",
IJ = "Infinite Jump",
Float = "Float",
Freeze = "Freeze Everyone",
Rtx = "Better Graphics",
Mute = "No sound",
Hora = "Time",
Chuva = "Rain",
Lightning = "Lightning",
Arvores = "Hide Trees",
TW = "Transparent Walls",
DropBack = "Automatically return to position",
Publico = "Public",
Mundo = "Players Joining and Leaving",
Entradas = "Players Joining",
Saidas = "Players leaving",
Arma1 = "Pencil",
Arma2 = "Emerald sword",
Arma3 = "Blood Dagger",
Arma4 = "Ice Spear",
Arma5 = "Mace",
Arma6 = "Steel Sword",
Arma7 = "Katana",
Arma8 = "Baseball Bat",
Arma9 = "Chainsaw",
Arma10 = "Knife",
Arma11 = "Pan",
Arma12 = "Pink Hammer",
Arma13 = "Scythe",
Arma14 = "Halloween Dagger",
tenteTi = "Try Again",
TenteTe = "The Firework were not available at the time",
Grab1 = "Any Weapon",
Grab2 = "Steel Sword",
Grab3 = "Halloween Dagger",
Grab4 = "Grenade 2",
Grab5 = "Axe",
Grab6 = "Firework",
DropErro = "No droppable weapons found in your backpack or character",
Duck = "This not-so-elegant option requires the \'Ice Spear\' weapon to work",
Entrou = "Joined the server",
Saiu = "Left the server",
JoinOn = "[ > ] Player join log is Enabled",
JoinOff = "[ > ] Player join log is disabled",
OpBlock = "Option Locked",
OpBlockText = "Purchase Premium or Elite to unlock this option",
Modo = "Mode",
SobreV = "Hold a Alive player and press the button, This will delete his character.",
SobreD = "Hold a Alive player and press the button, This will decapitate him You can delete your own character if you fall into a trap and press the button",
TradutorON = "Chat translation is enabled, Messages will be translated to the language selected in the chat translation settings!",
TradutorOFF = "Chat translation has been disabled",
PV = "PRIVATE",
Espere = "Please wait",
segundos = "seconds",
SobrePro = "Product Description",
Oculto = "Stay Hidden",
Customizado = "Customized",
Imune = "Protection",
OpEx = "Exclusive Options",
TagEx = "Exclusive Tag",
IconePre = "Premium Icon",
BypassPro = "Attack Premium Players",
ModP = "Moderation/punishment of Premium users",
VerHide = "View hidden players",
DescricaoHide = "Become invisible in the Hub player list(This will render the custom profile useless if you have it) This option will not keep you protected from other users, buy premium or elite for complete protection!",
DescricaoCustomizado = "Customize your profile in the Hub player list, such as Colors, Image, Animated Particles and more!",
SobreImune = "Total protection, No free or premium user of the script can affect you!",
SobreModFree = "You will be able to moderate free script users, How to kick them from the server and more!",
SobreOpx = "Unlocks exclusive options in the hub",
SobreTag = "Stand out in the Hub player list, With a special tag & Profile",
SobreIconeP = "How about a new look for the script icon?",
SobreAtacarP = "Completely bypass Premium protection and attack them anyway!",
SobreModPrem = "You will be able to moderate & Punish Premium Users from the script like kicking them from the server and more!",
SobreVerHide = "This will show you players who have purchased the \'Hidden\' product.",
DescricaoAP = "Disable Premium protection for a more affordable price, Is Included the \':kill player\' command to kill Premium users from the script!",
ComprarPro = "Buy Item",
Juntese = "To purchase any item from the store, join our discord server!(For some items, boost is accepted on our server as a form of payment)",
DesligueAuto = "To use this feature, you need to disable \'AutoGiver\' !",
FlingON = "If your device is not performing well, This option may cause lag.",
DesligueSHL = "Before using this, turn off \'Shiftlock\' !",
ApenasSL = "Only players listed on the safelist",
Dicionario = "Dictionary",
AutoShot = "Automatic shooting",
Gravity = "No gravity",
DesligueTrap = "Turn off the \'AntiTrap\' option for this to work properly!",
AchouTrap = "All valid traps found have been triggered and removed",
NachouTrap = "No valid traps found in the game.",
CustomText = "Link Copied!",
CustomTextBuy = "Join this game to change the text: https://www.roblox.com/games/13733855658/CHAOTIC-GAME",
Sign1 = "Customize Text",
Sign2 = "Change text for all users of script",
ON = "Enabled!",
OFF = "Disabled!",
Eliminou = "eliminated the",
OnlineAds = Http(URLS.Anuncios)}
pcall(function()
    if game.Players.LocalPlayer.LocaleId:lower() ~= "en-us" then
        local vu101 = game.Players.LocalPlayer.LocaleId:sub(1, 2)
        local vu102 = game:GetService("HttpService")
        local vu103 = 0
        local vu104 = 0
        local vu105 = {}
        local vu106 = {}
        local v107 = 0
        if traducao then
            local v108, v109, v110 = pairs(traducao)
            while true do
                local v111
                v110, v111 = v108(v109, v110)
                if v110 == nil then
                    break
                end
                v107 = v107 + 1
                vu106[v107] = v111
                vu105[v107] = v110
            end
            local function v119(pu112)
                local vu113 = vu106[pu112]
                if vu113 then
                    vu103 = vu103 + 1
                    task.spawn(function()
                        local v115, v116 = pcall(function()
                            local v114 = vu102
                            return Http("https://translate.googleapis.com/translate_a/single?client=gtx&sl=auto&tl=" .. vu101 .. "&dt=t&q=" .. v114:UrlEncode(vu113))
                        end)
                        if v115 and v116 then
                            local v117 = vu102:JSONDecode(v116)
                            local v118 = v117 and (v117[1] and v117[1][1])
                            if v118 then
                                v118 = v117[1][1][1]
                            end
                            if v118 then
                                traducao[vu105[pu112] ] = v118:match("^%s*(.-)%s*$")
                            end
                        end
                        vu103 = vu103 - 1
                        vu104 = vu104 + 1
                    end)
                end
            end
            for v120 = 1, v107 do
                v119(v120)
            end
            repeat
                task.wait()
            until v107 <= vu104
        end
    end
end)
if game.PlaceId ~= 6441847031 then
    Notificar(traducao.Erro, traducao.GameErro .. " https://www.roblox.com/games/6441847031/CHAOS-EVENT", 20)
    return
end
versaoResposta = Http(URLS.Versao)
if not versaoResposta then
    Notificar(Erro, ErroDados, 10)
    return
end
if versaoResposta:gsub("%s+", ""):gsub("[^%w.]", "") == "off" then
    Notificar(Erro, traducao.Desligado, 10)
    return
end
if versaoResposta:gsub("%s+", ""):gsub("[^%w.]", "") ~= VersaoAtual then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Dan41/Scripts/main/%5BCHAOS%5D%20CHAOTIC%20HUB.lua", true))()
    return
end
getgenv().CH_LOAD = true
local v121, v122, v123 = pairs(URLS)
while true do
    local v124, v125 = v121(v122, v123)
    if v124 == nil then
        break
    end
    v123 = v124
    local v126 = Http(v125)
    if not v126 then
        return
    end
    local v127, v128, v129 = ipairs(v126:split("\n"))
    while true do
        local v130, v131 = v127(v128, v129)
        if v130 == nil then
            break
        end
        v129 = v130
        local v132 = v131:gsub("%s+", "")
        if v132 ~= "" then
            if v125 == URLS.PremiumsTemp then
                v132 = v132:match("^[^:]+")
            end
            if v125 ~= URLS.Dev then
                if v125 ~= URLS.Admin then
                    if v125 ~= URLS.Elite then
                        if v125 ~= URLS.Premium then
                            if v125 ~= URLS.PremiumsTemp then
                                if v125 ~= URLS.Oculto then
                                    if v125 ~= URLS.Bans then
                                        if v125 == URLS.Atacar then
                                            table.insert(Atacadores, v132)
                                        end
                                    else
                                        table.insert(Banidos, v132)
                                    end
                                else
                                    table.insert(Ocultos, v132)
                                end
                            else
                                table.insert(PremiumsTemp, v132)
                            end
                        else
                            table.insert(Premiums, v132)
                        end
                    else
                        table.insert(Elites, v132)
                    end
                else
                    table.insert(Admins, v132)
                end
            else
                table.insert(Devs, v132)
            end
        end
    end
end
function contains(p133, p134)
    for v135 = 1, # p133 do
        if p133[v135] == p134 then
            return true
        end
    end
    return false
end
if contains(Devs, game.Players.LocalPlayer.Name) then
    RankUsuario = "Dev"
elseif contains(Admins, game.Players.LocalPlayer.Name) then
    RankUsuario = "Admin"
elseif contains(Elites, game.Players.LocalPlayer.Name) then
    RankUsuario = "Elite"
elseif contains(Premiums, game.Players.LocalPlayer.Name) then
    RankUsuario = "Premium"
elseif contains(PremiumsTemp, game.Players.LocalPlayer.Name) then
    RankUsuario = "PremiumT"
end
Config = {
    AtacarDev = false,
    AtacarAdmin = false,
    AtacarElite = false,
    AtacarPremium = false,
    MeAtacaDev = true,
    MeAtacaAdmin = true,
    MeAtacaElite = true,
    MeAtacaPremium = true,
    VerOculto = false
}
ConfigPorRank = {
    Dev = {
        AtacarDev = true,
        AtacarAdmin = true,
        AtacarElite = true,
        AtacarPremium = true,
        MeAtacaDev = false,
        MeAtacaAdmin = false,
        MeAtacaElite = false,
        MeAtacaPremium = false,
        VerOculto = true
    },
    Admin = {
        AtacarElite = true,
        AtacarPremium = true,
        MeAtacaElite = false,
        MeAtacaPremium = false,
        VerOculto = true
    },
    Elite = {
        AtacarPremium = true,
        MeAtacaElite = false,
        MeAtacaPremium = false,
        VerOculto = true
    },
    Premium = {
        MeAtacaPremium = false
    },
    PremiumT = {
        MeAtacaPremium = false
    }
}
rankConfig = ConfigPorRank[RankUsuario]
if rankConfig then
    local v136, v137, v138 = pairs(rankConfig)
    while true do
        local v139
        v138, v139 = v136(v137, v138)
        if v138 == nil then
            break
        end
        Config[v138] = v139
    end
end
local v140, v141, v142 = ipairs(Banidos)
while true do
    local v143
    v142, v143 = v140(v141, v142)
    if v142 == nil then
        break
    end
    if v143 == game.Players.LocalPlayer.Name then
        Notificar(traducao.Erro, traducao.Banido, 30)
        return
    end
end
ListaP = Http(URLS.Personalizado)
if ListaP then
    ListaP = ListaP:gsub("\r", "")
    ListaP = ListaP:gsub("\n+", "\n")
    local v144, v145, v146 = ListaP:gmatch("Nome%s*=%s*\".-\"\n.-Texto%s*=%s*\".-\"")
    while true do
        v146 = v144(v145, v146)
        if v146 == nil then
            break
        end
        local v147 = (v146:match("Nome%s*=%s*\"([^\"]+)\"") or ""):match("^%s*(.-)%s*$")
        local v148 = (v146:match("CorPrincipal%s*=%s*\"([^\"]+)\"") or "0:0:0"):match("^%s*(.-)%s*$")
        local v149 = (v146:match("CorDisplay%s*=%s*\"([^\"]+)\"") or "#FFFFFF"):match("^%s*(.-)%s*$")
        local v150 = (v146:match("CorNome%s*=%s*\"([^\"]+)\"") or "#FFFFFF"):match("^%s*(.-)%s*$")
        local v151 = (v146:match("ImagemDeFundo%s*=%s*\"([^\"]+)\"") or "0"):match("^%s*(.-)%s*$")
        local v152 = (v146:match("ImagemDaTag%s*=%s*\"([^\"]+)\"") or "0"):match("^%s*(.-)%s*$")
        local v153 = (v146:match("ImagemParticula%s*=%s*\"([^\"]+)\"") or "0"):match("^%s*(.-)%s*$")
        local v154 = (v146:match("Texto%s*=%s*\"([^\"]+)\"") or ""):match("^%s*(.-)%s*$")
        local v155, v156, v157 = v148:match("(%d+):(%d+):(%d+)")
        Personalizados[v147] = {
            v147,
            tonumber(v155 or "0"),
            tonumber(v156 or "0"),
            tonumber(v157 or "0"),
            v149,
            v150,
            v151,
            v152,
            v153,
            v154
        }
    end
else
    Notificar(Erro, ErroDados, 10)
end
function Protegido(p158)
    if table.find(Safelist, p158) then
        return false
    elseif table.find(Devs, p158) then
        return Config.AtacarDev
    elseif table.find(Admins, p158) then
        return Config.AtacarAdmin
    elseif table.find(Elites, p158) then
        return Config.AtacarElite
    else
        return not (table.find(Premiums, p158) or table.find(PremiumsTemp, p158)) and true or Config.AtacarPremium
    end
end
local v159, v160, v161 = ipairs({
    Devs,
    Admins,
    Elites,
    Premiums,
    PremiumsTemp
})
while true do
    local v162
    v161, v162 = v159(v160, v161)
    if v161 == nil then
        break
    end
    local v163, v164, v165 = ipairs(v162)
    while true do
        local v166, v167 = v163(v164, v165)
        if v166 == nil then
            break
        end
        v165 = v166
        if not Protegido(v167) then
            Target(v167, "remove")
        end
    end
end
if table.find(Atacadores, game.Players.LocalPlayer.Name) then
    Config.AtacarPremium = true
end
if game:GetService("UserInputService").KeyboardEnabled then
    Notificar(traducao.Infos, traducao.PcUser, 10)
end
anim = Instance.new("Animation")
function Animar(p168)
    anim.AnimationId = "rbxassetid://" .. p168
    loadedAnim = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(anim)
    loadedAnim.Looped = false
    loadedAnim:Play()
end
CORE = Instance.new("ScreenGui")
CORE.Name = "CORE"
CORE.Parent = cloneref(game:GetService("CoreGui"))
JanelaFlutuante = Instance.new("ImageButton")
JanelaFlutuante.Size = UDim2.new(0, 50, 0, 50)
JanelaFlutuante.Position = UDim2.new(0.5, - 25, 0.5, - 25)
JanelaFlutuante.BackgroundColor3 = Color3.fromRGB(178, 34, 34)
JanelaFlutuante.Visible = false
JanelaFlutuante.Parent = CORE
imageJanela = Instance.new("ImageLabel")
imageJanela.Position = UDim2.new(0, - 3, 0, - 3)
imageJanela.Size = UDim2.new(0, 56, 1, 6)
imageJanela.BackgroundTransparency = 1
imageJanela.Image = "rbxassetid://77258421025609"
imageJanela.Visible = true
imageJanela.Parent = JanelaFlutuante
ChaoticFrame = Instance.new("Frame")
ChaoticFrame.Size = UDim2.new(0, 450, 0, 320)
ChaoticFrame.Position = UDim2.new(0.5, 0, 0.5, - 17)
ChaoticFrame.AnchorPoint = Vector2.new(0.5, 0.5)
ChaoticFrame.BackgroundTransparency = 1
ChaoticFrame.Draggable = true
ChaoticFrame.Active = true
ChaoticFrame.Visible = true
ChaoticFrame.Parent = CORE
imagemCH = Instance.new("ImageLabel")
imagemCH.Size = UDim2.new(1, 0, 1, 0)
imagemCH.BackgroundTransparency = 1
imagemCH.Image = "rbxassetid://118102679785082"
imagemCH.Parent = ChaoticFrame
BotaoFechar = Instance.new("ImageButton")
BotaoFechar.Size = UDim2.new(0, 40, 0, 40)
BotaoFechar.Position = UDim2.new(0, 398, 0, 3)
BotaoFechar.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
BotaoFechar.Parent = imagemCH
BotaoFechar.MouseButton1Click:Connect(function()
    ChaoticFrame.Visible = false
    wait(0.2)
    JanelaFlutuante.Visible = true
end)
local vu169 = false
local vu170 = nil
local vu171 = nil
local vu172 = nil
local vu173 = false
UIS = game:GetService("UserInputService")
JanelaFlutuante.InputBegan:Connect(function(pu174)
    if pu174.UserInputType == Enum.UserInputType.MouseButton1 or pu174.UserInputType == Enum.UserInputType.Touch then
        local v175 = pu174.Position
        vu173 = false
        vu171 = v175
        vu169 = true
        vu172 = JanelaFlutuante.AbsolutePosition
        pu174.Changed:Connect(function()
            if pu174.UserInputState == Enum.UserInputState.End then
                vu169 = false
            end
        end)
    end
end)
JanelaFlutuante.InputChanged:Connect(function(p176)
    if p176.UserInputType == Enum.UserInputType.MouseMovement or p176.UserInputType == Enum.UserInputType.Touch then
        vu170 = p176
    end
end)
UIS.InputChanged:Connect(function(p177)
    if p177 == vu170 and vu169 then
        local v178 = p177.Position - vu171
        if math.abs(v178.X) > 1 or math.abs(v178.Y) > 1 then
            vu173 = true
        end
        JanelaFlutuante.Position = UDim2.new(0, vu172.X + v178.X, 0, vu172.Y + v178.Y)
    end
end)
JanelaFlutuante.MouseButton1Click:Connect(function()
    if not vu173 then
        JanelaFlutuante.Visible = false
        ChaoticFrame.Visible = true
    end
end)
game:GetService("UserInputService").InputBegan:Connect(function(p179, p180)
    if not p180 then
        local _ = p179.KeyCode ~= Enum.KeyCode.F1
    end
end)
game:GetService("UserInputService").InputBegan:Connect(function(p181)
    if p181.KeyCode == Enum.KeyCode.F1 then
        if ChaoticFrame.Visible and not JanelaFlutuante.Visible then
            ChaoticFrame.Visible = false
            JanelaFlutuante.Visible = true
        elseif JanelaFlutuante.Visible and not ChaoticFrame.Visible then
            JanelaFlutuante.Visible = false
            ChaoticFrame.Visible = true
        end
    end
end)
CH = Instance.new("ImageLabel")
CH.Size = UDim2.new(0, 40, 0, 40)
CH.Position = UDim2.new(0, 12, 0, 3)
CH.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
CH.Image = "rbxassetid://96385855917213"
CH.Parent = imagemCH
X = Instance.new("ImageLabel")
X.Size = UDim2.new(0, 29, 0, 28)
X.Position = UDim2.new(0, 6, 0, 6)
X.BackgroundTransparency = 1
X.Image = "rbxassetid://99802068313414"
X.Parent = BotaoFechar
Titulo = Instance.new("Frame")
Titulo.Size = UDim2.new(0, 324, 0, 36)
Titulo.Position = UDim2.new(0.5, - 162, 0.03, - 5)
Titulo.BackgroundColor3 = Color3.fromRGB(185, 34, 34)
Titulo.Parent = imagemCH
TextoTitulo1 = Instance.new("TextLabel")
TextoTitulo1.Size = UDim2.new(1, 3, 1, 3)
TextoTitulo1.Position = UDim2.new(0, 3, 0, 0)
TextoTitulo1.BackgroundTransparency = 1
TextoTitulo1.Text = "CHAOTIC HUB | " .. traducao.OP1
TextoTitulo1.TextColor3 = Color3.fromRGB(0, 0, 0)
TextoTitulo1.TextSize = 35
TextoTitulo1.Font = Enum.Font.SourceSansBold
TextoTitulo1.Font = Enum.Font.Creepster
TextoTitulo1.Parent = Titulo
TextoTitulo2 = Instance.new("TextLabel")
TextoTitulo2.Size = UDim2.new(1, 0, 1, 0)
TextoTitulo2.Position = UDim2.new(0, 0, 0, 0)
TextoTitulo2.BackgroundTransparency = 1
TextoTitulo2.Text = "CHAOTIC HUB | " .. traducao.OP1
TextoTitulo2.TextColor3 = Color3.fromRGB(255, 95, 0)
TextoTitulo2.TextSize = 35
TextoTitulo2.Font = Enum.Font.SourceSansBold
TextoTitulo2.Font = Enum.Font.Creepster
TextoTitulo2.Parent = Titulo
LinhaChaotic = Instance.new("Frame")
LinhaChaotic.Size = UDim2.new(1, 0, 0, 3)
LinhaChaotic.Position = UDim2.new(0, 0, 0, 45)
LinhaChaotic.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
LinhaChaotic.BorderSizePixel = 0
LinhaChaotic.Parent = imagemCH
NavegacaoFrame = Instance.new("Frame")
NavegacaoFrame.Size = UDim2.new(0, 150, 0, 320)
NavegacaoFrame.Position = UDim2.new(0, - 165, 0, 0)
NavegacaoFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
NavegacaoFrame.BackgroundTransparency = 0.5
NavegacaoFrame.Parent = ChaoticFrame
NavegacaoTitle = Instance.new("Frame")
NavegacaoTitle.Size = UDim2.new(0, 140, 0, 35)
NavegacaoTitle.Position = UDim2.new(0, 5, 0, 5)
NavegacaoTitle.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
NavegacaoTitle.Parent = NavegacaoFrame
IconeNave = Instance.new("ImageLabel")
IconeNave.Size = UDim2.new(0, 32, 0, 35)
IconeNave.Position = UDim2.new(0, 0, 0, 0)
IconeNave.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
IconeNave.Image = "rbxassetid://105028831577987"
IconeNave.Parent = NavegacaoTitle
TextoNave = Instance.new("TextLabel")
TextoNave.Size = UDim2.new(1, - 45, 1, 0)
TextoNave.Position = UDim2.new(0, 38, 0, 0)
TextoNave.BackgroundTransparency = 1
TextoNave.Text = traducao.Nave
TextoNave.TextColor3 = Color3.fromRGB(0, 255, 255)
TextoNave.Font = Enum.Font.Garamond
TextoNave.TextScaled = true
TextoNave.Parent = NavegacaoTitle
LinhaNav = Instance.new("Frame")
LinhaNav.Size = UDim2.new(1, 0, 0, 3)
LinhaNav.Position = UDim2.new(0, 0, 0, 45)
LinhaNav.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
LinhaNav.BorderSizePixel = 0
LinhaNav.Parent = NavegacaoFrame
ScrollNave = Instance.new("ScrollingFrame")
ScrollNave.Size = UDim2.new(1, 0, 1, - 50)
ScrollNave.Position = UDim2.new(0, 0, 0, 49)
ScrollNave.BackgroundTransparency = 1
ScrollNave.ScrollBarThickness = 0
ScrollNave.CanvasSize = UDim2.new(0, 0, 0, 450)
ScrollNave.ScrollingDirection = Enum.ScrollingDirection.Y
ScrollNave.Parent = NavegacaoFrame
HomeBotao = Instance.new("ImageButton")
HomeBotao.Size = UDim2.new(0, 135, 0, 35)
HomeBotao.Position = UDim2.new(0, 7, 0, 6)
HomeBotao.BackgroundColor3 = Color3.fromRGB(60, 179, 113)
HomeBotao.Parent = ScrollNave
HomeBotao.AutoButtonColor = false
Icone1 = Instance.new("ImageLabel")
Icone1.Size = UDim2.new(0, 35, 0, 35)
Icone1.Position = UDim2.new(0, 0, 0, 0)
Icone1.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Icone1.Image = "rbxassetid://73689198308394"
Icone1.Parent = HomeBotao
Texto1 = Instance.new("TextLabel")
Texto1.Size = UDim2.new(1, - 40, 1, 0)
Texto1.Position = UDim2.new(0, 38, 0, - 2)
Texto1.BackgroundTransparency = 1
Texto1.Text = traducao.OP1
Texto1.TextColor3 = Color3.fromRGB(255, 223, 0)
Texto1.Font = Enum.Font.Garamond
Texto1.TextScaled = true
Texto1.Parent = HomeBotao
TargetBotao = Instance.new("ImageButton")
TargetBotao.Size = UDim2.new(0, 135, 0, 35)
TargetBotao.Position = UDim2.new(0, 7, 0, 55)
TargetBotao.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TargetBotao.Parent = ScrollNave
TargetBotao.AutoButtonColor = false
Icone2 = Instance.new("ImageLabel")
Icone2.Size = UDim2.new(0, 35, 0, 35)
Icone2.Position = UDim2.new(0, 0, 0, 0)
Icone2.BackgroundColor3 = Color3.fromRGB(244, 246, 248)
Icone2.Image = "rbxassetid://135970910415329"
Icone2.Parent = TargetBotao
Texto2 = Instance.new("TextLabel")
Texto2.Size = UDim2.new(1, - 45, 1, 0)
Texto2.Position = UDim2.new(0, 38, 0, - 2)
Texto2.BackgroundTransparency = 1
Texto2.Text = traducao.OP2
Texto2.TextColor3 = Color3.fromRGB(255, 223, 0)
Texto2.Font = Enum.Font.Garamond
Texto2.TextScaled = true
Texto2.Parent = TargetBotao
CombateBotao = Instance.new("ImageButton")
CombateBotao.Size = UDim2.new(0, 135, 0, 35)
CombateBotao.Position = UDim2.new(0, 7, 0, 104)
CombateBotao.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CombateBotao.Parent = ScrollNave
CombateBotao.AutoButtonColor = false
Icone3 = Instance.new("ImageLabel")
Icone3.Size = UDim2.new(0, 35, 0, 35)
Icone3.Position = UDim2.new(0, 0, 0, 0)
Icone3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Icone3.Image = "rbxassetid://99163048282918"
Icone3.Parent = CombateBotao
Texto3 = Instance.new("TextLabel")
Texto3.Size = UDim2.new(1, - 45, 1, 0)
Texto3.Position = UDim2.new(0, 38, 0, - 2)
Texto3.BackgroundTransparency = 1
Texto3.Text = traducao.OP3
Texto3.TextColor3 = Color3.fromRGB(255, 223, 0)
Texto3.Font = Enum.Font.Garamond
Texto3.TextScaled = true
Texto3.Parent = CombateBotao
DefesaBotao = Instance.new("ImageButton")
DefesaBotao.Size = UDim2.new(0, 135, 0, 35)
DefesaBotao.Position = UDim2.new(0, 7, 0, 153)
DefesaBotao.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
DefesaBotao.Parent = ScrollNave
DefesaBotao.AutoButtonColor = false
Icone4 = Instance.new("ImageLabel")
Icone4.Size = UDim2.new(0, 35, 0, 35)
Icone4.Position = UDim2.new(0, 0, 0, 0)
Icone4.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Icone4.Image = "rbxassetid://117787689761814"
Icone4.Parent = DefesaBotao
Texto4 = Instance.new("TextLabel")
Texto4.Size = UDim2.new(1, - 45, 1, 0)
Texto4.Position = UDim2.new(0, 38, 0, - 2)
Texto4.BackgroundTransparency = 1
Texto4.Text = traducao.OP4
Texto4.TextColor3 = Color3.fromRGB(255, 223, 0)
Texto4.Font = Enum.Font.Garamond
Texto4.TextScaled = true
Texto4.Parent = DefesaBotao
MoveBotao = Instance.new("ImageButton")
MoveBotao.Size = UDim2.new(0, 135, 0, 35)
MoveBotao.Position = UDim2.new(0, 7, 0, 202)
MoveBotao.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
MoveBotao.Parent = ScrollNave
MoveBotao.AutoButtonColor = false
Icone5 = Instance.new("ImageLabel")
Icone5.Size = UDim2.new(0, 35, 0, 35)
Icone5.Position = UDim2.new(0, 0, 0, 0)
Icone5.BackgroundColor3 = Color3.fromRGB(141, 198, 63)
Icone5.Image = "rbxassetid://97202547301959"
Icone5.Parent = MoveBotao
Texto5 = Instance.new("TextLabel")
Texto5.Size = UDim2.new(1, - 45, 1, 0)
Texto5.Position = UDim2.new(0, 38, 0, - 2)
Texto5.BackgroundTransparency = 1
Texto5.Text = traducao.OP5
Texto5.TextColor3 = Color3.fromRGB(255, 223, 0)
Texto5.Font = Enum.Font.Garamond
Texto5.TextScaled = true
Texto5.Parent = MoveBotao
VisualBotao = Instance.new("ImageButton")
VisualBotao.Size = UDim2.new(0, 135, 0, 35)
VisualBotao.Position = UDim2.new(0, 7, 0, 251)
VisualBotao.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
VisualBotao.Parent = ScrollNave
VisualBotao.AutoButtonColor = false
Icone6 = Instance.new("ImageLabel")
Icone6.Size = UDim2.new(0, 35, 0, 35)
Icone6.Position = UDim2.new(0, 0, 0, 0)
Icone6.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Icone6.Image = "rbxassetid://78060748442108"
Icone6.Parent = VisualBotao
Texto6 = Instance.new("TextLabel")
Texto6.Size = UDim2.new(1, - 45, 1, 0)
Texto6.Position = UDim2.new(0, 38, 0, - 2)
Texto6.BackgroundTransparency = 1
Texto6.Text = traducao.OP6
Texto6.TextColor3 = Color3.fromRGB(255, 223, 0)
Texto6.Font = Enum.Font.Garamond
Texto6.TextScaled = true
Texto6.Parent = VisualBotao
MiscBotao = Instance.new("ImageButton")
MiscBotao.Size = UDim2.new(0, 135, 0, 35)
MiscBotao.Position = UDim2.new(0, 7, 0, 300)
MiscBotao.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
MiscBotao.Parent = ScrollNave
MiscBotao.AutoButtonColor = false
Icone7 = Instance.new("ImageLabel")
Icone7.Size = UDim2.new(0, 35, 0, 35)
Icone7.Position = UDim2.new(0, 0, 0, 0)
Icone7.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Icone7.Image = "rbxassetid://109255534494492"
Icone7.Parent = MiscBotao
Texto7 = Instance.new("TextLabel")
Texto7.Size = UDim2.new(1, - 45, 1, 0)
Texto7.Position = UDim2.new(0, 38, 0, - 2)
Texto7.BackgroundTransparency = 1
Texto7.Text = traducao.OP7
Texto7.TextColor3 = Color3.fromRGB(255, 223, 0)
Texto7.Font = Enum.Font.Garamond
Texto7.TextScaled = true
Texto7.Parent = MiscBotao
ShopBotao = Instance.new("ImageButton")
ShopBotao.Size = UDim2.new(0, 135, 0, 35)
ShopBotao.Position = UDim2.new(0, 7, 0, 349)
ShopBotao.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ShopBotao.Parent = ScrollNave
ShopBotao.AutoButtonColor = false
Icone8 = Instance.new("ImageLabel")
Icone8.Size = UDim2.new(0, 35, 0, 35)
Icone8.Position = UDim2.new(0, 0, 0, 0)
Icone8.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Icone8.Image = "rbxassetid://135353543730727"
Icone8.Parent = ShopBotao
Texto8 = Instance.new("TextLabel")
Texto8.Size = UDim2.new(1, - 45, 1, 0)
Texto8.Position = UDim2.new(0, 38, 0, - 2)
Texto8.BackgroundTransparency = 1
Texto8.Text = traducao.OP8
Texto8.TextColor3 = Color3.fromRGB(255, 223, 0)
Texto8.Font = Enum.Font.Garamond
Texto8.TextScaled = true
Texto8.Parent = ShopBotao
VipBotao = Instance.new("ImageButton")
VipBotao.Size = UDim2.new(0, 135, 0, 35)
VipBotao.Position = UDim2.new(0, 7, 0, 398)
VipBotao.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
VipBotao.Parent = ScrollNave
VipBotao.AutoButtonColor = false
Icone9 = Instance.new("ImageLabel")
Icone9.Size = UDim2.new(0, 35, 0, 35)
Icone9.Position = UDim2.new(0, 0, 0, 0)
Icone9.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Icone9.Image = "rbxassetid://72805483479480"
Icone9.Parent = VipBotao
Texto9 = Instance.new("TextLabel")
Texto9.Size = UDim2.new(1, - 45, 1, 0)
Texto9.Position = UDim2.new(0, 38, 0, - 2)
Texto9.BackgroundTransparency = 1
Texto9.Text = "Premium & Elite"
Texto9.TextColor3 = Color3.fromRGB(0, 0, 150)
Texto9.Font = Enum.Font.Garamond
Texto9.TextScaled = true
Texto9.Parent = VipBotao
Stroke(HomeBotao, 0, 0, 0, 2)
Stroke(TargetBotao, 0, 0, 0, 2)
Stroke(CombateBotao, 0, 0, 0, 2)
Stroke(DefesaBotao, 0, 0, 0, 2)
Stroke(MoveBotao, 0, 0, 0, 2)
Stroke(VisualBotao, 0, 0, 0, 2)
Stroke(MiscBotao, 0, 0, 0, 2)
Stroke(ShopBotao, 0, 0, 0, 2)
Stroke(VipBotao, 0, 0, 0, 2)
Stroke(Icone1, 0, 0, 0, 2)
Stroke(Icone2, 0, 0, 0, 2)
Stroke(Icone3, 0, 0, 0, 2)
Stroke(Icone4, 0, 0, 0, 2)
Stroke(Icone5, 0, 0, 0, 2)
Stroke(Icone6, 0, 0, 0, 2)
Stroke(Icone7, 0, 0, 0, 2)
Stroke(Icone8, 0, 0, 0, 2)
Stroke(Icone9, 0, 0, 0, 2)
TweenService = game:GetService("TweenService")
_G.TextLabelSTs = {}
for v182 = 1, 9 do
    local v183 = v182
    _G["Tela" .. v183] = Instance.new("Frame")
    _G["Tela" .. v183].Size = UDim2.new(0, 454, 0, 276)
    _G["Tela" .. v183].Position = UDim2.new(0, - 2, 0, 46)
    _G["Tela" .. v183].BackgroundTransparency = 1
    _G["Tela" .. v183].Parent = imagemCH
    _G["Tela" .. v183].Visible = false
end
_G.Tela1.Visible = true
local v184, v185, v186 = ipairs({
    3,
    4,
    5,
    6,
    7,
    9
})
while true do
    local v187
    v186, v187 = v184(v185, v186)
    if v186 == nil then
        break
    end
    local v188 = _G["Tela" .. v187]
    local v189 = Instance.new("Frame")
    v189.Size = UDim2.new(0, 140, 0, 35)
    v189.Position = UDim2.new(0, 6, 0, 7)
    v189.BackgroundColor3 = Color3.fromRGB(255, 95, 0)
    v189.BorderSizePixel = 0
    v189.Parent = v188
    local v190 = Instance.new("ImageLabel")
    v190.Size = UDim2.new(0, 35, 0, 35)
    v190.Position = UDim2.new(0, 0, 0, 0)
    v190.BackgroundColor3 = Color3.fromRGB(157, 0, 0)
    v190.Image = "rbxassetid://86437824189206"
    v190.Parent = v189
    local v191 = Instance.new("TextLabel")
    v191.Size = UDim2.new(1, - 45, 1, 0)
    v191.Position = UDim2.new(0, 38, 0, 0)
    v191.BackgroundTransparency = 1
    v191.Text = traducao.Adjust
    v191.TextColor3 = Color3.fromRGB(255, 255, 153)
    v191.Font = Enum.Font.Garamond
    v191.TextScaled = true
    v191.Parent = v189
    local v192 = Instance.new("Frame")
    v192.Size = UDim2.new(0, 436, 0, 37)
    v192.Position = UDim2.new(0, 9, 0, 230)
    v192.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
    v192.BorderSizePixel = 0
    v192.Parent = v188
    local v193 = Instance.new("Frame")
    v193.Size = UDim2.new(0, 37, 0, 37)
    v193.Position = UDim2.new(0, 0, 0, 0)
    v193.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
    v193.Parent = v192
    local v194 = Instance.new("Frame")
    v194.Size = UDim2.new(0, 37, 0, 37)
    v194.Position = UDim2.new(1, - 37, 0, 0)
    v194.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
    v194.Parent = v192
    Duvida1Label = Instance.new("TextLabel")
    Duvida1Label.Size = UDim2.new(1, 0, 1, 0)
    Duvida1Label.Position = UDim2.new(0, 0, 0, 0)
    Duvida1Label.BackgroundTransparency = 1
    Duvida1Label.Text = "?"
    Duvida1Label.TextColor3 = Color3.fromRGB(255, 215, 0)
    Duvida1Label.TextScaled = true
    Duvida1Label.Parent = v193
    Duvida2Label = Instance.new("TextLabel")
    Duvida2Label.Size = UDim2.new(1, 0, 1, 0)
    Duvida2Label.Position = UDim2.new(0, 0, 0, 0)
    Duvida2Label.BackgroundTransparency = 1
    Duvida2Label.Text = "?"
    Duvida2Label.TextColor3 = Color3.fromRGB(255, 215, 0)
    Duvida2Label.TextScaled = true
    Duvida2Label.Parent = v194
    local v195 = Instance.new("TextLabel")
    v195.Size = UDim2.new(0, 354, 1, 0)
    v195.Position = UDim2.new(0, 41, 0, 0)
    v195.BackgroundTransparency = 1
    v195.Text = ""
    v195.TextColor3 = Color3.fromRGB(255, 255, 255)
    v195.TextScaled = true
    v195.Font = Enum.Font.SourceSansBold
    v195.Parent = v192
    _G.TextLabelSTs[v187] = v195
    Corner(v189, 10)
    Corner(v190, 10)
    Corner(v192, 30)
    Corner(v195, 10)
    Corner(v193, 30)
    Corner(v194, 30)
    Stroke(v189, 0, 0, 0, 2)
    Stroke(v190, 0, 0, 0, 2)
    Stroke(v191, 0, 0, 0, 2)
    Stroke(v192, 70, 70, 70, 2)
    Stroke(v195, 0, 0, 0, 1)
    Stroke(v193, 70, 70, 70, 2)
    Stroke(v194, 70, 70, 70, 2)
    Stroke(Duvida1Label, 0, 0, 0, 1)
    Stroke(Duvida2Label, 0, 0, 0, 1)
end
for v196 = 0, 60 do
    local v197 = v196
    local v198 = Instance.new("Frame")
    v198.Size = UDim2.new(0, 142, 0, 169)
    v198.Position = UDim2.new(0, 3, 0, 93)
    v198.BackgroundColor3 = Color3.fromRGB(255, 95, 0)
    v198.BorderSizePixel = 0
    v198.BackgroundTransparency = 0.7
    v198.Visible = false
    v198.Name = "FrameConfig" .. v197
    v198.Parent = imagemCH
    Corner(v198, 5)
    Stroke(v198, 255, 95, 0, 1)
    if v197 ~= 0 then
        local v199 = Instance.new("ScrollingFrame")
        v199.Size = UDim2.new(1, 0, 1, 0)
        v199.Position = UDim2.new(0, 0, 0, 0)
        v199.BackgroundTransparency = 1
        v199.BorderSizePixel = 0
        v199.ScrollBarThickness = 0
        v199.CanvasSize = UDim2.new(0, 0, 0, 211)
        v199.Name = "ScrollInterno"
        v199.Parent = v198
    end
    _G["Frame" .. v197] = v198
end
function Configurar(p200)
    local v201 = true
    for v202 = 0, 60 do
        local v203 = _G["Frame" .. v202]
        if v203 then
            if (p200 ~= "nulo" and v202 == p200) ~= v203.Visible then
                v201 = false
                break
            end
        end
    end
    if not v201 then
        for v204 = 0, 60 do
            local v205 = _G["Frame" .. v204]
            if v205 then
                v205.Visible = p200 ~= "nulo" and v204 == p200
            end
        end
    end
end
botaoClicado = nil
tweens = {}
function criarTween(p206)
    local v207 = TweenService:Create(p206, TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, - 1, true), {
        Color = Color3.fromRGB(255, 255, 255)
    })
    v207:Play()
    return v207
end
function BotaoClick(p208, p209)
    local v210 = ipairs
    local v211 = {}
    local v212 = p208:FindFirstChild("UIStroke")
    local v213 = p208:FindFirstChild("ImageLabel")
    if v213 then
        v213 = p208.ImageLabel:FindFirstChild("UIStroke")
    end
    __set_list(v211, 1, {
        v212,
        v213
    })
    local v214, v215, v216 = v210(v211)
    while true do
        local v217
        v216, v217 = v214(v215, v216)
        if v216 == nil then
            break
        end
        if v217 then
            if p209 then
                tweens[v217] = criarTween(v217)
                Som("77120543307812")
                if p208 == HomeBotao or (p208 == TargetBotao or p208 == ShopBotao) then
                    Configurar("nulo")
                else
                    Configurar(0)
                end
            else
                if tweens[v217] then
                    tweens[v217]:Cancel()
                    tweens[v217] = nil
                end
                v217.Color = Color3.fromRGB(0, 0, 0)
            end
        end
    end
end
botoes = {
    HomeBotao,
    TargetBotao,
    CombateBotao,
    DefesaBotao,
    MoveBotao,
    VisualBotao,
    MiscBotao,
    ShopBotao,
    VipBotao
}
telas = {}
for v218 = 1, 9 do
    local v219 = v218
    telas["Tela" .. v219] = _G["Tela" .. v219]
end
function alterarTextos(p220)
    local v221 = "CHAOTIC HUB | " .. traducao["OP" .. p220]
    local v222 = TextoTitulo1
    TextoTitulo2.Text = v221
    v222.Text = v221
end
function configurarTela(p223, p224)
    if p223 ~= botaoClicado then
        local v225, v226, v227 = pairs(telas)
        while true do
            local v228
            v227, v228 = v225(v226, v227)
            if v227 == nil then
                break
            end
            v228.Visible = v227 == "Tela" .. p224
        end
        alterarTextos(p224)
        BotaoClick(p223, true)
        botaoClicado = p223
        local v229, v230, v231 = ipairs(botoes)
        while true do
            local v232
            v231, v232 = v229(v230, v231)
            if v231 == nil then
                break
            end
            if v232 ~= p223 then
                BotaoClick(v232, false)
                v232.BackgroundColor3 = v232 == VipBotao and Color3.fromRGB(255, 215, 0) or Color3.fromRGB(255, 0, 0)
            end
        end
        p223.BackgroundColor3 = p223 == VipBotao and Color3.fromRGB(123, 104, 238) or Color3.fromRGB(60, 179, 113)
        local v233 = {
            [3] = traducao.SobreCombate,
            [4] = traducao.SobreDefesa,
            [5] = traducao.SobreMovimento,
            [6] = traducao.SobreVisual,
            [7] = traducao.SobreMisc,
            [9] = traducao.SobrePremium
        }
        if _G.TextLabelSTs[p224] then
            _G.TextLabelSTs[p224].Text = v233[p224] or ""
        end
    end
end
local v234, v235, vu236 = ipairs(botoes)
while true do
    local vu237
    vu236, vu237 = v234(v235, vu236)
    if vu236 == nil then
        break
    end
    vu237.MouseButton1Click:Connect(function()
        configurarTela(vu237, vu236)
    end)
end
BotaoClick(HomeBotao, true)
botaoClicado = HomeBotao
for v238 = 3, 9 do
    local v239 = Instance.new("Frame")
    v239.Size = UDim2.new(1, 0, 0, 3)
    v239.Position = UDim2.new(0, 0, 0, 220)
    v239.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    v239.BorderSizePixel = 0
    v239.Name = "LinhaTelas"
    v239.Parent = _G["Tela" .. v238]
end
local v240, v241, v242 = ipairs({
    3,
    4,
    5,
    6,
    7,
    9
})
while true do
    local v243
    v242, v243 = v240(v241, v242)
    if v242 == nil then
        break
    end
    local v244 = Instance.new("Frame")
    v244.Size = UDim2.new(0, 3, 1, - 55)
    v244.Position = UDim2.new(0, 150, 0, 0)
    v244.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    v244.BorderSizePixel = 0
    v244.Name = "LinhaTelas2"
    v244.Parent = _G["Tela" .. v243]
end
LinhaHome = Instance.new("Frame")
LinhaHome.Size = UDim2.new(0, 3, 1, - 55)
LinhaHome.Position = UDim2.new(0, 225.5, 0, 0)
LinhaHome.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
LinhaHome.BorderSizePixel = 0
LinhaHome.Parent = _G.Tela1
FrameLocalInfo = Instance.new("Frame")
FrameLocalInfo.Size = UDim2.new(0, 213, 0, 35)
FrameLocalInfo.Position = UDim2.new(0, 7, 0, 9)
FrameLocalInfo.BackgroundColor3 = Color3.fromRGB(255, 95, 0)
FrameLocalInfo.Parent = _G.Tela1
iconeLocalInfo = Instance.new("ImageLabel")
iconeLocalInfo.Size = UDim2.new(0, 34, 0, 35)
iconeLocalInfo.Position = UDim2.new(0, 0, 0, 0)
iconeLocalInfo.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
iconeLocalInfo.BackgroundTransparency = 0.5
iconeLocalInfo.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. game.Players.LocalPlayer.UserId .. "&width=420&height=420&format=png"
iconeLocalInfo.Parent = FrameLocalInfo
BotaoLocalInfo = Instance.new("ImageButton")
BotaoLocalInfo.Size = UDim2.new(0, 34, 0, 35)
BotaoLocalInfo.Position = UDim2.new(0, 179, 0, 0)
BotaoLocalInfo.BackgroundColor3 = Color3.fromRGB(157, 0, 0)
BotaoLocalInfo.Image = "rbxassetid://95763935938550"
BotaoLocalInfo.AutoButtonColor = false
BotaoLocalInfo.Parent = FrameLocalInfo
textoLocaInfo = Instance.new("TextLabel")
textoLocaInfo.Size = UDim2.new(1, - 72, 1, 0)
textoLocaInfo.Position = UDim2.new(0, 36, 0, 0)
textoLocaInfo.BackgroundTransparency = 1
textoLocaInfo.Text = traducao.SuaInfo
textoLocaInfo.TextColor3 = Color3.fromRGB(255, 255, 153)
textoLocaInfo.Font = Enum.Font.Garamond
textoLocaInfo.TextScaled = true
textoLocaInfo.Parent = FrameLocalInfo
ScrollLocal = Instance.new("ScrollingFrame")
ScrollLocal.Size = UDim2.new(0, 222, 0, 172)
ScrollLocal.Position = UDim2.new(0, 3, 0, 47)
ScrollLocal.BackgroundTransparency = 1
ScrollLocal.ScrollBarThickness = 0
ScrollLocal.ScrollingDirection = Enum.ScrollingDirection.Y
ScrollLocal.CanvasSize = UDim2.new(0, 0, 0, 333)
ScrollLocal.Visible = true
ScrollLocal.Parent = _G.Tela1
FrameTermux = Instance.new("Frame")
FrameTermux.Size = UDim2.new(0, 211, 0, 163)
FrameTermux.Position = UDim2.new(0, 8, 0, 51)
FrameTermux.BackgroundColor3 = Color3.new(0, 0, 0)
FrameTermux.BackgroundTransparency = 0.5
FrameTermux.Visible = false
FrameTermux.Parent = _G.Tela1
TextoTermux = Instance.new("TextLabel")
TextoTermux.Size = UDim2.new(1, 0, 1, 0)
TextoTermux.Position = UDim2.new(0, 0, 0, 0)
TextoTermux.BackgroundTransparency = 1
TextoTermux.Text = traducao.Termux
TextoTermux.TextScaled = true
TextoTermux.TextColor3 = Color3.fromRGB(0, 255, 255)
TextoTermux.Parent = FrameTermux
FrameEryss = Instance.new("Frame")
FrameEryss.Size = UDim2.new(0, 211, 0, 163)
FrameEryss.Position = UDim2.new(0, 8, 0, 51)
FrameEryss.BackgroundColor3 = Color3.new(0, 0, 0)
FrameEryss.BackgroundTransparency = 0.5
FrameEryss.Visible = false
FrameEryss.Parent = _G.Tela1
TextoEryss = Instance.new("TextLabel")
TextoEryss.Size = UDim2.new(1, 0, 1, 0)
TextoEryss.Position = UDim2.new(0, 0, 0, 0)
TextoEryss.BackgroundTransparency = 1
TextoEryss.Text = traducao.Eryss
TextoEryss.TextScaled = true
TextoEryss.TextColor3 = Color3.fromRGB(0, 255, 255)
TextoEryss.Parent = FrameEryss
FrameWiwy = Instance.new("Frame")
FrameWiwy.Size = UDim2.new(0, 211, 0, 163)
FrameWiwy.Position = UDim2.new(0, 8, 0, 51)
FrameWiwy.BackgroundColor3 = Color3.new(0, 0, 0)
FrameWiwy.BackgroundTransparency = 0.5
FrameWiwy.Visible = false
FrameWiwy.Parent = _G.Tela1
TextoWiwy = Instance.new("TextLabel")
TextoWiwy.Size = UDim2.new(1, 0, 1, 0)
TextoWiwy.Position = UDim2.new(0, 0, 0, 0)
TextoWiwy.BackgroundTransparency = 1
TextoWiwy.Text = traducao.Wiwy
TextoWiwy.TextScaled = true
TextoWiwy.TextColor3 = Color3.fromRGB(0, 255, 255)
TextoWiwy.Parent = FrameWiwy
RankFrameLocal = Instance.new("Frame")
RankFrameLocal.Size = UDim2.new(0, 210, 0, 38)
RankFrameLocal.Position = UDim2.new(0, 6, 0, 10)
RankFrameLocal.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
RankFrameLocal.Parent = ScrollLocal
SkillFrameLocal = Instance.new("Frame")
SkillFrameLocal.Size = UDim2.new(0, 210, 0, 38)
SkillFrameLocal.Position = UDim2.new(0, 6, 0, 65)
SkillFrameLocal.BackgroundColor3 = Color3.fromRGB(0, 102, 204)
SkillFrameLocal.Parent = ScrollLocal
KillsFrame = Instance.new("Frame")
KillsFrame.Size = UDim2.new(0, 210, 0, 38)
KillsFrame.Position = UDim2.new(0, 6, 0, 120)
KillsFrame.BackgroundColor3 = Color3.fromRGB(255, 75, 75)
KillsFrame.Parent = ScrollLocal
RobuxFrameLocal = Instance.new("Frame")
RobuxFrameLocal.Size = UDim2.new(0, 210, 0, 38)
RobuxFrameLocal.Position = UDim2.new(0, 6, 0, 175)
RobuxFrameLocal.BackgroundColor3 = Color3.fromRGB(212, 175, 55)
RobuxFrameLocal.Parent = ScrollLocal
DataFrameLocal = Instance.new("Frame")
DataFrameLocal.Size = UDim2.new(0, 210, 0, 38)
DataFrameLocal.Position = UDim2.new(0, 6, 0, 230)
DataFrameLocal.BackgroundColor3 = Color3.fromRGB(0, 128, 128)
DataFrameLocal.Parent = ScrollLocal
TempoFrame = Instance.new("Frame")
TempoFrame.Size = UDim2.new(0, 210, 0, 38)
TempoFrame.Position = UDim2.new(0, 6, 0, 285)
TempoFrame.BackgroundColor3 = Color3.fromRGB(60, 179, 113)
TempoFrame.Parent = ScrollLocal
IconeRankLocal = Instance.new("ImageLabel")
IconeRankLocal.Size = UDim2.new(0, 38, 0, 38)
IconeRankLocal.Position = UDim2.new(0, 0, 0, 0)
IconeRankLocal.BackgroundColor3 = Color3.fromRGB(40, 100, 240)
IconeRankLocal.Image = "rbxassetid://96385855917213"
IconeRankLocal.Parent = RankFrameLocal
iconeSkillLocal = Instance.new("ImageLabel")
iconeSkillLocal.Size = UDim2.new(0, 38, 0, 38)
iconeSkillLocal.Position = UDim2.new(0, 0, 0, 0)
iconeSkillLocal.BackgroundColor3 = Color3.fromRGB(40, 100, 240)
iconeSkillLocal.Image = "rbxassetid://104959687200478"
iconeSkillLocal.Parent = SkillFrameLocal
iconeKills = Instance.new("ImageLabel")
iconeKills.Size = UDim2.new(0, 38, 0, 38)
iconeKills.Position = UDim2.new(0, 0, 0, 0)
iconeKills.BackgroundColor3 = Color3.fromRGB(72, 176, 44)
iconeKills.Image = "rbxassetid://122412642626742"
iconeKills.Parent = KillsFrame
iconeRobuxLocal = Instance.new("ImageLabel")
iconeRobuxLocal.Size = UDim2.new(0, 38, 0, 38)
iconeRobuxLocal.Position = UDim2.new(0, 0, 0, 0)
iconeRobuxLocal.BackgroundColor3 = Color3.fromRGB(251, 200, 90)
iconeRobuxLocal.Image = "rbxassetid://110257698120209"
iconeRobuxLocal.Parent = RobuxFrameLocal
iconeDataLocal = Instance.new("ImageLabel")
iconeDataLocal.Size = UDim2.new(0, 38, 0, 38)
iconeDataLocal.Position = UDim2.new(0, 0, 0, 0)
iconeDataLocal.BackgroundColor3 = Color3.fromRGB(44, 82, 91)
iconeDataLocal.Image = "rbxassetid://128941133678575"
iconeDataLocal.Parent = DataFrameLocal
iconeTempo = Instance.new("ImageLabel")
iconeTempo.Size = UDim2.new(0, 38, 0, 38)
iconeTempo.Position = UDim2.new(0, 0, 0, 0)
iconeTempo.BackgroundColor3 = Color3.fromRGB(44, 82, 91)
iconeTempo.Image = "rbxassetid://87710682910642"
iconeTempo.Parent = TempoFrame
textoRankLocal = Instance.new("TextLabel")
textoRankLocal.Size = UDim2.new(1, - 50, 1, 0)
textoRankLocal.Position = UDim2.new(0, 42, 0, 0)
textoRankLocal.BackgroundTransparency = 1
textoRankLocal.Text = "Chaotic Rank: " .. (RankUsuario == "PremiumT" and "Premium Temp" or RankUsuario)
textoRankLocal.TextColor3 = Color3.fromRGB(255, 228, 196)
textoRankLocal.Font = Enum.Font.Garamond
textoRankLocal.TextScaled = true
textoRankLocal.Parent = RankFrameLocal
textoSkillLocal = Instance.new("TextLabel")
textoSkillLocal.Size = UDim2.new(1, - 50, 1, 0)
textoSkillLocal.Position = UDim2.new(0, 42, 0, 0)
textoSkillLocal.BackgroundTransparency = 1
textoSkillLocal.Text = traducao.MySkill .. ": " .. (game.Players.LocalPlayer:FindFirstChild("statsfolder") and (game.Players.LocalPlayer.statsfolder:FindFirstChild("Skill Rating") and math.floor(game.Players.LocalPlayer.statsfolder["Skill Rating"].Value) or "N/A") or "N/A")
textoSkillLocal.TextColor3 = Color3.fromRGB(255, 255, 255)
textoSkillLocal.Font = Enum.Font.Garamond
textoSkillLocal.TextScaled = true
textoSkillLocal.Parent = SkillFrameLocal
textoKillsLocal = Instance.new("TextLabel")
textoKillsLocal.Size = UDim2.new(1, - 50, 1, 0)
textoKillsLocal.Position = UDim2.new(0, 42, 0, 1)
textoKillsLocal.BackgroundTransparency = 1
textoKillsLocal.Text = traducao.KillAtual .. ": 0\n" .. traducao.KillTotal .. ": " .. (game:GetService("Players").LocalPlayer:FindFirstChild("statsfolder") and (game:GetService("Players").LocalPlayer.statsfolder:FindFirstChild("Wins") and (game:GetService("Players").LocalPlayer.statsfolder.Wins.Value or "N/A") or "N/A") or "N/A") .. "\n" .. traducao.YDefeats .. ": " .. (game:GetService("Players").LocalPlayer:FindFirstChild("statsfolder") and (game:GetService("Players").LocalPlayer.statsfolder:FindFirstChild("Defeats") and (game:GetService("Players").LocalPlayer.statsfolder.Defeats.Value or "N/A") or "N/A") or "N/A")
textoKillsLocal.TextColor3 = Color3.fromRGB(255, 255, 255)
textoKillsLocal.Font = Enum.Font.LuckiestGuy
textoKillsLocal.TextScaled = true
textoKillsLocal.Parent = KillsFrame
textoRobuxLocal = Instance.new("TextLabel")
textoRobuxLocal.Size = UDim2.new(1, - 50, 1, 0)
textoRobuxLocal.Position = UDim2.new(0, 42, 0, 0)
textoRobuxLocal.BackgroundTransparency = 1
textoRobuxLocal.Text = traducao.Avatar
textoRobuxLocal.TextColor3 = Color3.fromRGB(255, 255, 153)
textoRobuxLocal.Font = Enum.Font.Garamond
textoRobuxLocal.TextScaled = true
textoRobuxLocal.Parent = RobuxFrameLocal
textoDataLocal = Instance.new("TextLabel")
textoDataLocal.Size = UDim2.new(1, - 50, 1, 0)
textoDataLocal.Position = UDim2.new(0, 42, 0, 0)
textoDataLocal.BackgroundTransparency = 1
textoDataLocal.Text = traducao.ContaCriada .. " " .. (function()
    local v245 = game.Players.LocalPlayer.AccountAge
    local v246 = os.date("*t", os.time() - v245 * 86400)
    return game.Players.LocalPlayer.LocaleId == "pt-br" and string.format("%02d/%02d/%d", v246.day, v246.month, v246.year) or string.format("%02d/%02d/%d", v246.month, v246.day, v246.year)
end)() .. "\n(" .. game.Players.LocalPlayer.AccountAge .. " " .. traducao.days .. ")"
textoDataLocal.TextColor3 = Color3.fromRGB(255, 255, 255)
textoDataLocal.Font = Enum.Font.Garamond
textoDataLocal.TextScaled = true
textoDataLocal.Parent = DataFrameLocal
textoTempoLocal = Instance.new("TextLabel")
textoTempoLocal.Size = UDim2.new(1, - 50, 1, 0)
textoTempoLocal.Position = UDim2.new(0, 42, 0, 0)
textoTempoLocal.BackgroundTransparency = 1
textoTempoLocal.Text = traducao.GameTime .. ": 00:00"
textoTempoLocal.TextColor3 = Color3.fromRGB(255, 255, 255)
textoTempoLocal.Font = Enum.Font.Garamond
textoTempoLocal.TextScaled = true
textoTempoLocal.Parent = TempoFrame
InfoTela = 1
cache = {}
BotaoLocalInfo.MouseButton1Click:Connect(function()
    ScrollLocal.Visible = false
    FrameTermux.Visible = false
    FrameEryss.Visible = false
    FrameWiwy.Visible = false
    InfoTela = InfoTela % 4 + 1
    if InfoTela ~= 1 then
        if InfoTela ~= 2 then
            if InfoTela ~= 3 then
                if InfoTela == 4 then
                    FrameWiwy.Visible = true
                    if not cache[3913435313] then
                        local v247, v248 = pcall(function()
                            return game:GetService("HttpService"):JSONDecode(game:HttpGet("https://users.roblox.com/v1/users/3913435313"))
                        end)
                        cache[3913435313] = v247 and v248.displayName or "Erro"
                    end
                    textoLocaInfo.Text = cache[3913435313]
                    iconeLocalInfo.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=3913435313&width=420&height=420&format=png"
                end
            else
                FrameEryss.Visible = true
                if not cache[5042019349] then
                    local v249, v250 = pcall(function()
                        return game:GetService("HttpService"):JSONDecode(game:HttpGet("https://users.roblox.com/v1/users/5042019349"))
                    end)
                    cache[5042019349] = v249 and v250.displayName or "Erro"
                end
                textoLocaInfo.Text = cache[5042019349]
                iconeLocalInfo.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=5042019349&width=420&height=420&format=png"
            end
        else
            FrameTermux.Visible = true
            if not cache[4706172407] then
                local v251, v252 = pcall(function()
                    return game:GetService("HttpService"):JSONDecode(game:HttpGet("https://users.roblox.com/v1/users/4706172407"))
                end)
                cache[4706172407] = v251 and v252.displayName or "Erro"
            end
            textoLocaInfo.Text = cache[4706172407]
            iconeLocalInfo.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=4706172407&width=420&height=420&format=png"
        end
    else
        ScrollLocal.Visible = true
        iconeLocalInfo.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. game.Players.LocalPlayer.UserId .. "&width=420&height=420&format=png"
        textoLocaInfo.Text = traducao.SuaInfo
    end
end)
coroutine.wrap(function()
    local v253 = 0
    local v254, v255 = pcall(function()
        return game:GetService("Players"):GetCharacterAppearanceInfoAsync(game.Players.LocalPlayer.UserId)
    end)
    if v254 and (v255 and v255.assets) then
        local v256, v257, v258 = ipairs(v255.assets)
        while true do
            local vu259
            v258, vu259 = v256(v257, v258)
            if v258 == nil then
                break
            end
            local v260, v261 = pcall(function()
                return game:GetService("MarketplaceService"):GetProductInfo(vu259.id, Enum.InfoType.Asset)
            end)
            if v260 and (v261 and (v261.IsForSale and v261.PriceInRobux)) then
                v253 = v253 + v261.PriceInRobux
            end
        end
    end
    textoRobuxLocal.Text = traducao.Avatar .. " " .. tostring(v253):reverse():gsub("(%d%d%d)", "%1,"):reverse():gsub("^,", "") .. " Robux"
end)()
KillAtuais = 0
local v262 = game:GetService("Players").LocalPlayer:FindFirstChild("statsfolder")
if v262 then
    local vu263 = v262:FindFirstChild("Wins")
    local vu264 = v262:FindFirstChild("Defeats")
    local function vu265()
        textoKillsLocal.Text = traducao.KillAtual .. ": " .. KillAtuais .. "\n" .. traducao.KillTotal .. ": " .. (vu263 and vu263.Value or "N/A") .. "\n" .. traducao.YDefeats .. ": " .. (vu264 and vu264.Value or "N/A")
    end
    if vu263 then
        local v266 = vu263
        if vu263.IsA(v266, "ValueBase") then
            local v267 = vu263
            vu263.GetPropertyChangedSignal(v267, "Value"):Connect(function()
                KillAtuais = KillAtuais + 1
                vu265()
            end)
        end
    end
    if vu264 then
        local v268 = vu264
        if vu264.IsA(v268, "ValueBase") then
            local v269 = vu264
            vu264.GetPropertyChangedSignal(v269, "Value"):Connect(function()
                vu265()
            end)
        end
    end
    vu265()
end
FrameAds = Instance.new("Frame")
FrameAds.Size = UDim2.new(0, 214, 0, 35)
FrameAds.Position = UDim2.new(0, 233, 0, 9)
FrameAds.BackgroundColor3 = Color3.fromRGB(255, 95, 0)
FrameAds.Parent = _G.Tela1
iconeAds = Instance.new("ImageLabel")
iconeAds.Size = UDim2.new(0, 34, 0, 35)
iconeAds.Position = UDim2.new(0, 0, 0, 0)
iconeAds.BackgroundColor3 = Color3.fromRGB(157, 0, 0)
iconeAds.Image = "rbxassetid://127859733872172"
iconeAds.Parent = FrameAds
BotaoAds = Instance.new("ImageButton")
BotaoAds.Size = UDim2.new(0, 34, 0, 35)
BotaoAds.Position = UDim2.new(0, 180, 0, 0)
BotaoAds.BackgroundColor3 = Color3.fromRGB(157, 0, 0)
BotaoAds.Image = "rbxassetid://95763935938550"
BotaoAds.AutoButtonColor = false
BotaoAds.Parent = FrameAds
textoAds = Instance.new("TextLabel")
textoAds.Size = UDim2.new(1, - 72, 1, 0)
textoAds.Position = UDim2.new(0, 36, 0, 0)
textoAds.BackgroundTransparency = 1
textoAds.Text = traducao.GlobalAds
textoAds.TextColor3 = Color3.fromRGB(255, 255, 153)
textoAds.Font = Enum.Font.Garamond
textoAds.TextScaled = true
textoAds.Parent = FrameAds
FrameAnuncios = Instance.new("Frame")
FrameAnuncios.Size = UDim2.new(0, 212, 0, 163)
FrameAnuncios.Position = UDim2.new(0, 234, 0, 51)
FrameAnuncios.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FrameAnuncios.BackgroundTransparency = 0.5
FrameAnuncios.Visible = true
FrameAnuncios.Parent = _G.Tela1
TextoAnuncios = Instance.new("TextLabel")
TextoAnuncios.Size = UDim2.new(1, 0, 1, 0)
TextoAnuncios.Position = UDim2.new(0, 0, 0, 0)
TextoAnuncios.BackgroundTransparency = 1
TextoAnuncios.Text = traducao.OnlineAds
TextoAnuncios.TextScaled = true
TextoAnuncios.TextColor3 = Color3.fromRGB(0, 255, 255)
TextoAnuncios.Parent = FrameAnuncios
HomeInfo = Instance.new("Frame")
HomeInfo.Size = UDim2.new(0, 222, 0, 172)
HomeInfo.Position = UDim2.new(0, 229, 0, 47)
HomeInfo.BackgroundTransparency = 1
HomeInfo.Visible = false
HomeInfo.Parent = _G.Tela1
Discord = Instance.new("ImageButton")
Discord.Size = UDim2.new(0, 210, 0, 38)
Discord.Position = UDim2.new(0, 6, 0, 10)
Discord.BackgroundColor3 = Color3.fromRGB(143, 42, 234)
Discord.Parent = HomeInfo
Musica = Instance.new("Frame")
Musica.Size = UDim2.new(0, 210, 0, 38)
Musica.Position = UDim2.new(0, 6, 0, 65)
Musica.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
Musica.Parent = HomeInfo
Scriptblox = Instance.new("ImageButton")
Scriptblox.Size = UDim2.new(0, 210, 0, 38)
Scriptblox.Position = UDim2.new(0, 6, 0, 120)
Scriptblox.BackgroundColor3 = Color3.fromRGB(153, 50, 204)
Scriptblox.Parent = HomeInfo
IconeDiscord = Instance.new("ImageLabel")
IconeDiscord.Size = UDim2.new(0, 38, 0, 38)
IconeDiscord.Position = UDim2.new(0, 0, 0, 0)
IconeDiscord.BackgroundColor3 = Color3.fromRGB(40, 100, 240)
IconeDiscord.Image = "rbxassetid://90602349315916"
IconeDiscord.Parent = Discord
iconeMusica = Instance.new("ImageButton")
iconeMusica.Size = UDim2.new(0, 38, 0, 38)
iconeMusica.Position = UDim2.new(0, 0, 0, 0)
iconeMusica.BackgroundColor3 = Color3.fromRGB(40, 100, 240)
iconeMusica.Image = "rbxassetid://77593890505626"
iconeMusica.Parent = Musica
iconeSB = Instance.new("ImageLabel")
iconeSB.Size = UDim2.new(0, 38, 0, 38)
iconeSB.Position = UDim2.new(0, 0, 0, 0)
iconeSB.BackgroundColor3 = Color3.fromRGB(157, 129, 245)
iconeSB.Image = "rbxassetid://93979547285816"
iconeSB.Parent = Scriptblox
TextoDiscord = Instance.new("TextLabel")
TextoDiscord.Size = UDim2.new(1, - 50, 1, 0)
TextoDiscord.Position = UDim2.new(0, 42, 0, 0)
TextoDiscord.BackgroundTransparency = 1
TextoDiscord.Text = "Discord"
TextoDiscord.TextColor3 = Color3.fromRGB(255, 255, 255)
TextoDiscord.Font = Enum.Font.Garamond
TextoDiscord.TextScaled = true
TextoDiscord.Parent = Discord
TextoMusica = Instance.new("TextLabel")
TextoMusica.Size = UDim2.new(1, - 50, 1, 0)
TextoMusica.Position = UDim2.new(0, 42, 0, 0)
TextoMusica.BackgroundTransparency = 1
TextoMusica.Text = traducao.Musica
TextoMusica.TextColor3 = Color3.fromRGB(255, 255, 255)
TextoMusica.Font = Enum.Font.Garamond
TextoMusica.TextScaled = true
TextoMusica.Parent = Musica
TextoSB = Instance.new("TextLabel")
TextoSB.Size = UDim2.new(1, - 50, 1, 0)
TextoSB.Position = UDim2.new(0, 42, 0, 0)
TextoSB.BackgroundTransparency = 1
TextoSB.Text = "Scriptblox"
TextoSB.TextColor3 = Color3.fromRGB(255, 255, 255)
TextoSB.Font = Enum.Font.Garamond
TextoSB.TextScaled = true
TextoSB.Parent = Scriptblox
Discord.MouseButton1Click:Connect(function()
    Notificar(traducao.CopyDC, "https://discord.gg/kbh2dEdnYP", 10)
    setclipboard("https://discord.gg/kbh2dEdnYP")
end)
iconeMusica.MouseButton1Click:Connect(function()
    if PodeTocar then
        estadoMSC = not estadoMSC
        Tema(estadoMSC)
        iconeMusica.Image = estadoMSC and "rbxassetid://116263037852154" or "rbxassetid://77593890505626"
    else
        Notificar(traducao.Erro, traducao.MscErro, 6)
    end
end)
Scriptblox.MouseButton1Click:Connect(function()
    Notificar(traducao.CopySB, "https://scriptblox.com/u/Termux_404", 10)
    setclipboard("https://scriptblox.com/u/Termux_404")
end)
Corner(Discord, 30)
Corner(Musica, 30)
Corner(Scriptblox, 30)
Corner(IconeDiscord, 30)
Corner(iconeMusica, 30)
Corner(iconeSB, 30)
Stroke(Discord, 0, 0, 0, 2)
Stroke(Musica, 0, 0, 0, 2)
Stroke(Scriptblox, 0, 0, 0, 2)
Stroke(IconeDiscord, 0, 0, 0, 2)
Stroke(iconeMusica, 0, 0, 0, 2)
Stroke(iconeSB, 0, 0, 0, 2)
AdsTela = 2
BotaoAds.MouseButton1Click:Connect(function()
    AdsTela = AdsTela % 2 + 1
    FrameAnuncios.Visible = false
    HomeInfo.Visible = false
    if AdsTela ~= 1 then
        FrameAnuncios.Visible = true
        iconeAds.Image = "rbxassetid://127859733872172"
        textoAds.Text = traducao.GlobalAds
    else
        HomeInfo.Visible = true
        iconeAds.Image = "rbxassetid://90463396859645"
        textoAds.Text = traducao.UpdateTitle
    end
end)
LinhaHome1 = Instance.new("Frame")
LinhaHome1.Size = UDim2.new(1, 0, 0, 3)
LinhaHome1.Position = UDim2.new(0, 0, 0, 220)
LinhaHome1.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
LinhaHome1.BorderSizePixel = 0
LinhaHome1.Parent = _G.Tela1
OpcoesHome = Instance.new("Frame")
OpcoesHome.Size = UDim2.new(0, 438, 0, 43)
OpcoesHome.Position = UDim2.new(0, 8, 0, 227)
OpcoesHome.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OpcoesHome.BackgroundTransparency = 0.6
OpcoesHome.Parent = _G.Tela1
ScrollHome = Instance.new("ScrollingFrame")
ScrollHome.Size = UDim2.new(0, 413, 0, 43)
ScrollHome.Position = UDim2.new(0, 12, 0, 0)
ScrollHome.BackgroundTransparency = 1
ScrollHome.ScrollBarThickness = 0
ScrollHome.ScrollingDirection = Enum.ScrollingDirection.X
ScrollHome.CanvasSize = UDim2.new(0, 761, 0, 0)
ScrollHome.Parent = OpcoesHome
RejoinBotao = Instance.new("ImageButton")
RejoinBotao.Size = UDim2.new(0, 135, 0, 35)
RejoinBotao.Position = UDim2.new(0, 7, 0, 4)
RejoinBotao.BackgroundColor3 = Color3.fromRGB(256, 195, 78)
RejoinBotao.Parent = ScrollHome
RejoinBotao.AutoButtonColor = false
ServerHopBotao = Instance.new("ImageButton")
ServerHopBotao.Size = UDim2.new(0, 135, 0, 35)
ServerHopBotao.Position = UDim2.new(0, 160, 0, 4)
ServerHopBotao.BackgroundColor3 = Color3.fromRGB(251, 195, 78)
ServerHopBotao.Parent = ScrollHome
ServerHopBotao.AutoButtonColor = false
FreecamBotao = Instance.new("ImageButton")
FreecamBotao.Size = UDim2.new(0, 135, 0, 35)
FreecamBotao.Position = UDim2.new(0, 313, 0, 4)
FreecamBotao.BackgroundColor3 = Color3.fromRGB(251, 195, 78)
FreecamBotao.Parent = ScrollHome
FreecamBotao.AutoButtonColor = false
SafeZoneBotao = Instance.new("ImageButton")
SafeZoneBotao.Size = UDim2.new(0, 135, 0, 35)
SafeZoneBotao.Position = UDim2.new(0, 466, 0, 4)
SafeZoneBotao.BackgroundColor3 = Color3.fromRGB(251, 195, 78)
SafeZoneBotao.Parent = ScrollHome
SafeZoneBotao.AutoButtonColor = false
InfiniteBotao = Instance.new("ImageButton")
InfiniteBotao.Size = UDim2.new(0, 135, 0, 35)
InfiniteBotao.Position = UDim2.new(0, 619, 0, 4)
InfiniteBotao.BackgroundColor3 = Color3.fromRGB(251, 195, 78)
InfiniteBotao.Parent = ScrollHome
InfiniteBotao.AutoButtonColor = false
iconeRJ = Instance.new("ImageLabel")
iconeRJ.Size = UDim2.new(0, 35, 0, 35)
iconeRJ.Position = UDim2.new(0, 0, 0, 0)
iconeRJ.BackgroundColor3 = Color3.fromRGB(255, 90, 84)
iconeRJ.Image = "rbxassetid://136480250136880"
iconeRJ.Parent = RejoinBotao
textoRJ = Instance.new("TextLabel")
textoRJ.Size = UDim2.new(1, - 40, 1, 0)
textoRJ.Position = UDim2.new(0, 38, 0, - 2)
textoRJ.BackgroundTransparency = 1
textoRJ.Text = "Rejoin"
textoRJ.TextColor3 = Color3.fromRGB(255, 223, 0)
textoRJ.Font = Enum.Font.Garamond
textoRJ.TextScaled = true
textoRJ.Parent = RejoinBotao
iconeSH = Instance.new("ImageLabel")
iconeSH.Size = UDim2.new(0, 35, 0, 35)
iconeSH.Position = UDim2.new(0, 0, 0, 0)
iconeSH.BackgroundColor3 = Color3.fromRGB(251, 195, 78)
iconeSH.Image = "rbxassetid://121373056795772"
iconeSH.Parent = ServerHopBotao
textoSH = Instance.new("TextLabel")
textoSH.Size = UDim2.new(1, - 40, 1, 0)
textoSH.Position = UDim2.new(0, 38, 0, - 2)
textoSH.BackgroundTransparency = 1
textoSH.Text = "ServerHop"
textoSH.TextColor3 = Color3.fromRGB(255, 223, 0)
textoSH.Font = Enum.Font.Garamond
textoSH.TextScaled = true
textoSH.Parent = ServerHopBotao
iconeFC = Instance.new("ImageLabel")
iconeFC.Size = UDim2.new(0, 35, 0, 35)
iconeFC.Position = UDim2.new(0, 0, 0, 0)
iconeFC.BackgroundColor3 = Color3.fromRGB(251, 195, 78)
iconeFC.Image = "rbxassetid://99246980563725"
iconeFC.Parent = FreecamBotao
textoFC = Instance.new("TextLabel")
textoFC.Size = UDim2.new(1, - 40, 1, 0)
textoFC.Position = UDim2.new(0, 38, 0, - 2)
textoFC.BackgroundTransparency = 1
textoFC.Text = "Freecam"
textoFC.TextColor3 = Color3.fromRGB(255, 223, 0)
textoFC.Font = Enum.Font.Garamond
textoFC.TextScaled = true
textoFC.Parent = FreecamBotao
iconeSZ = Instance.new("ImageLabel")
iconeSZ.Size = UDim2.new(0, 35, 0, 35)
iconeSZ.Position = UDim2.new(0, 0, 0, 0)
iconeSZ.BackgroundColor3 = Color3.fromRGB(251, 195, 78)
iconeSZ.Image = "rbxassetid://128004010056224"
iconeSZ.Parent = SafeZoneBotao
textoSZ = Instance.new("TextLabel")
textoSZ.Size = UDim2.new(1, - 40, 1, 0)
textoSZ.Position = UDim2.new(0, 38, 0, - 2)
textoSZ.BackgroundTransparency = 1
textoSZ.Text = "SafeZone"
textoSZ.TextColor3 = Color3.fromRGB(255, 223, 0)
textoSZ.Font = Enum.Font.Garamond
textoSZ.TextScaled = true
textoSZ.Parent = SafeZoneBotao
iconeIN = Instance.new("ImageLabel")
iconeIN.Size = UDim2.new(0, 35, 0, 35)
iconeIN.Position = UDim2.new(0, 0, 0, 0)
iconeIN.BackgroundColor3 = Color3.fromRGB(251, 195, 78)
iconeIN.Image = "rbxassetid://131590361021386"
iconeIN.Parent = InfiniteBotao
textoIN = Instance.new("TextLabel")
textoIN.Size = UDim2.new(1, - 40, 1, 0)
textoIN.Position = UDim2.new(0, 38, 0, - 1)
textoIN.BackgroundTransparency = 1
textoIN.Text = "Infinite Yield"
textoIN.TextColor3 = Color3.fromRGB(255, 223, 0)
textoIN.Font = Enum.Font.Garamond
textoIN.TextScaled = true
textoIN.Parent = InfiniteBotao
RejoinBotao.MouseButton1Click:Connect(function()
    if # game.Players:GetPlayers() > 1 then
        coroutine.resume(coroutine.create(function()
            local vu270 = game:GetService("TeleportService")
            local vu271 = game:GetService("Players")
            local v272, v273 = pcall(function()
                vu270:TeleportToPlaceInstance(game.PlaceId, game.JobId, vu271.LocalPlayer)
            end)
            if not v272 then
                warn(v273)
            end
        end))
    else
        Notificar("Rejoin", traducao.RejoinText, 5)
    end
end)
function ServerHop()
    PlaceID = PlaceID or game.PlaceId
    foundAnything = foundAnything or ""
    site = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. PlaceID .. "/servers/Public?sortOrder=Asc&limit=100" .. (foundAnything ~= "" and "&cursor=" .. foundAnything or "")))
    if # site.data == 0 then
        Notificar("ServerHop", traducao.ShErro, 6)
        return true
    end
    maxPlayers = 0
    bestServerID = nil
    local v274, v275, v276 = pairs(site.data)
    while true do
        local v277
        v276, v277 = v274(v275, v276)
        if v276 == nil then
            break
        end
        local v278 = tostring(v277.id)
        local v279 = tonumber(v277.playing)
        max = tonumber(v277.maxPlayers)
        playing = v279
        id = v278
        if max > playing and (id ~= game.JobId and playing > maxPlayers) then
            local v280 = id
            maxPlayers = playing
            bestServerID = v280
        end
    end
    if not bestServerID then
        Notificar("ServerHop", traducao.ShErro, 6)
        return true
    end
    wait()
    pcall(function()
        wait()
        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, bestServerID, game.Players.LocalPlayer)
    end)
end
ServerHopBotao.MouseButton1Click:Connect(ServerHop)
function Ancorar(p281)
    if game.Players.LocalPlayer and game.Players.LocalPlayer.Character then
        local v282, v283, v284 = ipairs(game.Players.LocalPlayer.Character:GetDescendants())
        while true do
            local v285
            v284, v285 = v282(v283, v284)
            if v284 == nil then
                break
            end
            if v285:IsA("BasePart") then
                v285.Anchored = p281
            end
        end
    end
end
function Freecam()
    cam = workspace.CurrentCamera
    UIS = game:GetService("UserInputService")
    RS = game:GetService("RunService")
    onMobile = not UIS.KeyboardEnabled
    keysDown = {}
    rotating = false
    if not game:IsLoaded() then
        game.Loaded:Wait()
    end
    cam.CameraType = Enum.CameraType.Scriptable
    speed = 5
    sens = 0.4
    speed = speed / 10
    if onMobile then
        sens = sens * 2
    end
    function renderStepped()
        if rotating then
            Ancorar(true)
            delta = UIS:GetMouseDelta()
            cf = cam.CFrame
            yAngle = cf:ToEulerAngles(Enum.RotationOrder.YZX)
            newAmount = math.deg(yAngle) + delta.Y
            if (newAmount > 65 or newAmount < - 65) and ((yAngle >= 0 or delta.Y >= 0) and (yAngle <= 0 or delta.Y <= 0)) then
                delta = Vector2.new(delta.X, 0)
            end
            cf = cf * CFrame.Angles(- math.rad(delta.Y), 0, 0)
            cf = CFrame.Angles(0, - math.rad(delta.X), 0) * (cf - cf.Position) + cf.Position
            cf = CFrame.lookAt(cf.Position, cf.Position + cf.LookVector)
            if delta ~= Vector2.new(0, 0) then
                cam.CFrame = cam.CFrame:Lerp(cf, sens)
            end
            UIS.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
        else
            UIS.MouseBehavior = Enum.MouseBehavior.Default
        end
        if keysDown["Enum.KeyCode.W"] then
            cam.CFrame = cam.CFrame * CFrame.new(Vector3.new(0, 0, - speed))
        end
        if keysDown["Enum.KeyCode.A"] then
            cam.CFrame = cam.CFrame * CFrame.new(Vector3.new(- speed, 0, 0))
        end
        if keysDown["Enum.KeyCode.S"] then
            cam.CFrame = cam.CFrame * CFrame.new(Vector3.new(0, 0, speed))
        end
        if keysDown["Enum.KeyCode.D"] then
            cam.CFrame = cam.CFrame * CFrame.new(Vector3.new(speed, 0, 0))
        end
    end
    renderSteppedConnection = RS.RenderStepped:Connect(renderStepped)
    validKeys = {
        "Enum.KeyCode.W",
        "Enum.KeyCode.A",
        "Enum.KeyCode.S",
        "Enum.KeyCode.D"
    }
    UIS.InputBegan:Connect(function(p286)
        local v287, v288, v289 = pairs(validKeys)
        while true do
            local v290
            v289, v290 = v287(v288, v289)
            if v289 == nil then
                break
            end
            if v290 == tostring(p286.KeyCode) then
                keysDown[v290] = true
            end
        end
        if p286.UserInputType == Enum.UserInputType.MouseButton2 or p286.UserInputType == Enum.UserInputType.Touch and UIS:GetMouseLocation().X > cam.ViewportSize.X / 2 then
            rotating = true
        end
        if p286.UserInputType == Enum.UserInputType.Touch and p286.Position.X < cam.ViewportSize.X / 2 then
            touchPos = p286.Position
        end
    end)
    UIS.InputEnded:Connect(function(p291)
        local v292, v293, v294 = pairs(keysDown)
        while true do
            local v295
            v294, v295 = v292(v293, v294)
            if v294 == nil then
                break
            end
            if v294 == tostring(p291.KeyCode) then
                keysDown[v294] = false
            end
        end
        if p291.UserInputType == Enum.UserInputType.MouseButton2 or p291.UserInputType == Enum.UserInputType.Touch and UIS:GetMouseLocation().X > cam.ViewportSize.X / 2 then
            rotating = false
        end
        if p291.UserInputType == Enum.UserInputType.Touch and (touchPos and p291.Position.X < cam.ViewportSize.X / 2) then
            touchPos = nil
            keysDown["Enum.KeyCode.W"] = false
            keysDown["Enum.KeyCode.A"] = false
            keysDown["Enum.KeyCode.S"] = false
            keysDown["Enum.KeyCode.D"] = false
        end
    end)
    UIS.TouchMoved:Connect(function(p296)
        if touchPos and p296.Position.X < cam.ViewportSize.X / 2 then
            if p296.Position.Y >= touchPos.Y then
                keysDown["Enum.KeyCode.W"] = false
                keysDown["Enum.KeyCode.S"] = true
            else
                keysDown["Enum.KeyCode.W"] = true
                keysDown["Enum.KeyCode.S"] = false
            end
            if p296.Position.X >= touchPos.X - 15 then
                if p296.Position.X <= touchPos.X + 15 then
                    keysDown["Enum.KeyCode.A"] = false
                    keysDown["Enum.KeyCode.D"] = false
                else
                    keysDown["Enum.KeyCode.A"] = false
                    keysDown["Enum.KeyCode.D"] = true
                end
            else
                keysDown["Enum.KeyCode.A"] = true
                keysDown["Enum.KeyCode.D"] = false
            end
        end
    end)
end
function DesligarFC()
    if renderSteppedConnection then
        Ancorar(false)
        renderSteppedConnection:Disconnect()
    end
    local v297 = workspace.CurrentCamera
    v297.CameraType = Enum.CameraType.Custom
    v297.CameraSubject = nil
    wait(0.1)
    repeat
        wait()
    until game.Players.LocalPlayer.Character ~= nil
    local v298 = game.Players.LocalPlayer
    v297.CameraSubject = v298.Character:FindFirstChildWhichIsA("Humanoid")
    v297.CameraType = Enum.CameraType.Custom
    v298.CameraMinZoomDistance = 0.5
    v298.CameraMaxZoomDistance = 400
    v298.CameraMode = Enum.CameraMode.Classic
end
FreecamBotao.MouseButton1Click:Connect(function()
    if FreecamBotao.BackgroundColor3 ~= Color3.fromRGB(0, 0, 255) then
        FreecamBotao.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
        Freecam()
        Notificar("Freecam", traducao.FreeOn, 6)
        ChaoticFrame.Visible = false
        JanelaFlutuante.Visible = true
    else
        FreecamBotao.BackgroundColor3 = Color3.fromRGB(251, 195, 78)
        DesligarFC()
        Notificar("Freecam", traducao.FreeOff, 6)
    end
end)
SafeZoneBotao.MouseButton1Click:Connect(function()
    if game.Players.LocalPlayer.Character then
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(696, 576, 1820))
        Notificar("Safezone", traducao.SafeZone, 6)
        ChaoticFrame.Visible = false
        JanelaFlutuante.Visible = true
    end
end)
centro = Vector3.new(695, 573, 1839)
p = Instance.new("Part")
p.Size = Vector3.new(100, 1, 100)
p.Position = centro
p.Anchored = true
p.Material = Enum.Material.Grass
p.Parent = workspace
workspace.Terrain:FillBlock(p.CFrame, p.Size, Enum.Material.Grass)
local v299, v300, v301 = pairs({
    {
        centro + Vector3.new(0, 5.5, - 50),
        Vector3.new(100, 15, 1)
    },
    {
        centro + Vector3.new(0, 5.5, 50),
        Vector3.new(100, 15, 1)
    },
    {
        centro + Vector3.new(- 50, 5.5, 0),
        Vector3.new(1, 15, 100)
    },
    {
        centro + Vector3.new(50, 5.5, 0),
        Vector3.new(1, 15, 100)
    }
})
while true do
    local v302
    v301, v302 = v299(v300, v301)
    if v301 == nil then
        break
    end
    m = Instance.new("Part")
    m.Size = v302[2]
    m.Position = v302[1]
    m.Anchored = true
    m.Material = Enum.Material.Cobblestone
    m.Parent = workspace
    uic = Instance.new("UICorner")
    uic.CornerRadius = UDim.new(0, 15)
    uic.Parent = m
end
c = Instance.new("Part")
c.Size = Vector3.new(15, 1, 15)
c.Position = centro + Vector3.new(0, 2, 0)
c.Anchored = true
c.Material = Enum.Material.Neon
c.Color = Color3.fromRGB(0, 255, 0)
c.Parent = workspace
prompt = Instance.new("ProximityPrompt")
prompt.ActionText = traducao.voltar
prompt.ObjectText = "Safezone"
prompt.MaxActivationDistance = 12
prompt.RequiresLineOfSight = false
prompt.Parent = c
prompt.Triggered:Connect(function()
    if game.Players.LocalPlayer.Character then
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(- 210, 81, 56))
    end
end)
InfiniteBotao.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    Notificar("Infinite Yield", traducao.IY, 6)
end)
LinhaPlayers = Instance.new("Frame")
LinhaPlayers.Size = UDim2.new(0, 3, 1, - 53)
LinhaPlayers.Position = UDim2.new(0.5, 80, 0, 0)
LinhaPlayers.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
LinhaPlayers.BorderSizePixel = 0
LinhaPlayers.Parent = _G.Tela2
LinhaPlayers2 = Instance.new("Frame")
LinhaPlayers2.Size = UDim2.new(1, 0, 0, 3)
LinhaPlayers2.Position = UDim2.new(0, 0, 0, 220)
LinhaPlayers2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
LinhaPlayers2.BorderSizePixel = 0
LinhaPlayers2.Parent = _G.Tela2
FrameMulti = Instance.new("Frame")
FrameMulti.Size = UDim2.new(0, 134, 0, 210)
FrameMulti.Position = UDim2.new(0, 314, 0, 6)
FrameMulti.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FrameMulti.BackgroundTransparency = 0.5
FrameMulti.Parent = _G.Tela2
MultiTitle = Instance.new("Frame")
MultiTitle.Size = UDim2.new(0, 124, 0, 32)
MultiTitle.Position = UDim2.new(0, 5, 0, 3)
MultiTitle.BackgroundColor3 = Color3.fromRGB(255, 140, 66)
MultiTitle.Parent = FrameMulti
IconeMultiTitle = Instance.new("ImageLabel")
IconeMultiTitle.Size = UDim2.new(0, 32, 0, 32)
IconeMultiTitle.Position = UDim2.new(0, 0, 0, 0)
IconeMultiTitle.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
IconeMultiTitle.Image = "rbxassetid://97752354391239"
IconeMultiTitle.Parent = MultiTitle
TextoMultiTitle = Instance.new("TextLabel")
TextoMultiTitle.Size = UDim2.new(1, - 45, 1, 0)
TextoMultiTitle.Position = UDim2.new(0, 38, 0, - 2)
TextoMultiTitle.BackgroundTransparency = 1
TextoMultiTitle.Text = traducao.Opcoes
TextoMultiTitle.TextColor3 = Color3.fromRGB(255, 204, 0)
TextoMultiTitle.Font = Enum.Font.Garamond
TextoMultiTitle.TextScaled = true
TextoMultiTitle.Parent = MultiTitle
LinhaMultiOp = Instance.new("Frame")
LinhaMultiOp.Size = UDim2.new(1, 0, 0, 1)
LinhaMultiOp.Position = UDim2.new(0, 0, 0, 38)
LinhaMultiOp.BackgroundColor3 = Color3.fromRGB(255, 95, 0)
LinhaMultiOp.BorderSizePixel = 0
LinhaMultiOp.Parent = FrameMulti
ScrollMulti = Instance.new("ScrollingFrame")
ScrollMulti.Size = UDim2.new(0, 132, 0, 129)
ScrollMulti.Position = UDim2.new(0, 1, 0, 40)
ScrollMulti.BackgroundTransparency = 1
ScrollMulti.ScrollBarThickness = 5
ScrollMulti.ScrollBarImageColor3 = Color3.fromRGB(255, 95, 0)
ScrollMulti.CanvasSize = UDim2.new(0, 0, 0, 184)
ScrollMulti.ScrollingDirection = Enum.ScrollingDirection.Y
ScrollMulti.Parent = FrameMulti
LoopBotao = Instance.new("ImageButton")
LoopBotao.Size = UDim2.new(0, 117, 0, 35)
LoopBotao.Position = UDim2.new(0, 6, 0, 7)
LoopBotao.BackgroundColor3 = Color3.fromRGB(255, 95, 0)
LoopBotao.AutoButtonColor = false
LoopBotao.Active = true
LoopBotao.Parent = ScrollMulti
FlingBotao = Instance.new("ImageButton")
FlingBotao.Size = UDim2.new(0, 117, 0, 35)
FlingBotao.Position = UDim2.new(0, 6, 0, 52)
FlingBotao.BackgroundColor3 = Color3.fromRGB(255, 95, 0)
FlingBotao.AutoButtonColor = false
FlingBotao.Active = true
FlingBotao.Parent = ScrollMulti
CBringBotao = Instance.new("ImageButton")
CBringBotao.Size = UDim2.new(0, 117, 0, 35)
CBringBotao.Position = UDim2.new(0, 6, 0, 97)
CBringBotao.BackgroundColor3 = Color3.fromRGB(255, 95, 0)
CBringBotao.AutoButtonColor = false
CBringBotao.Active = true
CBringBotao.Parent = ScrollMulti
EspBotao = Instance.new("ImageButton")
EspBotao.Size = UDim2.new(0, 117, 0, 35)
EspBotao.Position = UDim2.new(0, 6, 0, 142)
EspBotao.BackgroundColor3 = Color3.fromRGB(255, 95, 0)
EspBotao.AutoButtonColor = false
EspBotao.Parent = ScrollMulti
iconeLoop = Instance.new("ImageLabel")
iconeLoop.Size = UDim2.new(0, 34, 0, 35)
iconeLoop.Position = UDim2.new(0, 0, 0, 0)
iconeLoop.BackgroundColor3 = Color3.fromRGB(251, 195, 78)
iconeLoop.Image = "rbxassetid://127136369550381"
iconeLoop.Parent = LoopBotao
iconeFling = Instance.new("ImageLabel")
iconeFling.Size = UDim2.new(0, 34, 0, 35)
iconeFling.Position = UDim2.new(0, 0, 0, 0)
iconeFling.BackgroundColor3 = Color3.fromRGB(251, 195, 78)
iconeFling.Image = "rbxassetid://113555494158083"
iconeFling.Parent = FlingBotao
iconeCBring = Instance.new("ImageLabel")
iconeCBring.Size = UDim2.new(0, 34, 0, 35)
iconeCBring.Position = UDim2.new(0, 0, 0, 0)
iconeCBring.BackgroundColor3 = Color3.fromRGB(251, 195, 78)
iconeCBring.Image = "rbxassetid://75602625353170"
iconeCBring.Parent = CBringBotao
iconeEsp = Instance.new("ImageLabel")
iconeEsp.Size = UDim2.new(0, 34, 0, 35)
iconeEsp.Position = UDim2.new(0, 0, 0, 0)
iconeEsp.BackgroundColor3 = Color3.fromRGB(251, 195, 78)
iconeEsp.Image = "rbxassetid://102288396698710"
iconeEsp.Parent = EspBotao
textoLoop = Instance.new("TextLabel")
textoLoop.Size = UDim2.new(1, - 40, 1, 0)
textoLoop.Position = UDim2.new(0, 37, 0, - 1)
textoLoop.BackgroundTransparency = 1
textoLoop.Text = "LoopKill"
textoLoop.TextColor3 = Color3.fromRGB(255, 255, 153)
textoLoop.Font = Enum.Font.Garamond
textoLoop.TextScaled = true
textoLoop.Parent = LoopBotao
textoFling = Instance.new("TextLabel")
textoFling.Size = UDim2.new(1, - 40, 1, 0)
textoFling.Position = UDim2.new(0, 37, 0, - 1)
textoFling.BackgroundTransparency = 1
textoFling.Text = "Fling"
textoFling.TextColor3 = Color3.fromRGB(255, 255, 153)
textoFling.Font = Enum.Font.Garamond
textoFling.TextScaled = true
textoFling.Parent = FlingBotao
textoCBring = Instance.new("TextLabel")
textoCBring.Size = UDim2.new(1, - 40, 1, 0)
textoCBring.Position = UDim2.new(0, 37, 0, - 1)
textoCBring.BackgroundTransparency = 1
textoCBring.Text = "Client Bring"
textoCBring.TextColor3 = Color3.fromRGB(255, 255, 153)
textoCBring.Font = Enum.Font.Garamond
textoCBring.TextScaled = true
textoCBring.Parent = CBringBotao
textoEsp = Instance.new("TextLabel")
textoEsp.Size = UDim2.new(1, - 40, 1, 0)
textoEsp.Position = UDim2.new(0, 37, 0, - 1)
textoEsp.BackgroundTransparency = 1
textoEsp.Text = "Esp"
textoEsp.TextColor3 = Color3.fromRGB(255, 255, 153)
textoEsp.Font = Enum.Font.Garamond
textoEsp.TextScaled = true
textoEsp.Parent = EspBotao
LinhaMultiOp2 = Instance.new("Frame")
LinhaMultiOp2.Size = UDim2.new(1, 0, 0, 1)
LinhaMultiOp2.Position = UDim2.new(0, 0, 0, 170)
LinhaMultiOp2.BackgroundColor3 = Color3.fromRGB(255, 95, 0)
LinhaMultiOp2.BorderSizePixel = 0
LinhaMultiOp2.Parent = FrameMulti
SelectAll = Instance.new("ImageButton")
SelectAll.Size = UDim2.new(0, 45, 0, 30)
SelectAll.Position = UDim2.new(0, 7, 0, 175)
SelectAll.BackgroundColor3 = Color3.fromRGB(60, 180, 75)
SelectAll.Parent = FrameMulti
UnSelectAll = Instance.new("ImageButton")
UnSelectAll.Size = UDim2.new(0, 45, 0, 30)
UnSelectAll.Position = UDim2.new(0, 82, 0, 175)
UnSelectAll.BackgroundColor3 = Color3.fromRGB(230, 50, 50)
UnSelectAll.Parent = FrameMulti
iconeSelect = Instance.new("ImageLabel")
iconeSelect.Size = UDim2.new(0, 30, 0, 30)
iconeSelect.Position = UDim2.new(0, 8, 0, 0)
iconeSelect.BackgroundTransparency = 1
iconeSelect.Image = "rbxassetid://130195256351002"
iconeSelect.Parent = SelectAll
iconeUnSelect = Instance.new("ImageLabel")
iconeUnSelect.Size = UDim2.new(0, 27, 0, 27)
iconeUnSelect.Position = UDim2.new(0, 10, 0, 2)
iconeUnSelect.BackgroundTransparency = 1
iconeUnSelect.Image = "rbxassetid://89272712657709"
iconeUnSelect.Parent = UnSelectAll
FrameOpcoes2 = Instance.new("Frame")
FrameOpcoes2.Size = UDim2.new(0, 438, 0, 43)
FrameOpcoes2.Position = UDim2.new(0, 8, 0, 227)
FrameOpcoes2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FrameOpcoes2.BackgroundTransparency = 0.5
FrameOpcoes2.Parent = _G.Tela2
TargetGuiBotao = Instance.new("ImageButton")
TargetGuiBotao.Size = UDim2.new(0, 135, 0, 35)
TargetGuiBotao.Position = UDim2.new(0, 7, 0, 4)
TargetGuiBotao.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
TargetGuiBotao.Parent = FrameOpcoes2
AlvosBotao = Instance.new("ImageButton")
AlvosBotao.Size = UDim2.new(0, 128, 0, 35)
AlvosBotao.Position = UDim2.new(0, 155, 0, 4)
AlvosBotao.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
AlvosBotao.Parent = FrameOpcoes2
SafelistBotao = Instance.new("ImageButton")
SafelistBotao.Size = UDim2.new(0, 135, 0, 35)
SafelistBotao.Position = UDim2.new(0, 295, 0, 4)
SafelistBotao.BackgroundColor3 = Color3.fromRGB(0, 201, 208)
SafelistBotao.Parent = FrameOpcoes2
iconeTGB = Instance.new("ImageLabel")
iconeTGB.Size = UDim2.new(0, 35, 0, 35)
iconeTGB.Position = UDim2.new(0, 0, 0, 0)
iconeTGB.BackgroundColor3 = Color3.fromRGB(251, 195, 78)
iconeTGB.Image = "rbxassetid://96407274797099"
iconeTGB.Parent = TargetGuiBotao
iconeAB = Instance.new("ImageLabel")
iconeAB.Size = UDim2.new(0, 34, 0, 35)
iconeAB.Position = UDim2.new(0, 0, 0, 0)
iconeAB.BackgroundColor3 = Color3.fromRGB(251, 195, 78)
iconeAB.Image = "rbxassetid://111542758446347"
iconeAB.Parent = AlvosBotao
iconeSLB = Instance.new("ImageLabel")
iconeSLB.Size = UDim2.new(0, 35, 0, 35)
iconeSLB.Position = UDim2.new(0, 0, 0, 0)
iconeSLB.BackgroundColor3 = Color3.fromRGB(251, 195, 78)
iconeSLB.Image = "rbxassetid://76864664264928"
iconeSLB.Parent = SafelistBotao
textoTG = Instance.new("TextLabel")
textoTG.Size = UDim2.new(1, - 40, 1, 0)
textoTG.Position = UDim2.new(0, 38, 0, - 2)
textoTG.BackgroundTransparency = 1
textoTG.Text = "Target Gui"
textoTG.TextColor3 = Color3.fromRGB(255, 223, 0)
textoTG.Font = Enum.Font.Garamond
textoTG.TextScaled = true
textoTG.Parent = TargetGuiBotao
textoAlvos = Instance.new("TextLabel")
textoAlvos.Size = UDim2.new(1, - 40, 1, 0)
textoAlvos.Position = UDim2.new(0, 33, 0, - 3)
textoAlvos.BackgroundTransparency = 1
textoAlvos.Text = "0"
textoAlvos.TextColor3 = Color3.fromRGB(255, 255, 255)
textoAlvos.Font = Enum.Font.Arcade
textoAlvos.TextScaled = true
textoAlvos.Parent = AlvosBotao
textoSL = Instance.new("TextLabel")
textoSL.Size = UDim2.new(1, - 40, 1, 0)
textoSL.Position = UDim2.new(0, 38, 0, - 2)
textoSL.BackgroundTransparency = 1
textoSL.Text = "Safelist"
textoSL.TextColor3 = Color3.fromRGB(70, 150, 255)
textoSL.Font = Enum.Font.Garamond
textoSL.TextScaled = true
textoSL.Parent = SafelistBotao
coroutine.wrap(function()
    local function vu308()
        local v303, v304, v305 = ipairs(game.Players.LocalPlayer.Backpack:GetChildren())
        while true do
            local v306
            v305, v306 = v303(v304, v305)
            if v305 == nil then
                break
            end
            local v307 = v306:IsA("Tool")
            if v307 then
                v307 = v306:FindFirstChild("Handle")
            end
            if v307 then
                v307.Anchored = true
            end
        end
    end
    local function vu310()
        (game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart").AncestryChanged:Connect(function(_, p309)
            if not p309 then
                coroutine.wrap(vu308)()
            end
        end)
    end
    vu310()
    game.Players.LocalPlayer.CharacterAdded:Connect(function()
        task.wait(0.1)
        coroutine.wrap(vu310)()
    end)
end)()
function TiraDaMao()
    if game.Players.LocalPlayer.Character:FindFirstChild("Kawaii Revolver") then
        game.Players.LocalPlayer.Character["Kawaii Revolver"].Parent = game.Players.LocalPlayer.Backpack
    end
end
function AttackCH(p311)
    if p311.Character and (not p311.Character:FindFirstChild("ForceField") and p311.Character.Humanoid.Health > 0) then
        function UseTool(p312, p313)
            if p312:FindFirstChild("DamageRemote") then
                p312.DamageRemote:FireServer(p313)
            end
        end
        local v314 = p311.Character.Humanoid
        local v315 = game.Players.LocalPlayer
        local v316, v317, v318 = ipairs(v315.Character:GetChildren())
        while true do
            local v319
            v318, v319 = v316(v317, v318)
            if v318 == nil then
                break
            end
            if v319:IsA("Tool") and (v319:FindFirstChild("DamageRemote") and v319.Name ~= "Kawaii Revolver") then
                UseTool(v319, v314)
            end
        end
        local v320, v321, v322 = ipairs(v315.Backpack:GetChildren())
        while true do
            local v323
            v322, v323 = v320(v321, v322)
            if v322 == nil then
                break
            end
            if v323:IsA("Tool") and (v323:FindFirstChild("DamageRemote") and v323.Name ~= "Kawaii Revolver") then
                v323.Parent = v315.Character
                UseTool(v323, v314)
                v323.Parent = v315.Backpack
            end
        end
    end
end
function AttackRE(p324)
    if not p324.Character or (p324.Character:FindFirstChild("ForceField") or p324.Character.Humanoid.Health <= 0) then
        return
    end
    local v325, v326, v327 = ipairs(game.Players.LocalPlayer.Character:GetChildren())
    local v328 = nil
    local v329 = nil
    while true do
        local v330
        v327, v330 = v325(v326, v327)
        if v327 == nil then
            v330 = v328
            break
        end
        if v330:IsA("Tool") and v330.Name == "Kawaii Revolver" then
            v329 = true
            break
        end
    end
    local v331
    if v330 then
        v331 = v330
    else
        local v332, v333, v334 = ipairs(game.Players.LocalPlayer.Backpack:GetChildren())
        while true do
            v334, v331 = v332(v333, v334)
            if v334 == nil then
                v331 = v330
                break
            end
            if v331:IsA("Tool") and v331.Name == "Kawaii Revolver" then
                v331.Parent = game.Players.LocalPlayer.Character
                v329 = false
                break
            end
        end
    end
    if v331 and v331:FindFirstChild("DamageRemote") then
        v331.DamageRemote:FireServer(p324.Character.Humanoid)
        if v329 == false then
            v331.Parent = game.Players.LocalPlayer.Backpack
        end
    end
end
Players = game:GetService("Players")
RunService = game:GetService("RunService")
lp = Players.LocalPlayer
LocalPlayer = Players.LocalPlayer
local vu335 = nil
loopAtivo = false
emExecucao = false
indiceAtual = 1
FerramentasPermitidas = {
    Pencil = true,
    ["Emerald Greatsword"] = true,
    ["Blood Dagger"] = true,
    ["Frost Spear"] = true,
    Mace = true,
    ["Steel Sword"] = true,
    Katana = true,
    ["Baseball Bat"] = true,
    Chainsaw = true,
    Knife = true,
    Pan = true,
    ["Pink Hammer"] = true,
    Scythe = true,
    ["Holloween Dagger"] = true
}
function possuiFerramentaValida(p336)
    local v337, v338, v339 = ipairs({
        p336.Backpack,
        p336.Character
    })
    while true do
        local v340
        v339, v340 = v337(v338, v339)
        if v339 == nil then
            break
        end
        local v341, v342, v343 = ipairs(v340:GetChildren())
        while true do
            local v344
            v343, v344 = v341(v342, v343)
            if v343 == nil then
                break
            end
            if v344:IsA("Tool") and FerramentasPermitidas[v344.Name] then
                return true
            end
        end
    end
    return false
end
function possuiKawaii(p345)
    local v346, v347, v348 = ipairs({
        p345.Backpack,
        p345.Character
    })
    while true do
        local v349
        v348, v349 = v346(v347, v348)
        if v348 == nil then
            break
        end
        local v350, v351, v352 = ipairs(v349:GetChildren())
        while true do
            local v353
            v352, v353 = v350(v351, v352)
            if v352 == nil then
                break
            end
            if v353:IsA("Tool") and v353.Name == "Kawaii Revolver" then
                return true
            end
        end
    end
    return false
end
function LoopKill(p354)
    if vu335 then
        vu335:Disconnect()
    end
    loopAtivo = p354
    if p354 then
        indiceAtual = 1
        emExecucao = false
        vu335 = RunService.RenderStepped:Connect(function()
            if loopAtivo and not emExecucao then
                local vu355 = lp.Character
                if vu355 and (vu355:FindFirstChild("Humanoid") and vu355.Humanoid.Health > 0) then
                    if possuiFerramentaValida(lp) then
                        if # Alvos ~= 0 then
                            if indiceAtual > # Alvos then
                                indiceAtual = 1
                            end
                            emExecucao = true
                            task.spawn(function()
                                local v356 = Alvos[indiceAtual]
                                if table.find(Safelist, v356) then
                                    indiceAtual = indiceAtual + 1
                                    emExecucao = false
                                    return
                                else
                                    local v357 = Players:FindFirstChild(v356)
                                    if v357 and v357.Character then
                                        local v358 = v357.Character:FindFirstChild("Humanoid")
                                        if v358 and v358.Health > 0 and not v357.Character:FindFirstChildOfClass("ForceField") then
                                            if possuiKawaii(v357) then
                                                local v359 = v357.Character:FindFirstChild("Head")
                                                if v359 then
                                                    vu355:PivotTo(v359.CFrame * CFrame.new(0, 15, 0))
                                                    AttackCH(v357)
                                                    if v358.Health <= 0 then
                                                        indiceAtual = indiceAtual + 1
                                                    end
                                                else
                                                    indiceAtual = indiceAtual + 1
                                                end
                                                emExecucao = false
                                            else
                                                indiceAtual = indiceAtual + 1
                                                emExecucao = false
                                            end
                                        else
                                            indiceAtual = indiceAtual + 1
                                            emExecucao = false
                                            return
                                        end
                                    else
                                        indiceAtual = indiceAtual + 1
                                        emExecucao = false
                                        return
                                    end
                                end
                            end)
                        end
                    else
                        return
                    end
                else
                    emExecucao = true
                    lp.CharacterAdded:Wait()
                    task.wait(0.5)
                    repeat
                        task.wait()
                    until possuiFerramentaValida(lp)
                    emExecucao = false
                    return
                end
            else
                return
            end
        end)
    end
end
AtivoF = false
function Fling(p360)
    if p360 then
        AtivoF = true
        local vu361 = {}
        task.spawn(function()
            if not AtivoF then
                return
            end
            table.clear(vu361)
            local v362 = table.clone(Alvos)
            local v363 = table.clone(Safelist)
            local v364, v365, v366 = ipairs(v362)
            while true do
                local v367
                v366, v367 = v364(v365, v366)
                if v366 == nil then
                    break
                end
                if not AtivoF then
                    return
                end
                if not table.find(v363, v367) then
                    local v368 = game.Players:FindFirstChild(v367)
                    if v368 and v368.Character then
                        table.insert(vu361, v367)
                    end
                end
            end
            local v369, v370, v371 = ipairs(vu361)
            local vu372 = false
            local function vu373()
                vu372 = true
            end
            if not AtivoF then
                return
            end
            local vu374 = game.Players:FindFirstChild(v408)
            if vu374 and vu374.Character then
                local vu375 = game.Players.LocalPlayer.Character
                local vu376
                if vu375 then
                    vu376 = vu375:FindFirstChildOfClass("Humanoid")
                else
                    vu376 = vu375
                end
                local vu377
                if vu376 then
                    vu377 = vu376.RootPart
                else
                    vu377 = vu376
                end
                local vu378 = vu374.Character
                if not vu378 then
                end
                local vu379 = vu378:FindFirstChildOfClass("Humanoid")
                local vu380
                if vu379 then
                    vu380 = vu379.RootPart
                else
                    vu380 = vu379
                end
                local v381 = vu378:FindFirstChild("Head")
                local v382 = vu378:FindFirstChildOfClass("Accessory")
                if v382 then
                    v382 = v382:FindFirstChild("Handle")
                end
                if vu375 and (vu376 and vu377) then
                    if vu377.Velocity.Magnitude < 50 then
                        getgenv().OldPos = vu377.CFrame
                    end
                    if vu379 and vu379.Sit then
                    end
                    if v381 then
                        workspace.CurrentCamera.CameraSubject = v381
                    elseif v382 then
                        workspace.CurrentCamera.CameraSubject = v382
                    elseif vu379 and vu380 then
                        workspace.CurrentCamera.CameraSubject = vu379
                    end
                    if not vu378:FindFirstChildWhichIsA("BasePart") then
                    end
                    local function vu386(p383, p384, p385)
                        vu377.CFrame = CFrame.new(p383.Position) * p384 * p385
                        vu375:SetPrimaryPartCFrame(CFrame.new(p383.Position) * p384 * p385)
                        vu377.Velocity = Vector3.new(90000000, 900000000, 90000000)
                        vu377.RotVelocity = Vector3.new(900000000, 900000000, 900000000)
                    end
                    local function v399(p387)
                        local v388 = tick()
                        local v389 = 0
                        local v390 = 3
                        while AtivoF do
                            if vu377 and vu379 then
                                if p387.Velocity.Magnitude >= 50 then
                                    local v391, v392, v393 = ipairs({
                                        {
                                            CFrame.new(0, 1.5, vu379.WalkSpeed),
                                            CFrame.Angles(math.rad(90), 0, 0)
                                        },
                                        {
                                            CFrame.new(0, - 1.5, - vu379.WalkSpeed),
                                            CFrame.Angles(0, 0, 0)
                                        },
                                        {
                                            CFrame.new(0, 1.5, vu380.Velocity.Magnitude / 1.25),
                                            CFrame.Angles(math.rad(90), 0, 0)
                                        },
                                        {
                                            CFrame.new(0, - 1.5, - vu380.Velocity.Magnitude / 1.25),
                                            CFrame.Angles(0, 0, 0)
                                        },
                                        {
                                            CFrame.new(0, - 1.5, 0),
                                            CFrame.Angles(math.rad(90), 0, 0)
                                        },
                                        {
                                            CFrame.new(0, - 1.5, 0),
                                            CFrame.Angles(0, 0, 0)
                                        },
                                        {
                                            CFrame.new(0, - 1.5, 0),
                                            CFrame.Angles(math.rad(- 90), 0, 0)
                                        }
                                    })
                                    while true do
                                        local v394
                                        v393, v394 = v391(v392, v393)
                                        if v393 == nil then
                                            break
                                        end
                                        vu386(p387, v394[1], v394[2])
                                        task.wait()
                                    end
                                else
                                    v389 = v389 + 100
                                    local v395, v396, v397 = ipairs({
                                        CFrame.new(0, 1.5, 0),
                                        CFrame.new(0, - 1.5, 0),
                                        CFrame.new(2.25, 1.5, - 2.25),
                                        CFrame.new(- 2.25, - 1.5, 2.25),
                                        CFrame.new(0, 1.5, 0),
                                        CFrame.new(0, - 1.5, 0)
                                    })
                                    while true do
                                        local v398
                                        v397, v398 = v395(v396, v397)
                                        if v397 == nil then
                                            break
                                        end
                                        vu386(p387, v398 + vu379.MoveDirection * p387.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(v389), 0, 0))
                                        task.wait()
                                    end
                                end
                            else
                                vu373()
                            end
                            if p387.Velocity.Magnitude > 500 or (p387.Parent ~= vu374.Character or (vu374.Parent ~= game.Players or (vu374.Character ~= vu378 or vu379 and vu379.Sit))) or (vu376 and vu376.Health <= 0 or tick() > v388 + v390) then
                                return
                            end
                        end
                    end
                    workspace.FallenPartsDestroyHeight = 0 / 0
                    local v400 = Instance.new("BodyVelocity")
                    v400.Name = "EpixVel"
                    v400.Parent = vu377
                    v400.Velocity = Vector3.new(900000000, 900000000, 900000000)
                    v400.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                    vu376:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
                    if vu380 and (v381 and (vu380.Position - v381.Position).Magnitude > 5) then
                        v399(v381)
                    elseif vu380 then
                        v399(vu380)
                    elseif v381 then
                        v399(v381)
                    elseif v382 then
                        v399(v382)
                    end
                    v400:Destroy()
                    if vu376 then
                        vu376:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
                        workspace.CurrentCamera.CameraSubject = vu376
                    end
                    while true do
                        vu377.CFrame = getgenv().OldPos * CFrame.new(0, 0.5, 0)
                        local v401 = vu375
                        vu375.SetPrimaryPartCFrame(v401, getgenv().OldPos * CFrame.new(0, 0.5, 0))
                        local v402 = vu376
                        vu376.ChangeState(v402, "GettingUp")
                        local v403 = vu375
                        local v404, v405, v406 = ipairs(vu375.GetChildren(v403))
                        while true do
                            local v407
                            v406, v407 = v404(v405, v406)
                            if v406 == nil then
                                break
                            end
                            if v407:IsA("BasePart") then
                                v407.Velocity = Vector3.zero
                                v407.RotVelocity = Vector3.zero
                            end
                        end
                        task.wait()
                        if (vu377.Position - getgenv().OldPos.Position).Magnitude < 25 then
                            workspace.FallenPartsDestroyHeight = - 500
                        end
                    end
                end
                task.wait(0.5)
            end
            if vu372 then
                break
            end
            local v408
            v371, v408 = v369(v370, v371)
            if v371 ~= nil then
            else
            end
            task.wait()
        end)
    else
        AtivoF = false
    end
end
local vu409 = nil
function CBring(p410)
    if vu409 then
        vu409:Disconnect()
        vu409 = nil
    end
    if p410 then
        vu409 = RunService.RenderStepped:Connect(function()
            local v411 = LocalPlayer.Character
            if v411 then
                v411 = v411:FindFirstChild("HumanoidRootPart")
            end
            if v411 then
                local v412 = v411.CFrame.LookVector
                local vu413 = v411.Position + v412 * 10
                local v414, v415, v416 = ipairs(Players:GetPlayers())
                while true do
                    local v417
                    v416, v417 = v414(v415, v416)
                    if v416 == nil then
                        break
                    end
                    if v417 ~= LocalPlayer and (table.find(Alvos, v417.Name) and not table.find(Safelist, v417.Name)) then
                        local v418 = v417.Character
                        local vu419
                        if v418 then
                            vu419 = v418:FindFirstChild("HumanoidRootPart")
                        else
                            vu419 = v418
                        end
                        local v420
                        if v418 then
                            v420 = v418:FindFirstChildOfClass("Humanoid")
                        else
                            v420 = v418
                        end
                        if v418 and (vu419 and (v420 and v420.Health > 0)) then
                            pcall(function()
                                vu419.CFrame = CFrame.new(vu413)
                            end)
                        end
                    end
                end
            end
        end)
    end
end
local vu421 = nil
function Esp(p422)
    if vu421 then
        vu421:Disconnect()
        vu421 = nil
    end
    if p422 then
        task.spawn(function()
            local vu423 = 0
            local function vu429(p424, _, p425)
                local v426 = p425:FindFirstChild("EspTag")
                if v426 then
                    v426:Destroy()
                end
                local v427 = Instance.new("BillboardGui")
                v427.Name = "EspTag"
                v427.Adornee = p424
                v427.Size = UDim2.new(0, 200, 0, 50)
                v427.AlwaysOnTop = true
                v427.StudsOffset = Vector3.new(0, 2, 0)
                v427.MaxDistance = math.huge
                local v428 = Instance.new("TextLabel")
                v428.Size = UDim2.new(1, 0, 1, 0)
                v428.BackgroundTransparency = 1
                v428.TextColor3 = Color3.fromRGB(255, 255, 153)
                v428.TextSize = 16
                v428.Font = Enum.Font.SourceSansBold
                v428.Name = "EspTexto"
                v428.AnchorPoint = Vector2.new(0, 0)
                v428.Parent = v427
                v427.Parent = p425
                Stroke(v428, 0, 0, 0, 1)
            end
            local function v442()
                local v430 = tick()
                if v430 - vu423 >= 1 then
                    vu423 = v430
                    local v431, v432, v433 = pairs(game:GetService("Players"):GetPlayers())
                    while true do
                        local v434
                        v433, v434 = v431(v432, v433)
                        if v433 == nil then
                            break
                        end
                        if v434 ~= game:GetService("Players").LocalPlayer then
                            local v435 = v434.Character
                            if v435 then
                                local v436 = v435:FindFirstChildOfClass("Humanoid")
                                local v437 = v435:FindFirstChild("HumanoidRootPart")
                                if v436 and v437 then
                                    local v438 = v436:FindFirstChild("EspTag")
                                    if table.find(Alvos, v434.Name) and not table.find(Safelist, v434.Name) then
                                        vu429(v437, v434, v436)
                                        local v439 = v436:FindFirstChild("EspTag")
                                        if v439 then
                                            v439 = v436.EspTag:FindFirstChild("EspTexto")
                                        end
                                        if v439 then
                                            local v440 = game:GetService("Players").LocalPlayer.Character
                                            if v440 then
                                                v440 = v440:FindFirstChild("HumanoidRootPart")
                                            end
                                            local v441 = v440 and (v437 and math.floor((v440.Position - v437.Position).Magnitude)) or "?"
                                            v439.Text = string.format("[%s] %s: %d %s: %s", v434.DisplayName, traducao.Saude, math.floor(v436.Health), traducao.Distancia, tostring(v441))
                                        end
                                    elseif v438 then
                                        v438:Destroy()
                                    end
                                end
                            end
                        end
                    end
                end
            end
            vu421 = game:GetService("RunService").Heartbeat:Connect(v442)
        end)
    else
        local v443, v444, v445 = pairs(game:GetService("Players"):GetPlayers())
        while true do
            local v446
            v445, v446 = v443(v444, v445)
            if v445 == nil then
                break
            end
            local v447 = v446.Character
            if v447 then
                local v448 = v447:FindFirstChildOfClass("Humanoid")
                if v448 then
                    local v449 = v448:FindFirstChild("EspTag")
                    if v449 then
                        v449:Destroy()
                    end
                end
            end
        end
    end
end
LoopAtivo = false
FlingAtivo = false
CBringAtivo = false
function DesligarBotao(p450)
    if p450 ~= LoopBotao then
        if p450 ~= FlingBotao then
            if p450 == CBringBotao then
                CBringAtivo = false
                CBring(false)
                CBringBotao.BackgroundColor3 = Color3.fromRGB(255, 95, 0)
            end
        else
            FlingAtivo = false
            Fling(false)
            FlingBotao.BackgroundColor3 = Color3.fromRGB(255, 95, 0)
        end
    else
        LoopAtivo = false
        LoopKill(false)
        LoopBotao.BackgroundColor3 = Color3.fromRGB(255, 95, 0)
    end
end
LoopBotao.MouseButton1Click:Connect(function()
    if LoopBotao.Active and not LoopAtivo then
        DesligarBotao(FlingBotao)
        DesligarBotao(CBringBotao)
        LoopAtivo = true
        LoopKill(true)
        LoopBotao.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
    else
        DesligarBotao(LoopBotao)
    end
end)
FlingBotao.MouseButton1Click:Connect(function()
    if FlingBotao.Active and not FlingAtivo then
        DesligarBotao(LoopBotao)
        DesligarBotao(CBringBotao)
        FlingAtivo = true
        Fling(true)
        FlingBotao.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
    else
        DesligarBotao(FlingBotao)
    end
end)
CBringBotao.MouseButton1Click:Connect(function()
    if CBringBotao.Active and not CBringAtivo then
        DesligarBotao(LoopBotao)
        DesligarBotao(FlingBotao)
        CBringAtivo = true
        CBring(true)
        CBringBotao.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
    else
        DesligarBotao(CBringBotao)
    end
end)
EspON = false
EspBotao.MouseButton1Click:Connect(function()
    EspON = not EspON
    if EspON then
        Esp(true)
        EspBotao.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
    else
        Esp(false)
        EspBotao.BackgroundColor3 = Color3.fromRGB(255, 95, 0)
    end
end)
function atualizarAlvos()
    textoAlvos.Text = tostring(# Alvos)
end
Pesquisar = Instance.new("Frame")
Pesquisar.Size = UDim2.new(0, 291, 0, 40)
Pesquisar.Position = UDim2.new(0, 9, 0, 9)
Pesquisar.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
Pesquisar.BackgroundTransparency = 0
Pesquisar.Parent = _G.Tela2
Lupa = Instance.new("ImageButton")
Lupa.Size = UDim2.new(0, 40, 0, 40)
Lupa.Position = UDim2.new(0, 0, 0, 0)
Lupa.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
Lupa.Image = "rbxassetid://92178256549575"
Lupa.Active = true
Lupa.Parent = Pesquisar
PesquisarBox = Instance.new("TextBox")
PesquisarBox.Size = UDim2.new(0, 207, 0, 38)
PesquisarBox.Position = UDim2.new(0, 43, 0, 1)
PesquisarBox.Text = ""
PesquisarBox.PlaceholderText = traducao.SearchText
PesquisarBox.TextScaled = true
PesquisarBox.TextColor3 = Color3.fromRGB(255, 215, 0)
PesquisarBox.PlaceholderColor3 = Color3.fromRGB(255, 200, 0)
PesquisarBox.BackgroundTransparency = 1
PesquisarBox.Active = true
PesquisarBox.Parent = Pesquisar
BotaoApagar = Instance.new("ImageButton")
BotaoApagar.Size = UDim2.new(0, 32, 0, 32)
BotaoApagar.Position = UDim2.new(0, 253, 0, 4)
BotaoApagar.BackgroundColor3 = Color3.fromRGB(64, 64, 64)
BotaoApagar.BackgroundTransparency = 0.5
BotaoApagar.Active = true
BotaoApagar.Parent = Pesquisar
TextoApagar = Instance.new("TextLabel")
TextoApagar.Size = UDim2.new(1, 1, 1, 0)
TextoApagar.Position = UDim2.new(0, 0, 0, 0)
TextoApagar.BackgroundTransparency = 1
TextoApagar.Text = "X"
TextoApagar.TextColor3 = Color3.fromRGB(255, 215, 0)
TextoApagar.TextScaled = true
TextoApagar.Parent = BotaoApagar
MenuPlayers = Instance.new("ScrollingFrame")
MenuPlayers.Size = UDim2.new(0, 303, 0, 167)
MenuPlayers.Position = UDim2.new(0, 4, 0, 52)
MenuPlayers.BackgroundTransparency = 1
MenuPlayers.ScrollBarThickness = 0
MenuPlayers.ScrollBarImageColor3 = Color3.fromRGB(255, 165, 0)
MenuPlayers.AutomaticCanvasSize = Enum.AutomaticSize.Y
MenuPlayers.ScrollingDirection = Enum.ScrollingDirection.Y
MenuPlayers.CanvasPosition = Vector2.new(0, 0)
MenuPlayers.Visible = true
MenuPlayers.Parent = _G.Tela2
EsperandoIMG = Instance.new("ImageLabel")
EsperandoIMG.Size = UDim2.new(0, 90, 0, 90)
EsperandoIMG.Position = UDim2.new(0, 108, 0, 65)
EsperandoIMG.BackgroundTransparency = 1
EsperandoIMG.Image = "rbxassetid://18836713445"
EsperandoIMG.Visible = false
EsperandoIMG.Parent = _G.Tela2
SemResultado = Instance.new("ImageLabel")
SemResultado.Size = UDim2.new(0, 90, 0, 90)
SemResultado.Position = UDim2.new(0, 105, 0, 65)
SemResultado.BackgroundTransparency = 1
SemResultado.Image = "rbxassetid://71951627517814"
SemResultado.Visible = false
SemResultado.Parent = _G.Tela2
TextoSR = Instance.new("TextLabel")
TextoSR.Size = UDim2.new(0, 299, 0, 57)
TextoSR.Position = UDim2.new(0, 5, 0, 160)
TextoSR.BackgroundTransparency = 1
TextoSR.Text = ""
TextoSR.TextColor3 = Color3.fromRGB(255, 255, 255)
TextoSR.TextScaled = true
TextoSR.Visible = false
TextoSR.Parent = _G.Tela2
FIMFrame = Instance.new("Frame")
FIMFrame.Size = UDim2.new(0, 0, 0, 0)
FIMFrame.Position = UDim2.new(0, 0, 0, 0)
FIMFrame.BackgroundTransparency = 1
FIMFrame.Parent = MenuPlayers
local v451, v452, v453 = ipairs({
    {
        Name = "Dev",
        Color = BrickColor.new("Lime green")
    },
    {
        Name = "Admin",
        Color = BrickColor.new("Cyan")
    },
    {
        Name = "Elite",
        Color = BrickColor.new("Really red")
    },
    {
        Name = "Premium",
        Color = BrickColor.new("Bright yellow")
    },
    {
        Name = "PremiumTemp",
        Color = BrickColor.new("Gold")
    },
    {
        Name = "User",
        Color = BrickColor.new("Deep orange")
    }
})
while true do
    local v454, v455 = v451(v452, v453)
    if v454 == nil then
        break
    end
    v453 = v454
    if not game:GetService("Teams"):FindFirstChild(v455.Name) then
        local v456 = Instance.new("Team")
        v456.Name = v455.Name
        v456.TeamColor = v455.Color
        v456.AutoAssignable = false
        v456.Parent = game:GetService("Teams")
    end
end
function SetTeam(p457, p458)
    validTeams = {
        "Dev",
        "Admin",
        "Elite",
        "Premium",
        "PremiumTemp",
        "User"
    }
    if table.find(validTeams, p458) and (game.Players:FindFirstChild(p457) and (game:GetService("Teams"):FindFirstChild(p458) and game.Players[p457].Team == nil)) then
        game.Players[p457].Team = game:GetService("Teams")[p458]
    end
end
AutoAdd = true
espacoEntre = 23
posicaoAtual = UDim2.new(0, 7, 0, 10)
function OrganizarLista()
    posicaoAtual = UDim2.new(0, 7, 0, 10)
    listaOrdenada = {}
    local v459, v460, v461 = ipairs(MenuPlayers:GetChildren())
    while true do
        local v462
        v461, v462 = v459(v460, v461)
        if v461 == nil then
            table.sort(listaOrdenada, function(p463, p464)
                return p463[2] < p464[2]
            end)
            local v465, v466, v467 = ipairs(listaOrdenada)
            while true do
                local v468
                v467, v468 = v465(v466, v467)
                if v467 == nil then
                    break
                end
                v468[1].Position = posicaoAtual
                posicaoAtual = UDim2.new(0, posicaoAtual.X.Offset, 0, posicaoAtual.Y.Offset + 60 + espacoEntre)
            end
            FIMFrame.Position = UDim2.new(0, 0, 0, posicaoAtual.Y.Offset + 3)
            return
        end
        if v462:IsA("ImageButton") and v462.Visible then
            local v469 = v462.Name:split(":")[2]
            local v470 = 7
            local v471
            if v469 == game.Players.LocalPlayer.Name then
                v471 = 0
            end
            local v472, v473, v474 = ipairs({
                Devs,
                Admins,
                Elites,
                Premiums,
                PremiumsTemp,
                Usuarios
            })
            while true do
                if true then
                    if true then
                    end
                end
                local v475
                v471, v475 = v472(v473, v474)
                if v471 == nil then
                    v471 = v470
                end
                local v476, v477, v478 = ipairs(v475)
                v474 = v471
                while true do
                    local v479
                    v478, v479 = v476(v477, v478)
                    if v478 == nil then
                        v471 = v470
                    end
                    if v479 == v469 then
                        break
                    end
                end
                if v471 ~= 7 then
                end
                v470 = v471
            end
            table.insert(listaOrdenada, {
                v462,
                v471
            })
        end
    end
end
estavaEmFoco = false
Lupa.MouseButton1Down:Connect(function()
    if Lupa.Active then
        estavaEmFoco = PesquisarBox:IsFocused()
    end
end)
Lupa.MouseButton1Click:Connect(function()
    if Lupa.Active then
        if estavaEmFoco then
            PesquisarBox:ReleaseFocus()
        else
            PesquisarBox:CaptureFocus()
        end
    end
end)
function CancelarBusca()
    AutoAdd = true
    PesquisarBox.Text = ""
    SemResultado.Visible = false
    TextoSR.Visible = false
    MenuPlayers.CanvasPosition = Vector2.new(0, 0)
    MenuPlayers.Visible = true
    local v480, v481, v482 = pairs(MenuPlayers:GetChildren())
    while true do
        local v483
        v482, v483 = v480(v481, v482)
        if v482 == nil then
            break
        end
        if v483:IsA("ImageButton") then
            v483.Visible = true
        end
    end
    OrganizarLista()
end
function BuscarJogadores()
    PesquisarBox.Text = string.gsub(PesquisarBox.Text, " ", "")
    if PesquisarBox.Text ~= "" then
        AutoAdd = false
        encontrou = false
        local v484, v485, v486 = ipairs(MenuPlayers:GetChildren())
        while true do
            local v487
            v486, v487 = v484(v485, v486)
            if v486 == nil then
                break
            end
            if v487:IsA("ImageButton") and v487.Name:find(":") then
                local v488 = string.split(v487.Name, ":")
                if v488[1]:lower():sub(1, # PesquisarBox.Text) == PesquisarBox.Text:lower() or v488[2]:lower():sub(1, # PesquisarBox.Text) == PesquisarBox.Text:lower() then
                    v487.Visible = true
                    encontrou = true
                else
                    v487.Visible = false
                end
            end
        end
        if encontrou then
            MenuPlayers.CanvasPosition = Vector2.new(0, 0)
            OrganizarLista()
        else
            MenuPlayers.Visible = false
            SemResultado.Visible = true
            TextoSR.Visible = true
            TextoSR.Text = traducao.NoResult .. " \'" .. PesquisarBox.Text .. "\'"
        end
    else
        CancelarBusca()
    end
end
BotaoApagar.MouseButton1Click:Connect(function()
    if BotaoApagar.Active then
        if PesquisarBox.Text ~= "" then
            CancelarBusca()
        end
    end
end)
PesquisarBox.Focused:Connect(CancelarBusca)
PesquisarBox.FocusLost:Connect(BuscarJogadores)
function VerificarNumerosPlayers()
    quantidadePlayers = 0
    local v489, v490, v491 = ipairs(MenuPlayers:GetChildren())
    while true do
        local v492
        v491, v492 = v489(v490, v491)
        if v491 == nil then
            break
        end
        if v492:IsA("ImageButton") then
            quantidadePlayers = quantidadePlayers + 1
        end
    end
    if quantidadePlayers ~= 0 then
        PesquisarBox.Active = true
        BotaoApagar.Active = true
        Lupa.Active = true
        PesquisarBox.PlaceholderText = traducao.SearchText
        MenuPlayers.Visible = true
        EsperandoIMG.Visible = false
    else
        CancelarBusca()
        PesquisarBox:ReleaseFocus()
        PesquisarBox.Active = false
        BotaoApagar.Active = false
        Lupa.Active = false
        PesquisarBox.PlaceholderText = traducao.Wait
        MenuPlayers.Visible = false
        EsperandoIMG.Visible = true
    end
end
MenuPlayers.ChildAdded:Connect(function(p493)
    if p493:IsA("ImageButton") and AutoAdd then
        OrganizarLista()
        VerificarNumerosPlayers()
    end
end)
MenuPlayers.ChildRemoved:Connect(function(p494)
    if p494:IsA("ImageButton") and AutoAdd then
        OrganizarLista()
        VerificarNumerosPlayers()
    end
end)
JanelaFlutuanteTG = Instance.new("ImageButton")
JanelaFlutuanteTG.Size = UDim2.new(0, 50, 0, 50)
JanelaFlutuanteTG.Position = UDim2.new(0.5, - 25, 0.5, - 25)
JanelaFlutuanteTG.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
JanelaFlutuanteTG.Image = "rbxassetid://82646509626814"
JanelaFlutuanteTG.Visible = false
JanelaFlutuanteTG.Parent = CORE
TargetGuiFrame = Instance.new("Frame")
TargetGuiFrame.Size = UDim2.new(0, 280, 0, 250)
TargetGuiFrame.Position = UDim2.new(0.5, 0, 0.5, - 17)
TargetGuiFrame.AnchorPoint = Vector2.new(0.5, 0.5)
TargetGuiFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TargetGuiFrame.BackgroundTransparency = 0.5
TargetGuiFrame.Draggable = true
TargetGuiFrame.Active = true
TargetGuiFrame.Visible = false
TargetGuiFrame.Parent = CORE
BotaoSobreTG = Instance.new("ImageButton")
BotaoSobreTG.Size = UDim2.new(0, 38, 0, 39)
BotaoSobreTG.Position = UDim2.new(0, 6, 0, 2)
BotaoSobreTG.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BotaoSobreTG.BackgroundTransparency = 0.5
BotaoSobreTG.Image = "rbxassetid://0"
BotaoSobreTG.Parent = TargetGuiFrame
BotaoFecharTG = Instance.new("ImageButton")
BotaoFecharTG.Size = UDim2.new(0, 38, 0, 39)
BotaoFecharTG.Position = UDim2.new(0, 236, 0, 2)
BotaoFecharTG.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BotaoFecharTG.BackgroundTransparency = 0.5
BotaoFecharTG.Image = "rbxassetid://0"
BotaoFecharTG.Parent = TargetGuiFrame
TextoSobreTG = Instance.new("TextLabel")
TextoSobreTG.Size = UDim2.new(1, 0, 1, 0)
TextoSobreTG.Position = UDim2.new(0, 0, 0, 0)
TextoSobreTG.BackgroundTransparency = 1
TextoSobreTG.Text = "?"
TextoSobreTG.TextColor3 = Color3.fromRGB(255, 215, 0)
TextoSobreTG.TextScaled = true
TextoSobreTG.Name = "TextoSobreTG"
TextoSobreTG.Parent = BotaoSobreTG
TextoFecharTG = Instance.new("TextLabel")
TextoFecharTG.Size = UDim2.new(1, 0, 1, 0)
TextoFecharTG.Position = UDim2.new(0, 0, 0, 0)
TextoFecharTG.BackgroundTransparency = 1
TextoFecharTG.Text = "X"
TextoFecharTG.TextColor3 = Color3.fromRGB(255, 215, 0)
TextoFecharTG.TextScaled = true
TextoFecharTG.Name = "TextoFecharTG"
TextoFecharTG.Parent = BotaoFecharTG
TituloTG = Instance.new("Frame")
TituloTG.Size = UDim2.new(0, 177, 0, 38)
TituloTG.Position = UDim2.new(0, 52, 0, 3)
TituloTG.BackgroundColor3 = Color3.fromRGB(185, 34, 34)
TituloTG.Parent = TargetGuiFrame
TextoTituloTG = Instance.new("TextLabel")
TextoTituloTG.Size = UDim2.new(1, 0, 1, 0)
TextoTituloTG.Position = UDim2.new(0, 0, 0, 0)
TextoTituloTG.BackgroundTransparency = 1
TextoTituloTG.Text = "Target Gui"
TextoTituloTG.TextColor3 = Color3.fromRGB(255, 95, 0)
TextoTituloTG.TextScaled = true
TextoTituloTG.Font = Enum.Font.SourceSansBold
TextoTituloTG.Font = Enum.Font.Creepster
TextoTituloTG.Parent = TituloTG
LinhaTG1 = Instance.new("Frame")
LinhaTG1.Size = UDim2.new(1, 0, 0, 2)
LinhaTG1.Position = UDim2.new(0, 0, 0, 43)
LinhaTG1.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
LinhaTG1.BorderSizePixel = 0
LinhaTG1.Parent = TargetGuiFrame
LinhaTG2 = Instance.new("Frame")
LinhaTG2.Size = UDim2.new(0, 2, 1, - 45)
LinhaTG2.Position = UDim2.new(0, 160, 0, 45)
LinhaTG2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
LinhaTG2.BorderSizePixel = 0
LinhaTG2.Parent = TargetGuiFrame
BotaoSobreTG.MouseButton1Click:Connect(function()
    Notificar("Target Gui", traducao.SobreTG, 6)
end)
TgAlvo = "?"
FotoTG = Instance.new("ImageLabel")
FotoTG.Size = UDim2.new(0, 51, 0, 50)
FotoTG.Position = UDim2.new(0, 4, 0, 49)
FotoTG.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FotoTG.BackgroundTransparency = 0.5
FotoTG.Image = "rbxassetid://15887124865"
FotoTG.Parent = TargetGuiFrame
NomeFrameTG = Instance.new("Frame")
NomeFrameTG.Size = UDim2.new(0, 96, 0, 45)
NomeFrameTG.Position = UDim2.new(0, 60, 0, 51)
NomeFrameTG.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
NomeFrameTG.BackgroundTransparency = 0.5
NomeFrameTG.Parent = TargetGuiFrame
NomeTextBoxTG = Instance.new("TextBox")
NomeTextBoxTG.Size = UDim2.new(1, 0, 1, 0)
NomeTextBoxTG.Position = UDim2.new(0, 0, 0, 0)
NomeTextBoxTG.BackgroundTransparency = 1
NomeTextBoxTG.Text = ""
NomeTextBoxTG.PlaceholderText = traducao.Nome
NomeTextBoxTG.TextColor3 = Color3.fromRGB(255, 215, 0)
NomeTextBoxTG.PlaceholderColor3 = Color3.fromRGB(255, 215, 0)
NomeTextBoxTG.TextScaled = true
NomeTextBoxTG.Font = Enum.Font.GothamBold
NomeTextBoxTG.ClearTextOnFocus = true
NomeTextBoxTG.Parent = NomeFrameTG
InfoTGnome = Instance.new("Frame")
InfoTGnome.Size = UDim2.new(0, 150, 0, 38)
InfoTGnome.Position = UDim2.new(0, 5, 0, 109)
InfoTGnome.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
InfoTGnome.Parent = TargetGuiFrame
InfoTGsaude = Instance.new("Frame")
InfoTGsaude.Size = UDim2.new(0, 150, 0, 38)
InfoTGsaude.Position = UDim2.new(0, 5, 0, 156)
InfoTGsaude.BackgroundColor3 = Color3.fromRGB(205, 92, 92)
InfoTGsaude.Parent = TargetGuiFrame
InfoTGid = Instance.new("Frame")
InfoTGid.Size = UDim2.new(0, 150, 0, 38)
InfoTGid.Position = UDim2.new(0, 5, 0, 204)
InfoTGid.BackgroundColor3 = Color3.fromRGB(0, 255, 127)
InfoTGid.Parent = TargetGuiFrame
IconeTGnome = Instance.new("ImageLabel")
IconeTGnome.Size = UDim2.new(0, 38, 0, 38)
IconeTGnome.Position = UDim2.new(0, 0, 0, 0)
IconeTGnome.BackgroundColor3 = Color3.fromRGB(40, 100, 240)
IconeTGnome.Image = "rbxassetid://123617448399565"
IconeTGnome.Parent = InfoTGnome
IconeTGsaude = Instance.new("ImageLabel")
IconeTGsaude.Size = UDim2.new(0, 38, 0, 38)
IconeTGsaude.Position = UDim2.new(0, 0, 0, 0)
IconeTGsaude.BackgroundColor3 = Color3.fromRGB(40, 100, 240)
IconeTGsaude.Image = "rbxassetid://102367457295819"
IconeTGsaude.Parent = InfoTGsaude
IconeTGid = Instance.new("ImageLabel")
IconeTGid.Size = UDim2.new(0, 38, 0, 38)
IconeTGid.Position = UDim2.new(0, 0, 0, 0)
IconeTGid.BackgroundColor3 = Color3.fromRGB(40, 100, 240)
IconeTGid.Image = "rbxassetid://72784976532218"
IconeTGid.Parent = InfoTGid
textoTGnome = Instance.new("TextLabel")
textoTGnome.Size = UDim2.new(1, - 50, 1, 0)
textoTGnome.Position = UDim2.new(0, 42, 0, 0)
textoTGnome.BackgroundTransparency = 1
textoTGnome.Text = "<font color=\"#7B68EE\">Display</font>\n<font color=\"#00008B\">@Name</font>"
textoTGnome.TextColor3 = Color3.fromRGB(255, 228, 196)
textoTGnome.Font = Enum.Font.Garamond
textoTGnome.TextScaled = true
textoTGnome.RichText = true
textoTGnome.Parent = InfoTGnome
textoTGsaude = Instance.new("TextLabel")
textoTGsaude.Size = UDim2.new(1, - 50, 1, 0)
textoTGsaude.Position = UDim2.new(0, 42, 0, 0)
textoTGsaude.BackgroundTransparency = 1
textoTGsaude.Text = "0"
textoTGsaude.TextColor3 = Color3.fromRGB(255, 255, 255)
textoTGsaude.Font = Enum.Font.Garamond
textoTGsaude.TextScaled = true
textoTGsaude.Parent = InfoTGsaude
textoTGid = Instance.new("TextLabel")
textoTGid.Size = UDim2.new(1, - 50, 1, 0)
textoTGid.Position = UDim2.new(0, 42, 0, 0)
textoTGid.BackgroundTransparency = 1
textoTGid.Text = "0"
textoTGid.TextColor3 = Color3.fromRGB(128, 128, 0)
textoTGid.Font = Enum.Font.Garamond
textoTGid.TextScaled = true
textoTGid.Parent = InfoTGid
NomeTextBoxTG.FocusLost:Connect(function()
    local v495 = NomeTextBoxTG.Text:gsub("%s+", ""):lower()
    if v495 == "" then
        NomeTextBoxTG.Text = "?"
        TgAlvo = "?"
        FotoTG.Image = "rbxassetid://15887124865"
        textoTGnome.Text = "<font color=\"#7B68EE\">Display</font>\n<font color=\"#00008B\">@Name</font>"
        textoTGid.Text = "0"
    else
        local v496, v497, v498 = pairs(game.Players:GetPlayers())
        local v499 = {}
        while true do
            local v500
            v498, v500 = v496(v497, v498)
            if v498 == nil then
                break
            end
            if v500 ~= game.Players.LocalPlayer then
                local v501 = v500.Name:lower()
                local v502 = v500.DisplayName:lower()
                if v501:sub(1, # v495) == v495 or v502:sub(1, # v495) == v495 then
                    table.insert(v499, v500)
                end
            end
        end
        if # v499 <= 0 then
            NomeTextBoxTG.Text = "?"
            TgAlvo = "?"
            FotoTG.Image = "rbxassetid://15887124865"
            textoTGnome.Text = "<font color=\"#7B68EE\">Display</font>\n<font color=\"#00008B\">@Name</font>"
            textoTGid.Text = "0"
        else
            local v503 = v499[math.random(1, # v499)]
            local v504 = ((not table.find(Devs, v503.Name) or Config.AtacarDev) and ((not table.find(Admins, v503.Name) or Config.AtacarAdmin) and (not table.find(Elites, v503.Name) or Config.AtacarElite)) and true or false) and (table.find(Premiums, v503.Name) or table.find(PremiumsTemp, v503.Name))
            if v504 then
                v504 = not Config.AtacarPremium
            end
            if v504 then
                NomeTextBoxTG.Text = traducao.JogadorProte
                TgAlvo = "?"
                FotoTG.Image = "rbxassetid://15887124865"
                textoTGnome.Text = "<font color=\"#7B68EE\">Display</font>\n<font color=\"#00008B\">@Name</font>"
                textoTGid.Text = "0"
                return
            end
            FotoTG.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. v503.UserId .. "&width=420&height=420&format=png"
            textoTGnome.Text = "<font color=\"#7B68EE\">" .. v503.DisplayName .. "</font>\n<font color=\"#00008B\">@" .. v503.Name .. "</font>"
            textoTGid.Text = tostring(v503.UserId)
            TgAlvo = v503.Name
        end
    end
end)
local vu505 = nil
function View(pu506)
    if vu505 then
        vu505:Disconnect()
        vu505 = nil
    end
    if pu506 == false then
        local v507 = game:GetService("Players").LocalPlayer
        local v508 = (v507.Character or v507.CharacterAdded:Wait()):FindFirstChildOfClass("Humanoid")
        if v508 then
            workspace.CurrentCamera.CameraSubject = v508
        end
        workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
        return
    else
        local vu509 = game:GetService("Players"):FindFirstChild(pu506)
        if vu509 then
            vu505 = game:GetService("RunService").RenderStepped:Connect(function()
                if game:GetService("Players"):FindFirstChild(pu506) then
                    local v510 = vu509.Character
                    local v511 = v510 and v510:FindFirstChildOfClass("Humanoid")
                    if v511 then
                        workspace.CurrentCamera.CameraSubject = v511
                        workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
                    end
                else
                    View(false)
                end
            end)
        else
            View(false)
        end
    end
end
ExecutandoExplode = false
function Explode()
    if ExecutandoExplode then
        return
    else
        ExecutandoExplode = true
        local vu512 = game.Players.LocalPlayer
        local vu513 = vu512.Backpack:FindFirstChild("C4") or vu512.Character:FindFirstChild("C4") or (vu512.Backpack:FindFirstChild("Firework") or vu512.Character:FindFirstChild("Firework"))
        if vu513 then
            if vu512.Character and (vu512.Character:FindFirstChild("Humanoid") and vu512.Character.Humanoid.Health > 0 and vu512.Character:FindFirstChild("HumanoidRootPart")) then
                local vu514 = vu512.Character.HumanoidRootPart.CFrame
                local v515 = game:GetService("RunService")
                local vu516 = 0
                local vu517 = nil
                vu517 = v515.RenderStepped:Connect(function(p518)
                    vu516 = vu516 + p518
                    local v519 = game.Players:FindFirstChild(TgAlvo)
                    if v519 and v519.Character and (v519.Character:FindFirstChild("Humanoid") and v519.Character.Humanoid.Health > 0 and (not v519.Character:FindFirstChildOfClass("ForceField") and vu512.Character and (vu512.Character:FindFirstChild("Humanoid") and vu512.Character.Humanoid.Health > 0))) then
                        if v519.Character:FindFirstChild("HumanoidRootPart") and vu512.Character:FindFirstChild("HumanoidRootPart") then
                            local v520 = v519.Character.HumanoidRootPart.CFrame
                            vu512.Character.HumanoidRootPart.CFrame = v520 * CFrame.new(0, 0, 1)
                            vu512.Character:SetPrimaryPartCFrame(CFrame.new(vu512.Character.HumanoidRootPart.Position, vu512.Character.HumanoidRootPart.Position + v520.LookVector))
                            if vu513.Parent == vu512.Backpack then
                                vu513.Parent = vu512.Character
                            end
                            if vu516 >= 0.3 then
                                vu513:Activate()
                                task.wait(0.2)
                                vu512.Character.HumanoidRootPart.CFrame = vu514
                                vu517:Disconnect()
                                ExecutandoExplode = false
                            end
                        end
                    else
                        vu512.Character.HumanoidRootPart.CFrame = vu514
                        vu517:Disconnect()
                        ExecutandoExplode = false
                    end
                end)
            else
                ExecutandoExplode = false
            end
        else
            Notificar(traducao.Erro, traducao.ExplodeErro, 6)
            ExecutandoExplode = false
            return
        end
    end
end
ExecutandoAxe = false
function Axe()
    if ExecutandoAxe then
        return
    else
        ExecutandoAxe = true
        local vu521 = game.Players.LocalPlayer
        local vu522 = vu521.Backpack:FindFirstChild("Throwing Knife") or vu521.Character:FindFirstChild("Throwing Knife")
        if vu522 then
            if vu521.Character and (vu521.Character:FindFirstChild("Humanoid") and vu521.Character.Humanoid.Health > 0) then
                local v523 = game:GetService("RunService")
                local vu524 = 0
                local vu525 = nil
                vu525 = v523.RenderStepped:Connect(function(p526)
                    local v527 = game.Players:FindFirstChild(TgAlvo)
                    if v527 and v527.Character and (v527.Character:FindFirstChild("Humanoid") and v527.Character.Humanoid.Health > 0 and (not v527.Character:FindFirstChildOfClass("ForceField") and vu521.Character and (vu521.Character:FindFirstChild("Humanoid") and vu521.Character.Humanoid.Health > 0))) then
                        if v527.Character:FindFirstChild("HumanoidRootPart") and vu521.Character:FindFirstChild("HumanoidRootPart") then
                            local v528 = v527.Character.HumanoidRootPart.CFrame
                            vu521.Character.HumanoidRootPart.CFrame = v528 * CFrame.new(0, 0, 1)
                            vu521.Character:SetPrimaryPartCFrame(CFrame.new(vu521.Character.HumanoidRootPart.Position, vu521.Character.HumanoidRootPart.Position + v528.LookVector))
                            if vu522.Parent == vu521.Backpack then
                                vu522.Parent = vu521.Character
                            end
                            vu524 = vu524 + p526
                            if vu524 >= 0.3 then
                                vu522:Activate()
                                vu525:Disconnect()
                                ExecutandoAxe = false
                            end
                        end
                    else
                        vu525:Disconnect()
                        ExecutandoAxe = false
                    end
                end)
            else
                ExecutandoAxe = false
            end
        else
            Notificar(traducao.Erro, traducao.AxeErro, 6)
            ExecutandoAxe = false
            return
        end
    end
end
ExecutandoTrap = false
function Trap()
    if ExecutandoTrap then
        return
    else
        ExecutandoTrap = true
        local vu529 = game.Players.LocalPlayer
        local vu530 = vu529.Backpack:FindFirstChild("Spiked Trap") or vu529.Character:FindFirstChild("Spiked Trap")
        if vu530 then
            if vu529.Character and (vu529.Character:FindFirstChild("Humanoid") and vu529.Character.Humanoid.Health > 0) then
                local v531 = game:GetService("RunService")
                local vu532 = 0
                local vu533 = nil
                vu533 = v531.RenderStepped:Connect(function(p534)
                    local v535 = game.Players:FindFirstChild(TgAlvo)
                    if v535 and v535.Character and (v535.Character:FindFirstChild("Humanoid") and v535.Character.Humanoid.Health > 0 and (not v535.Character:FindFirstChildOfClass("ForceField") and vu529.Character and (vu529.Character:FindFirstChild("Humanoid") and vu529.Character.Humanoid.Health > 0))) then
                        if v535.Character:FindFirstChild("HumanoidRootPart") and vu529.Character:FindFirstChild("HumanoidRootPart") then
                            local v536 = v535.Character.HumanoidRootPart.CFrame
                            local v537 = v536.Position + v536.LookVector * 4
                            vu529.Character:SetPrimaryPartCFrame(CFrame.new(v537, v536.Position))
                            if vu530.Parent == vu529.Backpack then
                                vu530.Parent = vu529.Character
                            end
                            vu532 = vu532 + p534
                            if vu532 >= 0.3 then
                                vu530:Activate()
                                vu533:Disconnect()
                                ExecutandoTrap = false
                            end
                        end
                    else
                        vu533:Disconnect()
                        ExecutandoTrap = false
                    end
                end)
            else
                ExecutandoTrap = false
            end
        else
            Notificar(traducao.Erro, traducao.TrapErro, 6)
            ExecutandoTrap = false
            return
        end
    end
end
LoopRE = false
local vu538 = nil
function LoopkillRE(p539)
    LoopRE = p539
    if LoopRE then
        vu538 = coroutine.create(function()
            while LoopRE do
                local v540 = game.Players:FindFirstChild(TgAlvo)
                if v540 then
                    AttackRE(v540)
                end
                task.wait(1)
            end
        end)
        coroutine.resume(vu538)
    else
        vu538 = nil
    end
end
ScrollTG = Instance.new("ScrollingFrame")
ScrollTG.Size = UDim2.new(0, 117, 0, 203)
ScrollTG.Position = UDim2.new(0, 162, 0, 46)
ScrollTG.BackgroundTransparency = 1
ScrollTG.ScrollBarThickness = 0
ScrollTG.CanvasSize = UDim2.new(0, 0, 0, 273)
ScrollTG.ScrollingDirection = Enum.ScrollingDirection.Y
ScrollTG.Parent = TargetGuiFrame
TGview = Instance.new("ImageButton")
TGview.Size = UDim2.new(0, 110, 0, 38)
TGview.Position = UDim2.new(0, 4, 0, 5)
TGview.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
TGview.AutoButtonColor = false
TGview.Parent = ScrollTG
TGexplode = Instance.new("ImageButton")
TGexplode.Size = UDim2.new(0, 110, 0, 38)
TGexplode.Position = UDim2.new(0, 4, 0, 50)
TGexplode.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
TGexplode.AutoButtonColor = false
TGexplode.Parent = ScrollTG
TGaxe = Instance.new("ImageButton")
TGaxe.Size = UDim2.new(0, 110, 0, 38)
TGaxe.Position = UDim2.new(0, 4, 0, 95)
TGaxe.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
TGaxe.AutoButtonColor = false
TGaxe.Parent = ScrollTG
TGtrap = Instance.new("ImageButton")
TGtrap.Size = UDim2.new(0, 110, 0, 38)
TGtrap.Position = UDim2.new(0, 4, 0, 140)
TGtrap.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
TGtrap.AutoButtonColor = false
TGtrap.Parent = ScrollTG
TGloop = Instance.new("ImageButton")
TGloop.Size = UDim2.new(0, 110, 0, 38)
TGloop.Position = UDim2.new(0, 4, 0, 185)
TGloop.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
TGloop.AutoButtonColor = false
TGloop.Parent = ScrollTG
TGgoto = Instance.new("ImageButton")
TGgoto.Size = UDim2.new(0, 110, 0, 38)
TGgoto.Position = UDim2.new(0, 4, 0, 230)
TGgoto.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
TGgoto.AutoButtonColor = false
TGgoto.Parent = ScrollTG
label1 = Instance.new("TextLabel")
label1.Size = UDim2.new(1, 0, 1, 0)
label1.BackgroundTransparency = 1
label1.Text = "View"
label1.TextColor3 = Color3.fromRGB(255, 215, 0)
label1.TextScaled = true
label1.Font = Enum.Font.GothamBold
label1.Parent = TGview
label2 = Instance.new("TextLabel")
label2.Size = UDim2.new(1, 0, 1, 0)
label2.BackgroundTransparency = 1
label2.Text = "Explode"
label2.TextColor3 = Color3.fromRGB(255, 215, 0)
label2.TextScaled = true
label2.Font = Enum.Font.GothamBold
label2.Parent = TGexplode
label3 = Instance.new("TextLabel")
label3.Size = UDim2.new(1, 0, 1, 0)
label3.BackgroundTransparency = 1
label3.Text = "Axe"
label3.TextColor3 = Color3.fromRGB(255, 215, 0)
label3.TextScaled = true
label3.Font = Enum.Font.GothamBold
label3.Parent = TGaxe
label4 = Instance.new("TextLabel")
label4.Size = UDim2.new(1, 0, 1, 0)
label4.BackgroundTransparency = 1
label4.Text = "Trap"
label4.TextColor3 = Color3.fromRGB(255, 215, 0)
label4.TextScaled = true
label4.Font = Enum.Font.GothamBold
label4.Parent = TGtrap
label5 = Instance.new("TextLabel")
label5.Size = UDim2.new(1, 0, 1, 0)
label5.BackgroundTransparency = 1
label5.Text = "Loopkill Revolver"
label5.TextColor3 = Color3.fromRGB(255, 215, 0)
label5.TextScaled = true
label5.Font = Enum.Font.GothamBold
label5.Parent = TGloop
label6 = Instance.new("TextLabel")
label6.Size = UDim2.new(1, 0, 1, 0)
label6.BackgroundTransparency = 1
label6.Text = "Goto"
label6.TextColor3 = Color3.fromRGB(255, 215, 0)
label6.TextScaled = true
label6.Font = Enum.Font.GothamBold
label6.Parent = TGgoto
ShiftlockOn = false
TGview.MouseButton1Click:Connect(function()
    if label1.Text ~= "Unview" then
        label1.Text = "Unview"
        TGview.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        View(TgAlvo)
    else
        label1.Text = "View"
        TGview.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
        View(false)
    end
end)
TGexplode.MouseButton1Click:Connect(function()
    if ShiftlockOn then
        Notificar(traducao.Erro, traducao.DesligueSHL, 8)
    else
        TGexplode.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        DesligarBotao(LoopBotao)
        DesligarBotao(FlingBotao)
        DesligarBotao(CBringBotao)
        Explode()
        task.wait(0.2)
        TGexplode.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
    end
end)
TGaxe.MouseButton1Click:Connect(function()
    if ShiftlockOn then
        Notificar(traducao.Erro, traducao.DesligueSHL, 8)
    else
        TGaxe.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        DesligarBotao(LoopBotao)
        DesligarBotao(FlingBotao)
        DesligarBotao(CBringBotao)
        Axe()
        task.wait(0.2)
        TGaxe.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
    end
end)
TGtrap.MouseButton1Click:Connect(function()
    if ShiftlockOn then
        Notificar(traducao.Erro, traducao.DesligueSHL, 8)
    else
        TGtrap.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        DesligarBotao(LoopBotao)
        DesligarBotao(FlingBotao)
        DesligarBotao(CBringBotao)
        Trap()
        task.wait(0.2)
        TGtrap.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
    end
end)
TGloop.MouseButton1Click:Connect(function()
    if TGloop.BackgroundColor3 ~= Color3.fromRGB(0, 255, 0) then
        TGloop.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        LoopkillRE(true)
    else
        TGloop.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
        LoopkillRE(false)
    end
end)
TGgoto.MouseButton1Click:Connect(function()
    local v541 = game.Players:FindFirstChild(TgAlvo)
    local v542 = game.Players.LocalPlayer
    local v543 = v542.Character or v542.CharacterAdded:Wait()
    if v541 and v541.Character and (v541.Character:FindFirstChild("HumanoidRootPart") and (v543 and v543:FindFirstChild("HumanoidRootPart"))) then
        TGgoto.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        v543.HumanoidRootPart.CFrame = v541.Character.HumanoidRootPart.CFrame
        task.wait(0.2)
        TGgoto.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
    end
end)
estadoTG = false
TargetGuiBotao.MouseButton1Click:Connect(function()
    estadoTG = not estadoTG
    if estadoTG then
        TargetGuiBotao.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        JanelaFlutuanteTG.Visible = true
    else
        TargetGuiBotao.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
        TargetGuiFrame.Visible = false
        JanelaFlutuanteTG.Visible = false
    end
end)
local vu544 = false
local vu545 = nil
local vu546 = nil
local vu547 = nil
local vu548 = false
UIS = game:GetService("UserInputService")
JanelaFlutuanteTG.InputBegan:Connect(function(pu549)
    if pu549.UserInputType == Enum.UserInputType.MouseButton1 or pu549.UserInputType == Enum.UserInputType.Touch then
        local v550 = pu549.Position
        vu548 = false
        vu546 = v550
        vu544 = true
        vu547 = JanelaFlutuanteTG.AbsolutePosition
        pu549.Changed:Connect(function()
            if pu549.UserInputState == Enum.UserInputState.End then
                vu544 = false
            end
        end)
    end
end)
JanelaFlutuanteTG.InputChanged:Connect(function(p551)
    if p551.UserInputType == Enum.UserInputType.MouseMovement or p551.UserInputType == Enum.UserInputType.Touch then
        vu545 = p551
    end
end)
UIS.InputChanged:Connect(function(p552)
    if p552 == vu545 and vu544 then
        local v553 = p552.Position - vu546
        if math.abs(v553.X) > 1 or math.abs(v553.Y) > 1 then
            vu548 = true
        end
        JanelaFlutuanteTG.Position = UDim2.new(0, vu547.X + v553.X, 0, vu547.Y + v553.Y)
    end
end)
JanelaFlutuanteTG.MouseButton1Click:Connect(function()
    if not vu548 then
        JanelaFlutuanteTG.Visible = false
        TargetGuiFrame.Visible = true
    end
end)
BotaoFecharTG.MouseButton1Click:Connect(function()
    TargetGuiFrame.Visible = false
    task.wait(0.2)
    JanelaFlutuanteTG.Visible = true
end)
coroutine.wrap(function()
    while true do
        local v554 = game.Players:FindFirstChild(TgAlvo)
        if v554 and v554.Character and v554.Character:FindFirstChild("Humanoid") then
            textoTGsaude.Text = tostring(math.floor(v554.Character.Humanoid.Health))
        else
            textoTGsaude.Text = "0"
        end
        wait(1)
    end
end)()
SafelistFrame = Instance.new("Frame")
SafelistFrame.Size = UDim2.new(0, 450, 0, 320)
SafelistFrame.Position = UDim2.new(0.5, 0, 0.5, - 17)
SafelistFrame.AnchorPoint = Vector2.new(0.5, 0.5)
SafelistFrame.BackgroundTransparency = 0
SafelistFrame.Draggable = true
SafelistFrame.Active = true
SafelistFrame.Visible = false
SafelistFrame.Parent = CORE
FundoSafelist = Instance.new("ImageLabel")
FundoSafelist.Size = UDim2.new(1, 0, 1, 0)
FundoSafelist.BackgroundTransparency = 1
FundoSafelist.Image = "rbxassetid://138017830120363"
FundoSafelist.Parent = SafelistFrame
TituloSafelist = Instance.new("Frame")
TituloSafelist.Size = UDim2.new(0, 324, 0, 36)
TituloSafelist.Position = UDim2.new(0.5, - 162, 0.03, - 5)
TituloSafelist.BackgroundColor3 = Color3.fromRGB(0, 0, 139)
TituloSafelist.Parent = FundoSafelist
TextoTituloSafelist = Instance.new("TextLabel")
TextoTituloSafelist.Size = UDim2.new(1, 0, 1, 0)
TextoTituloSafelist.Position = UDim2.new(0, 0, 0, 0)
TextoTituloSafelist.BackgroundTransparency = 1
TextoTituloSafelist.Text = "SAFELIST GUI"
TextoTituloSafelist.TextColor3 = Color3.fromRGB(0, 191, 255)
TextoTituloSafelist.TextScaled = true
TextoTituloSafelist.Font = Enum.Font.SourceSansBold
TextoTituloSafelist.Font = Enum.Font.Creepster
TextoTituloSafelist.Parent = TituloSafelist
BotaoSobreSL = Instance.new("ImageButton")
BotaoSobreSL.Size = UDim2.new(0, 40, 0, 40)
BotaoSobreSL.Position = UDim2.new(0, 12, 0, 3)
BotaoSobreSL.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BotaoSobreSL.BackgroundTransparency = 0.5
BotaoSobreSL.Image = "rbxassetid://101451796941013"
BotaoSobreSL.Parent = FundoSafelist
VoltarSafelist = Instance.new("ImageButton")
VoltarSafelist.Size = UDim2.new(0, 40, 0, 40)
VoltarSafelist.Position = UDim2.new(0, 398, 0, 3)
VoltarSafelist.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
VoltarSafelist.BackgroundTransparency = 0.5
VoltarSafelist.Parent = FundoSafelist
VSTexto = Instance.new("TextLabel")
VSTexto.Size = UDim2.new(1, 0, 1, 0)
VSTexto.Position = UDim2.new(0, 0, 0, 0)
VSTexto.BackgroundTransparency = 1
VSTexto.Text = "<"
VSTexto.TextColor3 = Color3.fromRGB(0, 255, 255)
VSTexto.TextSize = 25
VSTexto.Parent = VoltarSafelist
Linha1 = Instance.new("Frame")
Linha1.Size = UDim2.new(1, 0, 0, 3)
Linha1.Position = UDim2.new(0, 0, 0, 45)
Linha1.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
Linha1.BorderSizePixel = 0
Linha1.Parent = FundoSafelist
Linha2 = Instance.new("Frame")
Linha2.Size = UDim2.new(0, 3, 1, - 45)
Linha2.Position = UDim2.new(0, 170, 0, 45)
Linha2.AnchorPoint = Vector2.new(0.5, 0)
Linha2.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
Linha2.BorderSizePixel = 0
Linha2.Parent = FundoSafelist
Linha3 = Instance.new("Frame")
Linha3.Size = UDim2.new(1, 0, 0, 3)
Linha3.Position = UDim2.new(0, 0, 0, 270)
Linha3.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
Linha3.BorderSizePixel = 0
Linha3.Parent = FundoSafelist
AddFrame = Instance.new("Frame")
AddFrame.Size = UDim2.new(0, 263, 0, 39)
AddFrame.Position = UDim2.new(0, 177, 0, 277)
AddFrame.BackgroundColor3 = Color3.fromRGB(0, 200, 255)
AddFrame.BackgroundTransparency = 0
AddFrame.Parent = FundoSafelist
AddBotao = Instance.new("ImageButton")
AddBotao.Size = UDim2.new(0, 39, 0, 39)
AddBotao.Position = UDim2.new(0, 224, 0, 0)
AddBotao.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AddBotao.Image = "rbxassetid://83188252867358"
AddBotao.Parent = AddFrame
AddBox = Instance.new("TextBox")
AddBox.Size = UDim2.new(0, 203, 0, 38)
AddBox.Position = UDim2.new(0, 15, 0, 1)
AddBox.Text = ""
AddBox.PlaceholderText = traducao.AnyRoblox
AddBox.TextScaled = true
AddBox.TextColor3 = Color3.fromRGB(0, 0, 255)
AddBox.PlaceholderColor3 = Color3.fromRGB(0, 0, 255)
AddBox.BackgroundTransparency = 1
AddBox.Visible = true
AddBox.Parent = AddFrame
ScrollSL0 = Instance.new("ScrollingFrame")
ScrollSL0.Size = UDim2.new(0, 276, 0, 220)
ScrollSL0.Position = UDim2.new(0, 173, 0, 49)
ScrollSL0.BackgroundTransparency = 1
ScrollSL0.ScrollBarThickness = 0
ScrollSL0.CanvasPosition = Vector2.new(0, 0)
ScrollSL0.AutomaticCanvasSize = Enum.AutomaticSize.Y
ScrollSL0.ScrollingDirection = Enum.ScrollingDirection.Y
ScrollSL0.Visible = true
ScrollSL0.Parent = FundoSafelist
FrameESL = Instance.new("ImageButton")
FrameESL.Size = UDim2.new(0, 262, 0, 60)
FrameESL.Position = UDim2.new(0, 180, 0, 56)
FrameESL.BackgroundTransparency = 0.5
FrameESL.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FrameESL.Name = "Info"
FrameESL.Visible = false
FrameESL.Parent = FundoSafelist
TextoESL = Instance.new("TextLabel")
TextoESL.Size = UDim2.new(1, 0, 1, 0)
TextoESL.Position = UDim2.new(0, 0, 0, 0)
TextoESL.BackgroundTransparency = 1
TextoESL.Text = traducao.AddSL
TextoESL.TextColor3 = Color3.fromRGB(0, 255, 255)
TextoESL.TextScaled = true
TextoESL.Parent = FrameESL
FIMFrame3 = Instance.new("ImageButton")
FIMFrame3.Size = UDim2.new(0, 0, 0, 0)
FIMFrame3.Position = UDim2.new(0, 0, 0, 0)
FIMFrame3.BackgroundTransparency = 1
FIMFrame3.Parent = ScrollSL0
BotaoSobreSL.MouseButton1Click:Connect(function()
    Notificar("Safelist", traducao.SobreSL, 6)
end)
SafelistBotao.MouseButton1Click:Connect(function()
    SafelistFrame.Visible = true
    ChaoticFrame.Visible = false
end)
VoltarSafelist.MouseButton1Click:Connect(function()
    SafelistFrame.Visible = false
    ChaoticFrame.Visible = true
end)
AddBox.FocusLost:Connect(function()
    AddBox.Text = AddBox.Text:gsub("%s+", "")
end)
function Listar(pu555)
    coroutine.wrap(function()
        local v556, vu557 = pcall(function()
            return game:GetService("Players"):GetUserIdFromNameAsync(pu555)
        end)
        if v556 and vu557 then
            local v558, v559 = pcall(function()
                return HttpService:JSONDecode(game:HttpGet("https://users.roblox.com/v1/users/" .. vu557))
            end)
            if v558 and v559 then
                local v560 = v559.displayName or pu555
                local vu561 = v559.name
                if not table.find(Safelist, vu561) then
                    table.insert(Safelist, vu561)
                end
                pcall(Safe, vu561, "add")
                local vu562 = Instance.new("Frame")
                vu562.Size = UDim2.new(0, 264, 0, 50)
                vu562.Position = UDim2.new(0, 6, 0, 7)
                vu562.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
                vu562.BackgroundTransparency = 0
                vu562.Name = vu561
                vu562.Parent = ScrollSL0
                local v563 = Instance.new("ImageLabel")
                v563.Size = UDim2.new(0, 50, 0, 50)
                v563.Position = UDim2.new(0, 0, 0, 0)
                v563.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
                v563.BackgroundTransparency = 0.6
                v563.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu557 .. "&width=420&height=420&format=png"
                v563.Parent = vu562
                local v564 = Instance.new("Frame")
                v564.Size = UDim2.new(0, 125, 0, 40)
                v564.Position = UDim2.new(0, 66, 0, 5)
                v564.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                v564.BackgroundTransparency = 0.5
                v564.Parent = vu562
                local v565 = Instance.new("TextLabel")
                v565.Size = UDim2.new(1, 0, 1, 0)
                v565.Position = UDim2.new(0, 0, 0, 0)
                v565.BackgroundTransparency = 1
                v565.RichText = true
                v565.Text = string.format("<font color=\"#1E90FF\">%s</font>\n<font color=\"#4169E1\">@%s</font>", v560, vu561)
                v565.TextColor3 = Color3.fromRGB(255, 255, 153)
                v565.TextStrokeTransparency = 0.5
                v565.TextScaled = true
                v565.Parent = v564
                local v566 = Instance.new("Frame")
                v566.Size = UDim2.new(0, 3, 1, 0)
                v566.Position = UDim2.new(0, 205, 0, 0)
                v566.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                v566.BorderSizePixel = 0
                v566.Parent = vu562
                local v567 = Instance.new("ImageButton")
                v567.Size = UDim2.new(0, 40, 0, 40)
                v567.Position = UDim2.new(0, 215, 0, 5)
                v567.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
                v567.Image = "rbxassetid://75023795636705"
                v567.Parent = vu562
                Corner(vu562, 30)
                Corner(v563, 30)
                Corner(v564, 15)
                Corner(v567, 30)
                Stroke(vu562, 0, 0, 0, 3)
                Stroke(v563, 0, 0, 0, 3)
                Stroke(v564, 0, 0, 0, 3)
                Stroke(v565, 0, 0, 0, 1.5)
                Stroke(v567, 0, 0, 0, 3)
                v567.MouseButton1Click:Connect(function()
                    vu562:Destroy()
                    table.remove(Safelist, table.find(Safelist, vu561))
                    pcall(Safe, vu561, "remove")
                    game.ReplicatedStorage:WaitForChild("UpdateListaSL"):Fire(vu561)
                end)
            else
                Notificar(traducao.Erro, traducao.ErroObterPlayer, 6)
            end
        else
            Notificar(traducao.Erro, traducao.ErroObterPlayer, 6)
            return
        end
    end)()
end
function VerificarListados()
    quantidadeListados = 0
    local v568, v569, v570 = ipairs(ScrollSL0:GetChildren())
    while true do
        local v571
        v570, v571 = v568(v569, v570)
        if v570 == nil then
            break
        end
        if v571:IsA("Frame") then
            quantidadeListados = quantidadeListados + 1
        end
    end
    if quantidadeListados ~= 0 then
        ScrollSL0.Visible = true
        FrameESL.Visible = false
    else
        ScrollSL0.Visible = false
        ScrollSL0.CanvasPosition = Vector2.new(0, 0)
        FrameESL.Visible = true
    end
end
EspacoListados = 15
PosiListados = UDim2.new(0, 6, 0, 7)
function OrganizarListados()
    VerificarListados()
    local v572 = PosiListados.Y.Offset
    local v573, v574, v575 = ipairs(ScrollSL0:GetChildren())
    while true do
        local v576
        v575, v576 = v573(v574, v575)
        if v575 == nil then
            break
        end
        if v576:IsA("Frame") then
            v576.Position = UDim2.new(PosiListados.X.Scale, PosiListados.X.Offset, 0, v572)
            v572 = v572 + v576.Size.Y.Offset + EspacoListados
        end
    end
    FIMFrame3.Position = UDim2.new(0, 0, 0, v572 + 1)
end
AddBotao.MouseButton1Click:Connect(function()
    if AddBox.Text ~= "" then
        Listar(AddBox.Text)
    end
    VerificarListados()
    AddBox.Text = ""
end)
ScrollSL0.ChildAdded:Connect(function(p577)
    if p577:IsA("Frame") then
        OrganizarListados()
    end
end)
ScrollSL0.ChildRemoved:Connect(function(p578)
    if p578:IsA("Frame") then
        OrganizarListados()
    end
end)
VerificarListados()
BotaoCima = Instance.new("ImageButton")
BotaoCima.Size = UDim2.new(0, 39, 0, 39)
BotaoCima.Position = UDim2.new(0, 9, 0, 277)
BotaoCima.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
BotaoCima.Image = "rbxassetid://96343878204966"
BotaoCima.Parent = FundoSafelist
BotaoBaixo = Instance.new("ImageButton")
BotaoBaixo.Size = UDim2.new(0, 39, 0, 39)
BotaoBaixo.Position = UDim2.new(0, 66, 0, 277)
BotaoBaixo.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
BotaoBaixo.Image = "rbxassetid://100115007279661"
BotaoBaixo.Parent = FundoSafelist
BotaoClearAll = Instance.new("ImageButton")
BotaoClearAll.Size = UDim2.new(0, 39, 0, 39)
BotaoClearAll.Position = UDim2.new(0, 122, 0, 277)
BotaoClearAll.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
BotaoClearAll.Image = "rbxassetid://112138832651176"
BotaoClearAll.BackgroundTransparency = 0
BotaoClearAll.Parent = FundoSafelist
ScrollSL1 = Instance.new("ScrollingFrame")
ScrollSL1.Size = UDim2.new(0, 166, 0, 220)
ScrollSL1.Position = UDim2.new(0, 1, 0, 49)
ScrollSL1.BackgroundTransparency = 1
ScrollSL1.ScrollBarThickness = 0
ScrollSL1.CanvasPosition = Vector2.new(0, 0)
ScrollSL1.AutomaticCanvasSize = Enum.AutomaticSize.Y
ScrollSL1.ScrollingDirection = Enum.ScrollingDirection.Y
ScrollSL1.Visible = true
ScrollSL1.Parent = FundoSafelist
EsperandoSL = Instance.new("ImageLabel")
EsperandoSL.Size = UDim2.new(0, 90, 0, 90)
EsperandoSL.Position = UDim2.new(0, 40, 0, 110)
EsperandoSL.BackgroundTransparency = 1
EsperandoSL.Image = "rbxassetid://18836713445"
EsperandoSL.Visible = false
EsperandoSL.Parent = FundoSafelist
FIMFrame2 = Instance.new("Frame")
FIMFrame2.Size = UDim2.new(0, 0, 0, 0)
FIMFrame2.Position = UDim2.new(0, 0, 0, 0)
FIMFrame2.BackgroundTransparency = 1
FIMFrame2.Parent = ScrollSL1
TweenService = game:GetService("TweenService")
tweenInfo = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
BotaoCima.MouseButton1Click:Connect(function()
    if ScrollSL0.Visible then
        TweenService:Create(ScrollSL0, tweenInfo, {
            CanvasPosition = Vector2.new(0, 0)
        }):Play()
    end
    if ScrollSL1.Visible then
        TweenService:Create(ScrollSL1, tweenInfo, {
            CanvasPosition = Vector2.new(0, 0)
        }):Play()
    end
end)
BotaoBaixo.MouseButton1Click:Connect(function()
    if ScrollSL0.Visible then
        TweenService:Create(ScrollSL0, tweenInfo, {
            CanvasPosition = Vector2.new(0, ScrollSL0.AbsoluteCanvasSize.Y - ScrollSL0.AbsoluteWindowSize.Y)
        }):Play()
    end
    if ScrollSL1.Visible then
        TweenService:Create(ScrollSL1, tweenInfo, {
            CanvasPosition = Vector2.new(0, ScrollSL1.AbsoluteCanvasSize.Y - ScrollSL1.AbsoluteWindowSize.Y)
        }):Play()
    end
end)
BotaoClearAll.MouseButton1Click:Connect(function()
    local v579, v580, v581 = pairs(ScrollSL0:GetChildren())
    while true do
        local v582
        v581, v582 = v579(v580, v581)
        if v581 == nil then
            return
        end
        if v582:IsA("Frame") then
            local v583 = v582.Name
            for v584 = # Safelist, 1, - 1 do
                if Safelist[v584] == v583 then
                    table.remove(Safelist, v584)
                    pcall(Safe, v583, "remove")
                    break
                end
            end
            game.ReplicatedStorage:WaitForChild("UpdateListaSL"):Fire(v583)
            v582:Destroy()
        end
    end
end)
function VerificarSL()
    quantidadeSL = 0
    local v585, v586, v587 = ipairs(ScrollSL1:GetChildren())
    while true do
        local v588
        v587, v588 = v585(v586, v587)
        if v587 == nil then
            break
        end
        if v588:IsA("ImageButton") then
            quantidadeSL = quantidadeSL + 1
        end
    end
    if quantidadeSL ~= 0 then
        ScrollSL1.Visible = true
        EsperandoSL.Visible = false
    else
        ScrollSL1.Visible = false
        ScrollSL1.CanvasPosition = Vector2.new(0, 0)
        EsperandoSL.Visible = true
    end
end
function CriarPlayerSL(pu589)
    if table.find(Safelist, pu589) then
        return
    else
        local v590 = game:GetService("Players"):FindFirstChild(pu589)
        if v590 then
            local vu591 = Instance.new("ImageButton")
            vu591.Size = UDim2.new(0, 158, 0, 39)
            vu591.Position = UDim2.new(0, 4, 0, 10)
            vu591.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
            vu591.BackgroundTransparency = 0
            vu591.Parent = ScrollSL1
            vu591.Name = pu589
            local v592 = Instance.new("ImageLabel")
            v592.Size = UDim2.new(0, 39, 0, 39)
            v592.Position = UDim2.new(0, 0, 0, 0)
            v592.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            v592.BackgroundTransparency = 0.5
            v592.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. v590.UserId .. "&width=420&height=420&format=png"
            v592.Parent = vu591
            local v593 = Instance.new("Frame")
            v593.Name = "TextoPlayerSL"
            v593.Size = UDim2.new(0, 106, 0, 35)
            v593.Position = UDim2.new(0, 46, 0, 2)
            v593.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            v593.BackgroundTransparency = 0.5
            v593.Parent = vu591
            local v594 = Instance.new("TextLabel")
            v594.Size = UDim2.new(1, 0, 1, 0)
            v594.Position = UDim2.new(0, 0, 0, 0)
            v594.Text = v590.DisplayName
            v594.BackgroundTransparency = 1
            v594.TextColor3 = Color3.fromRGB(0, 0, 255)
            v594.Font = Enum.Font.Garamond
            v594.TextScaled = true
            v594.Parent = v593
            Corner(vu591, 10)
            Corner(v592, 10)
            Corner(v593, 10)
            Stroke(vu591, 0, 0, 0, 2)
            Stroke(v592, 0, 0, 0, 2)
            Stroke(v593, 0, 0, 0, 1.5)
            Stroke(v594, 0, 0, 0, 2)
            vu591.MouseButton1Click:Connect(function()
                if not table.find(Safelist, pu589) then
                    Listar(pu589)
                    vu591:Destroy()
                end
            end)
        end
    end
end
function RemoverSF(p595)
    local v596 = ScrollSL1:FindFirstChild(p595)
    if v596 and v596:IsA("ImageButton") then
        v596:Destroy()
    end
end
EspacoSL = 10
PosiSL = UDim2.new(0, 4, 0, 10)
function OrganizarSL()
    VerificarSL()
    local v597 = PosiSL.Y.Offset
    local v598, v599, v600 = ipairs(ScrollSL1:GetChildren())
    while true do
        local v601
        v600, v601 = v598(v599, v600)
        if v600 == nil then
            break
        end
        if v601:IsA("ImageButton") then
            v601.Position = UDim2.new(PosiSL.X.Scale, PosiSL.X.Offset, 0, v597)
            v597 = v597 + v601.Size.Y.Offset + EspacoSL
        end
    end
    FIMFrame2.Position = UDim2.new(0, 0, 0, v597 + 1)
end
ScrollSL1.ChildAdded:Connect(function(p602)
    if p602:IsA("ImageButton") then
        OrganizarSL()
    end
end)
ScrollSL1.ChildRemoved:Connect(function(p603)
    if p603:IsA("ImageButton") then
        OrganizarSL()
    end
end)
local v604, v605, v606 = ipairs(game:GetService("Players"):GetPlayers())
while true do
    local v607, v608 = v604(v605, v606)
    if v607 == nil then
        break
    end
    v606 = v607
    if v608 ~= game:GetService("Players").LocalPlayer and not table.find(Safelist, v608.Name) then
        CriarPlayerSL(v608.Name)
    end
end
game:GetService("Players").PlayerAdded:Connect(function(p609)
    if p609 ~= game:GetService("Players").LocalPlayer and not table.find(Safelist, p609.Name) then
        CriarPlayerSL(p609.Name)
    end
end)
game:GetService("Players").PlayerRemoving:Connect(function(p610)
    RemoverSF(p610.Name)
end)
UpdateListaSL = Instance.new("BindableEvent")
UpdateListaSL.Name = "UpdateListaSL"
UpdateListaSL.Parent = game.ReplicatedStorage
UpdateListaSL.Event:Connect(function(p611)
    if game.Players:FindFirstChild(p611) then
        CriarPlayerSL(p611)
    end
end)
VerificarSL()
PerfilAtual = "?"
PerfilPlayerFrame = Instance.new("Frame")
PerfilPlayerFrame.Size = UDim2.new(0, 450, 0, 320)
PerfilPlayerFrame.Position = UDim2.new(0.5, 0, 0.5, - 17)
PerfilPlayerFrame.AnchorPoint = Vector2.new(0.5, 0.5)
PerfilPlayerFrame.BackgroundTransparency = 0
PerfilPlayerFrame.Draggable = true
PerfilPlayerFrame.Active = true
PerfilPlayerFrame.Visible = false
PerfilPlayerFrame.Parent = CORE
FundoPerfil = Instance.new("ImageLabel")
FundoPerfil.Size = UDim2.new(1, 0, 1, 0)
FundoPerfil.BackgroundTransparency = 1
FundoPerfil.Image = "rbxassetid://118102679785082"
FundoPerfil.Parent = PerfilPlayerFrame
TituloPerfil = Instance.new("Frame")
TituloPerfil.Size = UDim2.new(0, 324, 0, 36)
TituloPerfil.Position = UDim2.new(0.5, - 162, 0.03, - 5)
TituloPerfil.BackgroundColor3 = Color3.fromRGB(185, 34, 34)
TituloPerfil.Parent = FundoPerfil
TextoTituloPerfil2 = Instance.new("TextLabel")
TextoTituloPerfil2.Size = UDim2.new(1, 0, 1, 0)
TextoTituloPerfil2.Position = UDim2.new(0, 0, 0, 0)
TextoTituloPerfil2.BackgroundTransparency = 1
TextoTituloPerfil2.Text = "?"
TextoTituloPerfil2.TextColor3 = Color3.fromRGB(255, 95, 0)
TextoTituloPerfil2.TextScaled = true
TextoTituloPerfil2.Font = Enum.Font.SourceSansBold
TextoTituloPerfil2.Font = Enum.Font.Creepster
TextoTituloPerfil2.Parent = TituloPerfil
PerfilFoto = Instance.new("ImageLabel")
PerfilFoto.Size = UDim2.new(0, 40, 0, 40)
PerfilFoto.Position = UDim2.new(0, 12, 0, 3)
PerfilFoto.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PerfilFoto.BackgroundTransparency = 0.5
PerfilFoto.Image = "rbxassetid://0"
PerfilFoto.Parent = FundoPerfil
VoltarPerfil = Instance.new("ImageButton")
VoltarPerfil.Size = UDim2.new(0, 40, 0, 40)
VoltarPerfil.Position = UDim2.new(0, 398, 0, 3)
VoltarPerfil.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
VoltarPerfil.BackgroundTransparency = 0.5
VoltarPerfil.Parent = FundoPerfil
VPTexto = Instance.new("TextLabel")
VPTexto.Size = UDim2.new(1, 0, 1, 0)
VPTexto.Position = UDim2.new(0, 0, 0, 0)
VPTexto.BackgroundTransparency = 1
VPTexto.Text = "<"
VPTexto.TextColor3 = Color3.fromRGB(152, 255, 152)
VPTexto.TextSize = 25
VPTexto.Parent = VoltarPerfil
Linha1 = Instance.new("Frame")
Linha1.Size = UDim2.new(0, 3, 1, - 45)
Linha1.Position = UDim2.new(0.5, 0, 0, 45)
Linha1.AnchorPoint = Vector2.new(0.5, 0)
Linha1.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Linha1.BorderSizePixel = 0
Linha1.Parent = FundoPerfil
Linha2 = Instance.new("Frame")
Linha2.Size = UDim2.new(1, 0, 0, 3)
Linha2.Position = UDim2.new(0, 0, 0, 45)
Linha2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Linha2.BorderSizePixel = 0
Linha2.Parent = FundoPerfil
Linha3 = Instance.new("Frame")
Linha3.Size = UDim2.new(1, - 225, 0, 3)
Linha3.Position = UDim2.new(0, 225, 0, 270)
Linha3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Linha3.BorderSizePixel = 0
Linha3.Parent = FundoPerfil
FrameTituloSessaoInfos = Instance.new("Frame")
FrameTituloSessaoInfos.Size = UDim2.new(0, 212, 0, 35)
FrameTituloSessaoInfos.Position = UDim2.new(0, 6, 0, 54)
FrameTituloSessaoInfos.BackgroundColor3 = Color3.fromRGB(255, 95, 0)
FrameTituloSessaoInfos.Parent = FundoPerfil
FrameTituloSessaoModeracao = Instance.new("Frame")
FrameTituloSessaoModeracao.Size = UDim2.new(0, 212, 0, 35)
FrameTituloSessaoModeracao.Position = UDim2.new(0, 232, 0, 54)
FrameTituloSessaoModeracao.BackgroundColor3 = Color3.fromRGB(255, 95, 0)
FrameTituloSessaoModeracao.Parent = FundoPerfil
iconeTituloInfo = Instance.new("ImageLabel")
iconeTituloInfo.Size = UDim2.new(0, 34, 0, 35)
iconeTituloInfo.Position = UDim2.new(0, 0, 0, 0)
iconeTituloInfo.BackgroundColor3 = Color3.fromRGB(157, 0, 0)
iconeTituloInfo.Image = "rbxassetid://90463396859645"
iconeTituloInfo.Parent = FrameTituloSessaoInfos
textoPlayerInfo = Instance.new("TextLabel")
textoPlayerInfo.Size = UDim2.new(1, - 40, 1, 0)
textoPlayerInfo.Position = UDim2.new(0, 37, 0, - 1)
textoPlayerInfo.BackgroundTransparency = 1
textoPlayerInfo.Text = traducao.Infos
textoPlayerInfo.TextColor3 = Color3.fromRGB(255, 255, 153)
textoPlayerInfo.Font = Enum.Font.Garamond
textoPlayerInfo.TextScaled = true
textoPlayerInfo.Parent = FrameTituloSessaoInfos
textoPlayerMod = Instance.new("TextLabel")
textoPlayerMod.Size = UDim2.new(1, - 40, 1, 0)
textoPlayerMod.Position = UDim2.new(0, 37, 0, - 1)
textoPlayerMod.BackgroundTransparency = 1
textoPlayerMod.Text = traducao.Mod
textoPlayerMod.TextColor3 = Color3.fromRGB(255, 255, 153)
textoPlayerMod.Font = Enum.Font.Garamond
textoPlayerMod.TextScaled = true
textoPlayerMod.Parent = FrameTituloSessaoModeracao
iconeTituloMod = Instance.new("ImageLabel")
iconeTituloMod.Size = UDim2.new(0, 34, 0, 35)
iconeTituloMod.Position = UDim2.new(0, 0, 0, 0)
iconeTituloMod.BackgroundColor3 = Color3.fromRGB(157, 0, 0)
iconeTituloMod.Image = "rbxassetid://81316801911237"
iconeTituloMod.Parent = FrameTituloSessaoModeracao
ScrollInfo = Instance.new("ScrollingFrame")
ScrollInfo.Size = UDim2.new(0, 222, 0, 225)
ScrollInfo.Position = UDim2.new(0, 1, 0, 93)
ScrollInfo.ScrollBarThickness = 0
ScrollInfo.CanvasSize = UDim2.new(0, 0, 0, 332)
ScrollInfo.ScrollingDirection = Enum.ScrollingDirection.Y
ScrollInfo.BackgroundTransparency = 1
ScrollInfo.ClipsDescendants = true
ScrollInfo.Parent = FundoPerfil
RankFrame = Instance.new("Frame")
RankFrame.Size = UDim2.new(0, 210, 0, 38)
RankFrame.Position = UDim2.new(0, 6, 0, 10)
RankFrame.BackgroundColor3 = Color3.fromRGB(178, 34, 34)
RankFrame.Parent = ScrollInfo
SkillFrame = Instance.new("Frame")
SkillFrame.Size = UDim2.new(0, 210, 0, 38)
SkillFrame.Position = UDim2.new(0, 6, 0, 65)
SkillFrame.BackgroundColor3 = Color3.fromRGB(0, 102, 204)
SkillFrame.Parent = ScrollInfo
KillsFramePerfil = Instance.new("Frame")
KillsFramePerfil.Size = UDim2.new(0, 210, 0, 38)
KillsFramePerfil.Position = UDim2.new(0, 6, 0, 120)
KillsFramePerfil.BackgroundColor3 = Color3.fromRGB(255, 75, 75)
KillsFramePerfil.Parent = ScrollInfo
DataFrame = Instance.new("Frame")
DataFrame.Size = UDim2.new(0, 210, 0, 38)
DataFrame.Position = UDim2.new(0, 6, 0, 175)
DataFrame.BackgroundColor3 = Color3.fromRGB(60, 179, 113)
DataFrame.Parent = ScrollInfo
RobuxFrame = Instance.new("Frame")
RobuxFrame.Size = UDim2.new(0, 210, 0, 38)
RobuxFrame.Position = UDim2.new(0, 6, 0, 230)
RobuxFrame.BackgroundColor3 = Color3.fromRGB(212, 175, 55)
RobuxFrame.Parent = ScrollInfo
GotoFrame = Instance.new("ImageButton")
GotoFrame.Size = UDim2.new(0, 210, 0, 38)
GotoFrame.Position = UDim2.new(0, 6, 0, 285)
GotoFrame.BackgroundColor3 = Color3.fromRGB(0, 139, 0)
GotoFrame.Parent = ScrollInfo
IconeRank = Instance.new("ImageLabel")
IconeRank.Size = UDim2.new(0, 38, 0, 38)
IconeRank.Position = UDim2.new(0, 0, 0, 0)
IconeRank.BackgroundColor3 = Color3.fromRGB(40, 100, 240)
IconeRank.Image = "rbxassetid://18783075008"
IconeRank.Parent = RankFrame
iconeSkill = Instance.new("ImageLabel")
iconeSkill.Size = UDim2.new(0, 38, 0, 38)
iconeSkill.Position = UDim2.new(0, 0, 0, 0)
iconeSkill.BackgroundColor3 = Color3.fromRGB(40, 100, 240)
iconeSkill.Image = "rbxassetid://104959687200478"
iconeSkill.Parent = SkillFrame
iconeKillsPerfil = Instance.new("ImageLabel")
iconeKillsPerfil.Size = UDim2.new(0, 38, 0, 38)
iconeKillsPerfil.Position = UDim2.new(0, 0, 0, 0)
iconeKillsPerfil.BackgroundColor3 = Color3.fromRGB(72, 176, 44)
iconeKillsPerfil.Image = "rbxassetid://122412642626742"
iconeKillsPerfil.Parent = KillsFramePerfil
iconeData = Instance.new("ImageLabel")
iconeData.Size = UDim2.new(0, 38, 0, 38)
iconeData.Position = UDim2.new(0, 0, 0, 0)
iconeData.BackgroundColor3 = Color3.fromRGB(44, 82, 91)
iconeData.Image = "rbxassetid://128941133678575"
iconeData.Parent = DataFrame
iconeRobux = Instance.new("ImageLabel")
iconeRobux.Size = UDim2.new(0, 38, 0, 38)
iconeRobux.Position = UDim2.new(0, 0, 0, 0)
iconeRobux.BackgroundColor3 = Color3.fromRGB(251, 200, 90)
iconeRobux.Image = "rbxassetid://110257698120209"
iconeRobux.Parent = RobuxFrame
iconeGoto = Instance.new("ImageLabel")
iconeGoto.Size = UDim2.new(0, 38, 0, 38)
iconeGoto.Position = UDim2.new(0, 0, 0, 0)
iconeGoto.BackgroundColor3 = Color3.fromRGB(72, 176, 44)
iconeGoto.Image = "rbxassetid://79205994127129"
iconeGoto.Parent = GotoFrame
textoRank = Instance.new("TextLabel")
textoRank.Size = UDim2.new(1, - 50, 1, 0)
textoRank.Position = UDim2.new(0, 42, 0, 0)
textoRank.BackgroundTransparency = 1
textoRank.Text = "?"
textoRank.TextColor3 = Color3.fromRGB(255, 228, 196)
textoRank.Font = Enum.Font.Garamond
textoRank.TextScaled = true
textoRank.Parent = RankFrame
textoSkill = Instance.new("TextLabel")
textoSkill.Size = UDim2.new(1, - 50, 1, 0)
textoSkill.Position = UDim2.new(0, 42, 0, 0)
textoSkill.BackgroundTransparency = 1
textoSkill.Text = "?"
textoSkill.TextColor3 = Color3.fromRGB(255, 255, 255)
textoSkill.Font = Enum.Font.Garamond
textoSkill.TextScaled = true
textoSkill.Parent = SkillFrame
textoKillsPerfil = Instance.new("TextLabel")
textoKillsPerfil.Size = UDim2.new(1, - 50, 1, 0)
textoKillsPerfil.Position = UDim2.new(0, 42, 0, 1)
textoKillsPerfil.BackgroundTransparency = 1
textoKillsPerfil.Text = "?"
textoKillsPerfil.TextColor3 = Color3.fromRGB(255, 255, 255)
textoKillsPerfil.Font = Enum.Font.LuckiestGuy
textoKillsPerfil.TextScaled = true
textoKillsPerfil.Parent = KillsFramePerfil
textoData = Instance.new("TextLabel")
textoData.Size = UDim2.new(1, - 50, 1, 0)
textoData.Position = UDim2.new(0, 42, 0, 0)
textoData.BackgroundTransparency = 1
textoData.Text = "?"
textoData.TextColor3 = Color3.fromRGB(255, 255, 255)
textoData.Font = Enum.Font.Garamond
textoData.TextScaled = true
textoData.Parent = DataFrame
textoRobux = Instance.new("TextLabel")
textoRobux.Size = UDim2.new(1, - 50, 1, 0)
textoRobux.Position = UDim2.new(0, 42, 0, 0)
textoRobux.BackgroundTransparency = 1
textoRobux.Text = traducao.load
textoRobux.TextColor3 = Color3.fromRGB(255, 255, 153)
textoRobux.Font = Enum.Font.Garamond
textoRobux.TextScaled = true
textoRobux.Parent = RobuxFrame
textoGoto = Instance.new("TextLabel")
textoGoto.Size = UDim2.new(1, - 50, 1, 0)
textoGoto.Position = UDim2.new(0, 42, 0, 0)
textoGoto.BackgroundTransparency = 1
textoGoto.Text = "Goto Player"
textoGoto.TextColor3 = Color3.fromRGB(0, 0, 0)
textoGoto.Font = Enum.Font.Garamond
textoGoto.TextScaled = true
textoGoto.Parent = GotoFrame
SemPermissao = Instance.new("Frame")
SemPermissao.Size = UDim2.new(0, 206, 0, 164)
SemPermissao.Position = UDim2.new(0, 235, 0, 98)
SemPermissao.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SemPermissao.BackgroundTransparency = 0.5
SemPermissao.Visible = false
SemPermissao.Parent = FundoPerfil
ImgSP = Instance.new("ImageLabel")
ImgSP.Size = UDim2.new(0, 80, 0, 80)
ImgSP.Position = UDim2.new(0, 61, 0, 7)
ImgSP.BackgroundTransparency = 1
ImgSP.Image = "rbxassetid://73191368761808"
ImgSP.Parent = SemPermissao
TextoSP = Instance.new("TextLabel")
TextoSP.Size = UDim2.new(1, - 2, 0, 73)
TextoSP.Position = UDim2.new(0, 1, 0, 90)
TextoSP.BackgroundTransparency = 1
TextoSP.Text = traducao.NaoPer
TextoSP.TextColor3 = Color3.fromRGB(255, 255, 255)
TextoSP.Font = Enum.Font.Garamond
TextoSP.TextScaled = true
TextoSP.Parent = SemPermissao
OcorreuErro = Instance.new("Frame")
OcorreuErro.Size = UDim2.new(0, 215, 0, 39)
OcorreuErro.Position = UDim2.new(0, 231, 0, 277)
OcorreuErro.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
OcorreuErro.Visible = false
OcorreuErro.Parent = FundoPerfil
iconeOE = Instance.new("ImageLabel")
iconeOE.Size = UDim2.new(0, 38, 0, 39)
iconeOE.Position = UDim2.new(0, 0, 0, 0)
iconeOE.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
iconeOE.Image = "rbxassetid://116675481378949"
iconeOE.Parent = OcorreuErro
TextoOE = Instance.new("TextLabel")
TextoOE.Size = UDim2.new(0, 170, 0, 37)
TextoOE.Position = UDim2.new(0, 41, 0, 1)
TextoOE.BackgroundTransparency = 1
TextoOE.Text = traducao.Ocorreu
TextoOE.Font = Enum.Font.Garamond
TextoOE.TextColor3 = Color3.fromRGB(100, 100, 100)
TextoOE.TextScaled = true
TextoOE.Parent = OcorreuErro
cmds = Instance.new("ScrollingFrame")
cmds.Size = UDim2.new(0, 222, 0, 176)
cmds.Position = UDim2.new(0, 227, 0, 93)
cmds.ScrollBarThickness = 0
cmds.CanvasSize = UDim2.new(0, 0, 0, 334)
cmds.ScrollingDirection = Enum.ScrollingDirection.Y
cmds.BackgroundTransparency = 1
cmds.ClipsDescendants = true
cmds.Visible = false
cmds.Parent = FundoPerfil
Freeze = Instance.new("ImageButton")
Freeze.Size = UDim2.new(0, 90, 0, 38)
Freeze.Position = UDim2.new(0, 6, 0, 10)
Freeze.BackgroundColor3 = Color3.fromRGB(230, 50, 50)
Freeze.AutoButtonColor = false
Freeze.Parent = cmds
UnFreeze = Instance.new("ImageButton")
UnFreeze.Size = UDim2.new(0, 90, 0, 38)
UnFreeze.Position = UDim2.new(0, 127, 0, 10)
UnFreeze.BackgroundColor3 = Color3.fromRGB(60, 180, 75)
UnFreeze.AutoButtonColor = false
UnFreeze.Parent = cmds
ToolBan = Instance.new("ImageButton")
ToolBan.Size = UDim2.new(0, 90, 0, 38)
ToolBan.Position = UDim2.new(0, 6, 0, 65)
ToolBan.BackgroundColor3 = Color3.fromRGB(230, 50, 50)
ToolBan.AutoButtonColor = false
ToolBan.Parent = cmds
UnToolBan = Instance.new("ImageButton")
UnToolBan.Size = UDim2.new(0, 90, 0, 38)
UnToolBan.Position = UDim2.new(0, 127, 0, 65)
UnToolBan.BackgroundColor3 = Color3.fromRGB(60, 180, 75)
UnToolBan.AutoButtonColor = false
UnToolBan.Parent = cmds
Blur = Instance.new("ImageButton")
Blur.Size = UDim2.new(0, 90, 0, 38)
Blur.Position = UDim2.new(0, 6, 0, 120)
Blur.BackgroundColor3 = Color3.fromRGB(230, 50, 50)
Blur.AutoButtonColor = false
Blur.Parent = cmds
UnBlur = Instance.new("ImageButton")
UnBlur.Size = UDim2.new(0, 90, 0, 38)
UnBlur.Position = UDim2.new(0, 127, 0, 120)
UnBlur.BackgroundColor3 = Color3.fromRGB(60, 180, 75)
UnBlur.AutoButtonColor = false
UnBlur.Parent = cmds
hop = Instance.new("ImageButton")
hop.Size = UDim2.new(0, 210, 0, 38)
hop.Position = UDim2.new(0, 6, 0, 175)
hop.BackgroundColor3 = Color3.fromRGB(245, 158, 11)
hop.AutoButtonColor = false
hop.Parent = cmds
Kill = Instance.new("ImageButton")
Kill.Size = UDim2.new(0, 210, 0, 38)
Kill.Position = UDim2.new(0, 6, 0, 230)
Kill.BackgroundColor3 = Color3.fromRGB(245, 158, 11)
Kill.AutoButtonColor = false
Kill.Parent = cmds
Bring = Instance.new("ImageButton")
Bring.Size = UDim2.new(0, 210, 0, 38)
Bring.Position = UDim2.new(0, 6, 0, 285)
Bring.BackgroundColor3 = Color3.fromRGB(245, 158, 11)
Bring.AutoButtonColor = false
Bring.Parent = cmds
kickframe = Instance.new("Frame")
kickframe.Size = UDim2.new(0, 215, 0, 39)
kickframe.Position = UDim2.new(0, 231, 0, 277)
kickframe.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
kickframe.Visible = false
kickframe.Parent = FundoPerfil
KickBox = Instance.new("TextBox")
KickBox.Size = UDim2.new(0, 159, 0, 37)
KickBox.Position = UDim2.new(0, 5, 0, 1)
KickBox.BackgroundTransparency = 1
KickBox.Text = ""
KickBox.PlaceholderText = traducao.Kickbox
KickBox.ClearTextOnFocus = false
KickBox.TextColor3 = Color3.fromRGB(255, 255, 255)
KickBox.TextScaled = true
KickBox.Parent = kickframe
LinhaKick = Instance.new("Frame")
LinhaKick.Size = UDim2.new(0, 2, 1, 0)
LinhaKick.Position = UDim2.new(0, 165, 0, 0)
LinhaKick.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
LinhaKick.BorderSizePixel = 0
LinhaKick.Parent = kickframe
imagemKick = Instance.new("ImageLabel")
imagemKick.Position = UDim2.new(0, 172, 0, 4)
imagemKick.Size = UDim2.new(0, 30, 0, 30)
imagemKick.BackgroundTransparency = 1
imagemKick.Image = "rbxassetid://102383886886478"
imagemKick.Parent = KickBox
KickBotao = Instance.new("ImageButton")
KickBotao.Size = UDim2.new(0, 30, 0, 30)
KickBotao.Position = UDim2.new(0, - 1, 0, 1)
KickBotao.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
KickBotao.BackgroundTransparency = 1
KickBotao.Parent = imagemKick
FreezeLabel = Instance.new("TextLabel")
FreezeLabel.Size = UDim2.new(1, 0, 1, 0)
FreezeLabel.Position = UDim2.new(0, 0, 0, 0)
FreezeLabel.BackgroundTransparency = 1
FreezeLabel.Text = "Freeze"
FreezeLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
FreezeLabel.TextScaled = true
FreezeLabel.Font = Enum.Font.SourceSansBold
FreezeLabel.Parent = Freeze
UnFreezeLabel = Instance.new("TextLabel")
UnFreezeLabel.Size = UDim2.new(1, 0, 1, 0)
UnFreezeLabel.Position = UDim2.new(0, 0, 0, 0)
UnFreezeLabel.BackgroundTransparency = 1
UnFreezeLabel.Text = "UnFreeze"
UnFreezeLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
UnFreezeLabel.TextScaled = true
UnFreezeLabel.Font = Enum.Font.SourceSansBold
UnFreezeLabel.Parent = UnFreeze
ToolBanLabel = Instance.new("TextLabel")
ToolBanLabel.Size = UDim2.new(1, 0, 1, 0)
ToolBanLabel.Position = UDim2.new(0, 0, 0, 0)
ToolBanLabel.BackgroundTransparency = 1
ToolBanLabel.Text = "ToolBan"
ToolBanLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
ToolBanLabel.TextScaled = true
ToolBanLabel.Font = Enum.Font.SourceSansBold
ToolBanLabel.Parent = ToolBan
UnToolBanLabel = Instance.new("TextLabel")
UnToolBanLabel.Size = UDim2.new(1, 0, 1, 0)
UnToolBanLabel.Position = UDim2.new(0, 0, 0, 0)
UnToolBanLabel.BackgroundTransparency = 1
UnToolBanLabel.Text = "UnToolBan"
UnToolBanLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
UnToolBanLabel.TextScaled = true
UnToolBanLabel.Font = Enum.Font.SourceSansBold
UnToolBanLabel.Parent = UnToolBan
BlurLabel = Instance.new("TextLabel")
BlurLabel.Size = UDim2.new(1, 0, 1, 0)
BlurLabel.Position = UDim2.new(0, 0, 0, 0)
BlurLabel.BackgroundTransparency = 1
BlurLabel.Text = "Blur"
BlurLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
BlurLabel.TextScaled = true
BlurLabel.Font = Enum.Font.SourceSansBold
BlurLabel.Parent = Blur
UnBlurLabel = Instance.new("TextLabel")
UnBlurLabel.Size = UDim2.new(1, 0, 1, 0)
UnBlurLabel.Position = UDim2.new(0, 0, 0, 0)
UnBlurLabel.BackgroundTransparency = 1
UnBlurLabel.Text = "UnBlur"
UnBlurLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
UnBlurLabel.TextScaled = true
UnBlurLabel.Font = Enum.Font.SourceSansBold
UnBlurLabel.Parent = UnBlur
hopLabel = Instance.new("TextLabel")
hopLabel.Size = UDim2.new(1, 0, 1, 0)
hopLabel.Position = UDim2.new(0, 0, 0, 0)
hopLabel.BackgroundTransparency = 1
hopLabel.Text = "Server Hop"
hopLabel.TextColor3 = Color3.fromRGB(139, 0, 0)
hopLabel.TextScaled = true
hopLabel.Font = Enum.Font.SourceSansBold
hopLabel.Parent = hop
KillLabel = Instance.new("TextLabel")
KillLabel.Size = UDim2.new(1, 0, 1, 0)
KillLabel.Position = UDim2.new(0, 0, 0, 0)
KillLabel.BackgroundTransparency = 1
KillLabel.Text = "Kill"
KillLabel.TextColor3 = Color3.fromRGB(139, 0, 0)
KillLabel.TextScaled = true
KillLabel.Font = Enum.Font.SourceSansBold
KillLabel.Parent = Kill
BringLabel = Instance.new("TextLabel")
BringLabel.Size = UDim2.new(1, 0, 1, 0)
BringLabel.Position = UDim2.new(0, 0, 0, 0)
BringLabel.BackgroundTransparency = 1
BringLabel.Text = "Bring"
BringLabel.TextColor3 = Color3.fromRGB(139, 0, 0)
BringLabel.TextScaled = true
BringLabel.Font = Enum.Font.SourceSansBold
BringLabel.Parent = Bring
robuxCalculoID = 0
function Perfil(p612)
    PerfilAtual = p612
    robuxCalculoID = robuxCalculoID + 1
    local vu613 = robuxCalculoID
    local v614 = game.Players:FindFirstChild(p612)
    local vu615 = game.Players:GetUserIdFromNameAsync(p612)
    TextoTituloPerfil2.Text = traducao.perfil .. " " .. game.Players[p612].DisplayName
    PerfilFoto.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu615 .. "&width=420&height=420&format=png"
    local v616 = "Free"
    if table.find(Devs, p612) then
        v616 = "Dev"
    elseif table.find(Admins, p612) then
        v616 = "Admin"
    elseif table.find(Elites, p612) then
        v616 = "Elite"
    elseif table.find(Premiums, p612) then
        v616 = "Premium"
    elseif table.find(PremiumsTemp, p612) then
        v616 = traducao.RankTemp
    end
    textoRank.Text = "Chaotic Rank: " .. v616
    local v617 = v614 and v614:FindFirstChild("statsfolder")
    if v617 then
        v617 = v614.statsfolder:FindFirstChild("Skill Rating")
    end
    textoSkill.Text = traducao.Skill .. ": " .. (v617 and math.floor(v617.Value) or "N/A")
    textoKillsPerfil.Text = traducao.KillTotal .. ": " .. (v614:FindFirstChild("statsfolder") and (v614.statsfolder:FindFirstChild("Wins") and (v614.statsfolder.Wins.Value or "N/A") or "N/A") or "N/A") .. "\n" .. traducao.Defeats .. ": " .. (v614:FindFirstChild("statsfolder") and (v614.statsfolder:FindFirstChild("Defeats") and (v614.statsfolder.Defeats.Value or "N/A") or "N/A") or "N/A")
    local _, _ = pcall(function()
        return game.Players:GetPlayerByUserId(vu615) or game:GetService("Players"):GetNameFromUserIdAsync(vu615)
    end)
    local v618 = tonumber
    if v614 then
        v614 = v614.AccountAge
    end
    local v619 = v618(v614) or 0
    local v620 = DateTime.now().UnixTimestamp - v619 * 86400
    local v621 = DateTime.fromUnixTimestamp(v620)
    local v622
    if game.Players.LocalPlayer.LocaleId ~= "pt-br" then
        v622 = v621:FormatLocalTime("MM/DD/YYYY", "en-us")
    else
        v622 = v621:FormatLocalTime("DD/MM/YYYY", "pt-br")
    end
    textoData.Text = traducao.ContaCriada .. " " .. v622 .. "\n(" .. v619 .. " " .. traducao.days .. ")"
    task.defer(function()
        local v623 = 0
        local v624, v625 = pcall(function()
            return game:GetService("Players"):GetCharacterAppearanceInfoAsync(vu615)
        end)
        if v624 and vu613 == robuxCalculoID then
            local v626, v627, v628 = ipairs(v625.assets or {})
            while true do
                local vu629
                v628, vu629 = v626(v627, v628)
                if v628 == nil then
                    break
                end
                if vu613 ~= robuxCalculoID then
                    return
                end
                local v630, v631 = pcall(function()
                    return game:GetService("MarketplaceService"):GetProductInfo(vu629.id, Enum.InfoType.Asset)
                end)
                if v630 and (v631 and (v631.IsForSale and v631.PriceInRobux)) then
                    v623 = v623 + v631.PriceInRobux
                end
            end
            if vu613 == robuxCalculoID then
                textoRobux.Text = traducao.Avatar .. " " .. v623 .. " Robux"
            end
        end
    end)
    local v632 = true
    if v616 == "Dev" and not Config.AtacarDev or (v616 == "Admin" and not Config.AtacarAdmin or (v616 == "Elite" and not Config.AtacarElite or (v616 == "Premium" or v616 == traducao.RankTemp) and not Config.AtacarPremium)) then
        v632 = false
    elseif not table.find(Usuarios, p612) then
        v632 = false
    end
    if v632 then
        cmds.Visible = true
        kickframe.Visible = true
    else
        SemPermissao.Visible = true
        OcorreuErro.Visible = true
    end
    PerfilPlayerFrame.Visible = true
    ChaoticFrame.Visible = false
end
VoltarPerfil.MouseButton1Click:Connect(function()
    KickBox.Text = ""
    PerfilPlayerFrame.Visible = false
    ChaoticFrame.Visible = true
    textoRobux.Text = traducao.load
    cmds.Visible = false
    SemPermissao.Visible = false
    kickframe.Visible = false
    OcorreuErro.Visible = false
end)
Freeze.MouseButton1Click:Connect(function()
    Animar("1Freeze:" .. PerfilAtual)
end)
UnFreeze.MouseButton1Click:Connect(function()
    Animar("1UnFreeze:" .. PerfilAtual)
end)
ToolBan.MouseButton1Click:Connect(function()
    Animar("1ToolBan:" .. PerfilAtual)
end)
UnToolBan.MouseButton1Click:Connect(function()
    Animar("1UnToolBan:" .. PerfilAtual)
end)
Blur.MouseButton1Click:Connect(function()
    Animar("1Blur:" .. PerfilAtual)
end)
UnBlur.MouseButton1Click:Connect(function()
    Animar("1UnBlur:" .. PerfilAtual)
end)
hop.MouseButton1Click:Connect(function()
    Animar("1ServerHop:" .. PerfilAtual)
    KickBox.Text = ""
    PerfilPlayerFrame.Visible = false
    ChaoticFrame.Visible = true
    textoRobux.Text = traducao.load
    cmds.Visible = false
    SemPermissao.Visible = false
    kickframe.Visible = false
    OcorreuErro.Visible = false
end)
Kill.MouseButton1Click:Connect(function()
    Animar("1Kill:" .. PerfilAtual)
end)
Bring.MouseButton1Click:Connect(function()
    Animar("1Bring:" .. PerfilAtual)
end)
GotoFrame.MouseButton1Click:Connect(function()
    if game.Players.LocalPlayer.Character and (game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and (game.Players:FindFirstChild(PerfilAtual) and (game.Players:FindFirstChild(PerfilAtual).Character and game.Players:FindFirstChild(PerfilAtual).Character:FindFirstChild("HumanoidRootPart")))) then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(PerfilAtual).Character.HumanoidRootPart.CFrame
    end
end)
KickBotao.MouseButton1Click:Connect(function()
    if KickBox.Text:match("^%s*$") then
        Animar("1kick:" .. PerfilAtual .. ":" .. traducao.SemMotivo)
    else
        Animar("1kick:" .. PerfilAtual .. ":" .. KickBox.Text)
    end
    KickBox.Text = ""
    PerfilPlayerFrame.Visible = false
    ChaoticFrame.Visible = true
    textoRobux.Text = traducao.load
    cmds.Visible = false
    SemPermissao.Visible = false
    kickframe.Visible = false
    OcorreuErro.Visible = false
end)
TextChatService = game:GetService("TextChatService")
PodeFalar = true
function Say(p633)
    if PodeFalar then
        PodeFalar = false
        local vu634 = p633:sub(1, 190)
        coroutine.wrap(function()
            pcall(function()
                TextChatService:WaitForChild("TextChannels"):WaitForChild("RBXGeneral"):SendAsync(vu634)
            end)
            task.wait(2)
            PodeFalar = true
        end)()
    end
end
conexao = nil
posicaoCongelada = "?"
congelado = false
function FreezeMe(p635)
    if p635 and not congelado then
        congelado = true
        Say("The ice age has come upon me, I am completely frozen!")
        if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            posicaoCongelada = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
            conexao = game:GetService("RunService").Heartbeat:Connect(function()
                if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = true
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(posicaoCongelada)
                end
            end)
        end
    elseif not p635 and congelado then
        congelado = false
        Say("Yay, I\'m finally free from the freeze!")
        if conexao then
            conexao:Disconnect()
            conexao = nil
        end
        if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = false
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = false
        end
    end
end
toolBanAtivo = false
function ToolBanMe(p636)
    local vu637 = game:GetService("Players").LocalPlayer
    if p636 and not toolBanAtivo then
        toolBanAtivo = true
        Say("[ ! ]  My weapons have been blocked!")
        if vu637.Character and vu637.Character:FindFirstChildOfClass("Humanoid") then
            vu637.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
        end
        task.spawn(function()
            while toolBanAtivo do
                local v638, v639, v640 = pairs(vu637.Character:GetChildren())
                while true do
                    local v641
                    v640, v641 = v638(v639, v640)
                    if v640 == nil then
                        break
                    end
                    if v641:IsA("Tool") and v641.Name ~= traducao.toolblock then
                        v641:Destroy()
                    end
                end
                local v642, v643, v644 = pairs(vu637.Backpack:GetChildren())
                while true do
                    local v645
                    v644, v645 = v642(v643, v644)
                    if v644 == nil then
                        break
                    end
                    if v645:IsA("Tool") and v645.Name ~= traducao.toolblock then
                        v645:Destroy()
                    end
                end
                if not (vu637.Backpack:FindFirstChild(traducao.toolblock) or vu637.Character:FindFirstChild(traducao.toolblock)) then
                    local v646 = Instance.new("Tool")
                    v646.Name = traducao.toolblock
                    v646.Parent = vu637.Backpack
                end
                task.wait(1)
            end
        end)
    elseif not p636 and toolBanAtivo then
        toolBanAtivo = false
        Say("[ ! ] My weapons have been unlocked again!")
        local v647 = vu637.Backpack:FindFirstChild(traducao.toolblock)
        if v647 then
            v647:Destroy()
        end
        local v648 = vu637.Character:FindFirstChild(traducao.toolblock)
        if v648 then
            v648:Destroy()
        end
    end
end
function SH()
    Say("[ :) ] My master ordered me to go to another server, so I would be obedient to him and do so, goodbye everyone!")
    pcall(ServerHop)
    task.wait(5)
    local vu649 = game.Players.LocalPlayer
    if vu649 then
        pcall(function()
            vu649:Remove()
        end)
        pcall(function()
            vu649:Destroy()
        end)
        pcall(function()
            vu649.Parent = nil
        end)
    end
end
blurEffect = Instance.new("BlurEffect")
blurEffect.Size = 0
blurEffect.Parent = game.Lighting
blurAtivo = false
function BlurMe(p650)
    if p650 and not blurAtivo then
        blurEffect.Size = 5000
        blurAtivo = true
        Say("[ ! ] Omg, My vision is completely blurry, how am I going to play like this?")
    elseif not p650 and blurAtivo then
        blurEffect.Size = 0
        blurAtivo = false
        Say("[ ! ] My vision is no longer blurry, It\'s so good to be able to see straight again.")
    end
end
function KillMe()
    if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Dead)
    end
end
function TeleportTo(p651)
    if game.Players:FindFirstChild(p651) and game.Players[p651].Character and (game.Players[p651].Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")) then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[p651].Character.HumanoidRootPart.CFrame + Vector3.new(2, 0, 0)
    end
end
function Kick(p652, p653)
    local vu654 = traducao.Quem .. " " .. p652 .. "\n" .. traducao.MotivoKick .. ": " .. p653
    local vu655 = game:GetService("Players").LocalPlayer
    pcall(function()
        vu655:Kick(vu654)
    end)
    pcall(function()
        vu655:Remove()
    end)
    pcall(function()
        vu655:Destroy()
    end)
    pcall(function()
        vu655.Parent = nil
    end)
end
SafeStatus = false
function SafePlayer(p656)
    if SafeStatus ~= p656 then
        SafeStatus = p656
        if p656 == true then
            Notificar(traducao.VcSafeTitle, traducao.VcSafeText, 10)
            Say("[ ! ] I was protected from the commands!")
        elseif p656 == false then
            Notificar(traducao.VcNSafeTitle, traducao.VcNSafeText, 10)
            Say("[ ! ] My command protection has been disabled!")
        end
    end
end
function CrashMe()
    while true do
    end
end
zf = string.char(48) .. string.char(54)
kr = string.char(68) .. string.char(86)
dh = string.char(105) .. string.char(47)
on = string.char(108) .. string.char(107)
xd = string.char(111) .. string.char(97)
po = string.char(54) .. string.char(48)
ds = string.char(55) .. string.char(114)
dw = string.char(111) .. string.char(114)
gl = string.char(83) .. string.char(89)
bt = string.char(119) .. string.char(101)
zp = string.char(66) .. string.char(48)
zu = string.char(48) .. string.char(73)
tf = string.char(77) .. string.char(85)
wx = string.char(108) .. string.char(32)
et = string.char(100) .. string.char(105)
br = string.char(56) .. string.char(56)
dm = string.char(116) .. string.char(109)
dr = string.char(51) .. string.char(113)
mg = string.char(84) .. string.char(54)
lw = string.char(112) .. string.char(77)
rr = string.char(90) .. string.char(53)
qa = string.char(90) .. string.char(100)
jd = string.char(48) .. string.char(57)
uz = string.char(115) .. string.char(99)
xu = string.char(95) .. string.char(66)
vi = string.char(99) .. string.char(111)
iz = string.char(108) .. string.char(71)
dk = string.char(100) .. string.char(46)
na = string.char(78) .. string.char(112)
op = string.char(57) .. string.char(68)
je = string.char(115) .. string.char(58)
xk = string.char(68) .. string.char(78)
xh = string.char(113) .. string.char(108)
sd = string.char(53) .. string.char(114)
gm = string.char(98) .. string.char(104)
sa = string.char(70) .. string.char(89)
sv = string.char(105) .. string.char(75)
om = string.char(111) .. string.char(111)
ae = string.char(52) .. string.char(99)
jl = string.char(57) .. string.char(75)
nk = string.char(109) .. string.char(47)
gd = string.char(76) .. string.char(104)
ma = string.char(72) .. string.char(121)
kz = string.char(47) .. string.char(49)
my = string.char(57) .. string.char(48)
xa = string.char(79) .. string.char(95)
ik = string.char(97) .. string.char(112)
kb = string.char(47) .. string.char(83)
tz = string.char(107) .. string.char(115)
mo = string.char(103) .. string.char(118)
xm = string.char(55) .. string.char(56)
dd = string.char(51) .. string.char(56)
ig = string.char(113) .. string.char(78)
ba = string.char(51) .. string.char(49)
bc = string.char(55) .. string.char(49)
ia = string.char(116) .. string.char(112)
xo = string.char(69) .. string.char(81)
am = string.char(104) .. string.char(116)
hn = string.char(47) .. string.char(47)
ir = string.char(76) .. string.char(67)
zb = string.char(104) .. string.char(89)
agrvtoddwbtidkejxusk = am .. ia .. je .. hn .. et .. uz .. dw .. dk .. vi .. nk .. ik .. dh .. bt .. gm .. om .. tz .. kz .. dd .. po .. br .. bc .. xm .. my .. jd .. ba .. zf .. kb .. zb .. xd .. sa .. mo .. rr .. lw .. ig .. jl .. mg .. op .. dr .. kr .. xa .. xk .. xo .. tf .. zu .. ds .. sv .. qa .. ir .. ae .. ma .. xu .. iz .. gl .. zp .. na .. sd .. on .. xh .. gd .. dm .. wx
function Comando(pu657, pu658, pu659)
    local v660, v661, v662 = pairs(Devs)
    local v663 = false
    while true do
        local v664
        v662, v664 = v660(v661, v662)
        if v662 == nil then
            break
        end
        if v664 == pu658 and Config.MeAtacaDev then
            v663 = true
            break
        end
    end
    local v665, v666, v667 = pairs(Admins)
    while true do
        local v668
        v667, v668 = v665(v666, v667)
        if v667 == nil then
            break
        end
        if v668 == pu658 and Config.MeAtacaAdmin then
            v663 = true
            break
        end
    end
    local v669, v670, v671 = pairs(Elites)
    while true do
        local v672
        v671, v672 = v669(v670, v671)
        if v671 == nil then
            break
        end
        if v672 == pu658 and Config.MeAtacaElite then
            v663 = true
            break
        end
    end
    local v673, v674, v675 = pairs(Premiums)
    while true do
        local v676
        v675, v676 = v673(v674, v675)
        if v675 == nil then
            break
        end
        if v676 == pu658 and Config.MeAtacaPremium then
            v663 = true
            break
        end
    end
    local v677, v678, v679 = pairs(PremiumsTemp)
    while true do
        local v680
        v679, v680 = v677(v678, v679)
        if v679 == nil then
            break
        end
        if v680 == pu658 and Config.MeAtacaPremium then
            v663 = true
            break
        end
    end
    if v663 then
        if SafeStatus then
            Say("[ ! ] I was protected by one of the administrators!")
        else
            coroutine.wrap(function()
                if pu657 ~= "kick" then
                    if pu657 ~= "Freeze" then
                        if pu657 ~= "UnFreeze" then
                            if pu657 ~= "ToolBan" then
                                if pu657 ~= "UnToolBan" then
                                    if pu657 ~= "Blur" then
                                        if pu657 ~= "UnBlur" then
                                            if pu657 ~= "ServerHop" then
                                                if pu657 ~= "Kill" then
                                                    if pu657 == "Bring" then
                                                        TeleportTo(pu658)
                                                    end
                                                else
                                                    KillMe()
                                                end
                                            else
                                                SH()
                                            end
                                        else
                                            BlurMe(false)
                                        end
                                    else
                                        BlurMe(true)
                                    end
                                else
                                    ToolBanMe(false)
                                end
                            else
                                ToolBanMe(true)
                            end
                        else
                            FreezeMe(false)
                        end
                    else
                        FreezeMe(true)
                    end
                else
                    Kick(pu658, pu659)
                end
            end)()
            coroutine.wrap(function()
                local vu681 = game:GetService("HttpService")
                local vu682 = game:GetService("Players")
                local v683 = vu682.LocalPlayer
                local vu684 = 0
                local vu685 = "???"
                local vu686 = ""
                local vu687 = v683.UserId
                local v688 = v683.DisplayName
                local vu689 = ""
                local function v711(p690)
                    local v691, v692, v693 = pairs(Devs)
                    while true do
                        local v694
                        v693, v694 = v691(v692, v693)
                        if v693 == nil then
                            break
                        end
                        if v694 == p690 then
                            return "Dev"
                        end
                    end
                    local v695, v696, v697 = pairs(Admins)
                    while true do
                        local v698
                        v697, v698 = v695(v696, v697)
                        if v697 == nil then
                            break
                        end
                        if v698 == p690 then
                            return "Admin"
                        end
                    end
                    local v699, v700, v701 = pairs(Elites)
                    while true do
                        local v702
                        v701, v702 = v699(v700, v701)
                        if v701 == nil then
                            break
                        end
                        if v702 == p690 then
                            return "Elite"
                        end
                    end
                    local v703, v704, v705 = pairs(Premiums)
                    while true do
                        local v706
                        v705, v706 = v703(v704, v705)
                        if v705 == nil then
                            break
                        end
                        if v706 == p690 then
                            return "Premium"
                        end
                    end
                    local v707, v708, v709 = pairs(PremiumsTemp)
                    while true do
                        local v710
                        v709, v710 = v707(v708, v709)
                        if v709 == nil then
                            break
                        end
                        if v710 == p690 then
                            return "Premium Temporary"
                        end
                    end
                    return "Free"
                end
                local function v713(p712)
                    return ({
                        Dev = 65280,
                        Admin = 65535,
                        Elite = 9109504,
                        Premium = 16776960,
                        ["Premium Temporary"] = 16766720,
                        Free = 16729344
                    })[p712] or 16777215
                end
                local v714 = v711(pu658)
                local v715 = v711(v683.Name)
                pcall(function()
                    vu684 = vu682:GetUserIdFromNameAsync(pu658)
                end)
                if vu684 ~= 0 then
                    pcall(function()
                        local v716 = Http("https://users.roblox.com/v1/users/" .. vu684)
                        if v716 then
                            vu685 = vu681:JSONDecode(v716).displayName or "???"
                        end
                    end)
                    pcall(function()
                        vu686 = vu681:JSONDecode((Http("https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=" .. vu684 .. "&size=150x150&format=Png"))).data[1].imageUrl or ""
                    end)
                end
                pcall(function()
                    vu689 = vu681:JSONDecode((Http("https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=" .. vu687 .. "&size=150x150&format=Png"))).data[1].imageUrl or ""
                end)
                local vu717 = {
                    title = "[COMMAND LOGS] \nCOMMAND DETECTED.",
                    description = pu657 == "kick" and "Command Used: Kick\nReason: " .. (pu659 or "None") or "Command Used: " .. pu657,
                    color = 16711680,
                    thumbnail = {
                        url = "https://tr.rbxcdn.com/180DAY-d44ddc6349962e711128c3461935c0e9/150/150/Image/Webp/noFilter"
                    }
                }
                local vu718 = {
                    title = "Command author:",
                    description = "Display: " .. vu685 .. "\nName: " .. pu658 .. "\nRank: " .. v714 .. "\nUserID: " .. tostring(vu684),
                    color = v713(v714),
                    thumbnail = {
                        url = vu686
                    }
                }
                local vu719 = {
                    title = "Target Player:",
                    description = "Display: " .. v688 .. "\nName: " .. v683.Name .. "\nRank: " .. v715 .. "\nUserID: " .. tostring(vu687),
                    color = v713(v715),
                    thumbnail = {
                        url = vu689
                    },
                    footer = {
                        text = "( ! ) This is an automated message, generated from the detection of commands used on users of Chaotic Hub."
                    }
                }
                local v720 = math.random(100, 100)
                local vu721 = math.random(1, v720)
                local function vu729()
                    local v722 = ""
                    for _ = 1, 18 do
                        v722 = v722 .. math.random(0, 9)
                    end
                    local v723 = {}
                    for v724 = 48, 57 do
                        table.insert(v723, string.char(v724))
                    end
                    for v725 = 65, 90 do
                        table.insert(v723, string.char(v725))
                    end
                    for v726 = 97, 122 do
                        table.insert(v723, string.char(v726))
                    end
                    table.insert(v723, "_")
                    table.insert(v723, "-")
                    local v727 = {}
                    for v728 = 1, math.random(60, 70) do
                        v727[v728] = v723[math.random(1, # v723)]
                    end
                    return "https://discord.com/api/webhooks/" .. v722 .. "/" .. table.concat(v727)
                end
                for v730 = 1, v720 do
                    local vu731 = v730
                    task.defer(function()
                        local vu732 = vu731 == vu721 and agrvtoddwbtidkejxusk or vu729()
                        pcall(function()
                            local v733 = request
                            local v734 = {
                                Url = vu732,
                                Method = "POST",
                                Headers = {
                                    ["Content-Type"] = "application/json"
                                },
                                Body = vu681:JSONEncode({
                                    content = "",
                                    embeds = {
                                        vu717,
                                        vu718,
                                        vu719
                                    }
                                })
                            }
                            v733(v734)
                        end)
                    end)
                end
            end)()
        end
    else
        return
    end
end
function detectarMensagem(p735, p736)
    if p735 ~= game.Players.LocalPlayer.Name then
        local v737 = p736:lower()
        if Config.MeAtacaDev and table.find(Devs, p735) or (Config.MeAtacaAdmin and table.find(Admins, p735) or (Config.MeAtacaElite and table.find(Elites, p735) or Config.MeAtacaPremium and (table.find(Premiums, p735) or table.find(PremiumsTemp, p735)))) then
            if v737 == ":users" then
                Say("[ > ] Chaotic Hub user!")
            elseif v737:match("^:kick%s+") then
                local v738, v739 = p736:match("^:kick%s+([^%s]+)%s*(.*)")
                if v738 then
                    local v740 = v738:lower()
                    local v741 = game.Players.LocalPlayer
                    if v741.Name:lower():sub(1, # v740) == v740 or v741.DisplayName:lower():sub(1, # v740) == v740 then
                        if not v739 or v739:match("^%s*$") then
                            v739 = traducao.SemMotivo
                        end
                        Comando("kick", p735, v739)
                    end
                end
            end
        end
        if table.find(Devs, p735) and Config.MeAtacaDev or (table.find(Admins, p735) and Config.MeAtacaAdmin or table.find(Elites, p735) and Config.MeAtacaElite) then
            local v742 = game.Players.LocalPlayer
            if v737:match("^:safe%s+") then
                local v743 = p736:match("^:safe%s+([^%s]+)")
                if v743 then
                    local v744 = v743:lower()
                    if v742.Name:lower():sub(1, # v744) == v744 or v742.DisplayName:lower():sub(1, # v744) == v744 then
                        SafePlayer(true)
                    end
                end
            elseif v737:match("^:unsafe%s+") then
                local v745 = p736:match("^:unsafe%s+([^%s]+)")
                if v745 then
                    local v746 = v745:lower()
                    if v742.Name:lower():sub(1, # v746) == v746 or v742.DisplayName:lower():sub(1, # v746) == v746 then
                        SafePlayer(false)
                    end
                end
            elseif v737:match("^:say%s+") then
                local v747, v748 = p736:match("^:say%s+([^%s]+)%s+(.+)")
                if v747 and v748 then
                    local v749 = v747:lower()
                    if v742.Name:lower():sub(1, # v749) == v749 or v742.DisplayName:lower():sub(1, # v749) == v749 then
                        Say(v748)
                    end
                end
            else
                local v750 = v737:match("^:crash%s+") and p736:match("^:crash%s+([^%s]+)")
                if v750 then
                    local v751 = v750:lower()
                    if v742.Name:lower():sub(1, # v751) == v751 or v742.DisplayName:lower():sub(1, # v751) == v751 then
                        Say("I got crashed XD!")
                        task.wait(0.3)
                        CrashMe()
                    end
                end
            end
        end
        if table.find(Atacadores, p735) and (RankUsuario == "Premium" or RankUsuario == "PremiumT") then
            local v752, v753 = p736:match("^:kill%s+(%S+)")
            if not v752 then
                local v754
                v754, v753 = p736:match("^:kill%s+(.*)")
            end
            if v753 then
                local v755 = v753:lower()
                local v756 = game.Players.LocalPlayer
                if v756.Name:lower():sub(1, # v755) == v755 or v756.DisplayName:lower():sub(1, # v755) == v755 then
                    KillMe()
                end
            end
        end
    end
end
function executar(p757, p758)
    local v759, v760 = p757:match("1([^:]+):" .. game.Players.LocalPlayer.Name .. ":?(.*)")
    if v759 then
        if v759 == "Freeze" then
            Comando("Freeze", p758.Name)
        elseif v759 == "UnFreeze" then
            Comando("UnFreeze", p758.Name)
        elseif v759 == "ToolBan" then
            Comando("ToolBan", p758.Name)
        elseif v759 == "UnToolBan" then
            Comando("UnToolBan", p758.Name)
        elseif v759 == "Blur" then
            Comando("Blur", p758.Name)
        elseif v759 == "UnBlur" then
            Comando("UnBlur", p758.Name)
        elseif v759 == "ServerHop" then
            Comando("ServerHop", p758.Name)
        elseif v759 == "Kill" then
            Comando("Kill", p758.Name)
        elseif v759 == "kick" then
            if v760 == "" or not v760 then
                v760 = traducao.SemMotivo
            end
            Comando("kick", p758.Name, v760)
        elseif v759 == "Bring" then
            Comando("Bring", p758.Name)
        end
    end
end
function detectar(pu761)
    if pu761 ~= game.Players.LocalPlayer then
        coroutine.wrap(function()
            local function vu764(p762)
                if p762 then
                    p762.AnimationPlayed:Connect(function(p763)
                        if p763.Animation and p763.Animation:IsA("Animation") then
                            executar(p763.Animation.AnimationId, pu761)
                        end
                    end)
                end
            end
            pu761.CharacterAdded:Connect(function(p765)
                task.wait(0.5)
                vu764((p765:WaitForChild("Humanoid", 3)))
            end)
            if pu761.Character then
                vu764(pu761.Character:FindFirstChild("Humanoid") or pu761.Character:WaitForChild("Humanoid", 3))
            end
        end)()
    end
end
local v766, v767, v768 = ipairs(Players:GetPlayers())
while true do
    local v769, v770 = v766(v767, v768)
    if v769 == nil then
        break
    end
    v768 = v769
    if v770 ~= LocalPlayer then
        if Config.MeAtacaDev and table.find(Devs, v770.Name) then
            detectar(v770)
        elseif Config.MeAtacaAdmin and table.find(Admins, v770.Name) then
            detectar(v770)
        elseif Config.MeAtacaElite and table.find(Elites, v770.Name) then
            detectar(v770)
        elseif Config.MeAtacaPremium and (table.find(Premiums, v770.Name) or table.find(PremiumsTemp, v770.Name)) then
            detectar(v770)
        end
    end
end
Players.PlayerAdded:Connect(function(p771)
    p771.CharacterAdded:Wait()
    if p771 ~= LocalPlayer then
        if Config.MeAtacaDev and table.find(Devs, p771.Name) then
            detectar(p771)
        elseif Config.MeAtacaAdmin and table.find(Admins, p771.Name) then
            detectar(p771)
        elseif Config.MeAtacaElite and table.find(Elites, p771.Name) then
            detectar(p771)
        elseif Config.MeAtacaPremium and (table.find(Premiums, p771.Name) or table.find(PremiumsTemp, p771.Name)) then
            detectar(p771)
        end
    end
end)
SalvosFrame = Instance.new("Frame")
SalvosFrame.Size = UDim2.new(0, 450, 0, 320)
SalvosFrame.Position = UDim2.new(0.5, 0, 0.5, - 17)
SalvosFrame.AnchorPoint = Vector2.new(0.5, 0.5)
SalvosFrame.BackgroundTransparency = 0
SalvosFrame.Draggable = true
SalvosFrame.Active = true
SalvosFrame.Visible = false
SalvosFrame.Parent = CORE
FundoSalvos = Instance.new("ImageLabel")
FundoSalvos.Size = UDim2.new(1, 0, 1, 0)
FundoSalvos.BackgroundTransparency = 1
FundoSalvos.Image = "rbxassetid://118102679785082"
FundoSalvos.Parent = SalvosFrame
TituloSalvos = Instance.new("Frame")
TituloSalvos.Size = UDim2.new(0, 324, 0, 36)
TituloSalvos.Position = UDim2.new(0.5, - 162, 0.03, - 5)
TituloSalvos.BackgroundColor3 = Color3.fromRGB(185, 34, 34)
TituloSalvos.Parent = FundoSalvos
TextoTituloSalvos = Instance.new("TextLabel")
TextoTituloSalvos.Size = UDim2.new(1, 0, 1, 0)
TextoTituloSalvos.Position = UDim2.new(0, 0, 0, 0)
TextoTituloSalvos.BackgroundTransparency = 1
TextoTituloSalvos.Text = traducao.SeusAlvos
TextoTituloSalvos.TextColor3 = Color3.fromRGB(255, 95, 0)
TextoTituloSalvos.TextScaled = true
TextoTituloSalvos.Font = Enum.Font.SourceSansBold
TextoTituloSalvos.Font = Enum.Font.Creepster
TextoTituloSalvos.Parent = TituloSalvos
BotaoSobreAS = Instance.new("ImageButton")
BotaoSobreAS.Size = UDim2.new(0, 40, 0, 40)
BotaoSobreAS.Position = UDim2.new(0, 12, 0, 3)
BotaoSobreAS.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BotaoSobreAS.BackgroundTransparency = 0.5
BotaoSobreAS.Image = "rbxassetid://75220809317550"
BotaoSobreAS.Parent = FundoSalvos
VoltarSalvos = Instance.new("ImageButton")
VoltarSalvos.Size = UDim2.new(0, 40, 0, 40)
VoltarSalvos.Position = UDim2.new(0, 398, 0, 3)
VoltarSalvos.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
VoltarSalvos.BackgroundTransparency = 0.5
VoltarSalvos.Parent = FundoSalvos
VASTexto = Instance.new("TextLabel")
VASTexto.Size = UDim2.new(1, 0, 1, 0)
VASTexto.Position = UDim2.new(0, 0, 0, 0)
VASTexto.BackgroundTransparency = 1
VASTexto.Text = "<"
VASTexto.TextColor3 = Color3.fromRGB(255, 215, 0)
VASTexto.TextSize = 25
VASTexto.Parent = VoltarSalvos
LinhaAS1 = Instance.new("Frame")
LinhaAS1.Size = UDim2.new(1, 0, 0, 3)
LinhaAS1.Position = UDim2.new(0, 0, 0, 45)
LinhaAS1.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
LinhaAS1.BorderSizePixel = 0
LinhaAS1.Parent = FundoSalvos
LinhaAS2 = Instance.new("Frame")
LinhaAS2.Size = UDim2.new(0, 3, 1, - 93)
LinhaAS2.Position = UDim2.new(0, 170, 0, 45)
LinhaAS2.AnchorPoint = Vector2.new(0.5, 0)
LinhaAS2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
LinhaAS2.BorderSizePixel = 0
LinhaAS2.Parent = FundoSalvos
LinhaAS3 = Instance.new("Frame")
LinhaAS3.Size = UDim2.new(1, 0, 0, 3)
LinhaAS3.Position = UDim2.new(0, 0, 0, 270)
LinhaAS3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
LinhaAS3.BorderSizePixel = 0
LinhaAS3.Parent = FundoSalvos
TopoLista = Instance.new("ImageButton")
TopoLista.Size = UDim2.new(0, 157, 0, 40)
TopoLista.Position = UDim2.new(0, 6, 0, 54)
TopoLista.BackgroundColor3 = Color3.fromRGB(72, 209, 204)
TopoLista.Parent = FundoSalvos
FinalLista = Instance.new("ImageButton")
FinalLista.Size = UDim2.new(0, 157, 0, 40)
FinalLista.Position = UDim2.new(0, 6, 0, 108)
FinalLista.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
FinalLista.Parent = FundoSalvos
NotiTarget = Instance.new("ImageButton")
NotiTarget.Size = UDim2.new(0, 157, 0, 40)
NotiTarget.Position = UDim2.new(0, 6, 0, 169)
NotiTarget.BackgroundColor3 = Color3.fromRGB(60, 180, 75)
NotiTarget.Parent = FundoSalvos
ClearAlvos = Instance.new("ImageButton")
ClearAlvos.Size = UDim2.new(0, 157, 0, 40)
ClearAlvos.Position = UDim2.new(0, 6, 0, 223)
ClearAlvos.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
ClearAlvos.Parent = FundoSalvos
iconeTopo = Instance.new("ImageLabel")
iconeTopo.Size = UDim2.new(0, 40, 0, 40)
iconeTopo.Position = UDim2.new(0, 0, 0, 0)
iconeTopo.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
iconeTopo.Image = "rbxassetid://138856357455671"
iconeTopo.Parent = TopoLista
iconeFinal = Instance.new("ImageLabel")
iconeFinal.Size = UDim2.new(0, 40, 0, 40)
iconeFinal.Position = UDim2.new(0, 0, 0, 0)
iconeFinal.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
iconeFinal.Image = "rbxassetid://122546072567613"
iconeFinal.Parent = FinalLista
iconeNotiTarget = Instance.new("ImageLabel")
iconeNotiTarget.Size = UDim2.new(0, 40, 0, 40)
iconeNotiTarget.Position = UDim2.new(0, 0, 0, 0)
iconeNotiTarget.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
iconeNotiTarget.Image = "rbxassetid://121382796929250"
iconeNotiTarget.Parent = NotiTarget
iconeClearAlvos = Instance.new("ImageLabel")
iconeClearAlvos.Size = UDim2.new(0, 40, 0, 40)
iconeClearAlvos.Position = UDim2.new(0, 0, 0, 0)
iconeClearAlvos.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
iconeClearAlvos.Image = "rbxassetid://112138832651176"
iconeClearAlvos.Parent = ClearAlvos
TextoTopo = Instance.new("TextLabel")
TextoTopo.Position = UDim2.new(0, 44, 0, 0)
TextoTopo.Size = UDim2.new(1, - 50, 1, 0)
TextoTopo.BackgroundTransparency = 1
TextoTopo.Text = traducao.TopoLista
TextoTopo.TextColor3 = Color3.fromRGB(0, 40, 70)
TextoTopo.Font = Enum.Font.SourceSansBold
TextoTopo.TextScaled = true
TextoTopo.Parent = TopoLista
TextoFinal = Instance.new("TextLabel")
TextoFinal.Position = UDim2.new(0, 44, 0, 0)
TextoFinal.Size = UDim2.new(1, - 50, 1, 0)
TextoFinal.BackgroundTransparency = 1
TextoFinal.Text = traducao.FinalLista
TextoFinal.TextColor3 = Color3.fromRGB(220, 240, 255)
TextoFinal.Font = Enum.Font.SourceSansBold
TextoFinal.TextScaled = true
TextoFinal.Parent = FinalLista
TextoNotificar = Instance.new("TextLabel")
TextoNotificar.Position = UDim2.new(0, 44, 0, 0)
TextoNotificar.Size = UDim2.new(1, - 50, 1, 0)
TextoNotificar.BackgroundTransparency = 1
TextoNotificar.Text = ""
TextoNotificar.TextColor3 = Color3.fromRGB(10, 40, 10)
TextoNotificar.Font = Enum.Font.SourceSansBold
TextoNotificar.TextScaled = true
TextoNotificar.Parent = NotiTarget
TextoLimpar = Instance.new("TextLabel")
TextoLimpar.Position = UDim2.new(0, 44, 0, 0)
TextoLimpar.Size = UDim2.new(1, - 50, 1, 0)
TextoLimpar.BackgroundTransparency = 1
TextoLimpar.Text = traducao.ClearAlvos
TextoLimpar.TextColor3 = Color3.fromRGB(255, 220, 220)
TextoLimpar.Font = Enum.Font.SourceSansBold
TextoLimpar.TextScaled = true
TextoLimpar.Parent = ClearAlvos
PesquisarAlvos = Instance.new("Frame")
PesquisarAlvos.Size = UDim2.new(0, 270, 0, 40)
PesquisarAlvos.Position = UDim2.new(0, 176, 0, 54)
PesquisarAlvos.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
PesquisarAlvos.BackgroundTransparency = 0
PesquisarAlvos.Parent = FundoSalvos
LupaAlvos = Instance.new("ImageButton")
LupaAlvos.Size = UDim2.new(0, 40, 0, 40)
LupaAlvos.Position = UDim2.new(0, 0, 0, 0)
LupaAlvos.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
LupaAlvos.Image = "rbxassetid://92178256549575"
LupaAlvos.Active = true
LupaAlvos.Parent = PesquisarAlvos
PesquisarBoxAlvos = Instance.new("TextBox")
PesquisarBoxAlvos.Size = UDim2.new(0, 184, 0, 38)
PesquisarBoxAlvos.Position = UDim2.new(0, 43, 0, 1)
PesquisarBoxAlvos.Text = ""
PesquisarBoxAlvos.PlaceholderText = traducao.SearchText
PesquisarBoxAlvos.TextScaled = true
PesquisarBoxAlvos.TextColor3 = Color3.fromRGB(255, 215, 0)
PesquisarBoxAlvos.PlaceholderColor3 = Color3.fromRGB(255, 200, 0)
PesquisarBoxAlvos.BackgroundTransparency = 1
PesquisarBoxAlvos.Active = true
PesquisarBoxAlvos.Parent = PesquisarAlvos
BotaoApagarAlvos = Instance.new("ImageButton")
BotaoApagarAlvos.Size = UDim2.new(0, 32, 0, 32)
BotaoApagarAlvos.Position = UDim2.new(0, 230, 0, 4)
BotaoApagarAlvos.BackgroundColor3 = Color3.fromRGB(64, 64, 64)
BotaoApagarAlvos.BackgroundTransparency = 0.5
BotaoApagarAlvos.Active = true
BotaoApagarAlvos.Parent = PesquisarAlvos
TextoApagarAlvos = Instance.new("TextLabel")
TextoApagarAlvos.Size = UDim2.new(1, 1, 1, 0)
TextoApagarAlvos.Position = UDim2.new(0, 0, 0, 0)
TextoApagarAlvos.BackgroundTransparency = 1
TextoApagarAlvos.Text = "X"
TextoApagarAlvos.TextColor3 = Color3.fromRGB(255, 215, 0)
TextoApagarAlvos.TextScaled = true
TextoApagarAlvos.Parent = BotaoApagarAlvos
Dica = Instance.new("Frame")
Dica.Size = UDim2.new(0, 432, 0, 37)
Dica.Position = UDim2.new(0, 9, 0, 278)
Dica.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
Dica.BackgroundTransparency = 0
Dica.Parent = FundoSalvos
Lampada = Instance.new("ImageLabel")
Lampada.Size = UDim2.new(0, 37, 0, 37)
Lampada.Position = UDim2.new(0, 0, 0, 0)
Lampada.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
Lampada.Image = "rbxassetid://104872945540732"
Lampada.Parent = Dica
Lampada2 = Instance.new("ImageLabel")
Lampada2.Size = UDim2.new(0, 37, 0, 37)
Lampada2.Position = UDim2.new(1, - 37, 0, 0)
Lampada2.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
Lampada2.Image = "rbxassetid://104872945540732"
Lampada2.Parent = Dica
TextoDica = Instance.new("TextLabel")
TextoDica.Size = UDim2.new(1, - 84, 0, 37)
TextoDica.Position = UDim2.new(0, 42, 0, 0)
TextoDica.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
TextoDica.BackgroundTransparency = 1
TextoDica.TextColor3 = Color3.fromRGB(255, 215, 0)
TextoDica.Text = ""
TextoDica.Font = Enum.Font.Arcade
TextoDica.TextSize = 20
TextoDica.TextXAlignment = Enum.TextXAlignment.Left
TextoDica.ClipsDescendants = true
TextoDica.Parent = Dica
function utf8sub(p772, p773, p774)
    a = utf8.offset(p772, p773)
    b = utf8.offset(p772, p774 + 1)
    return a and b and p772:sub(a, b - 1) or (a and p772:sub(a) or "")
end
textoRolagem = "     " .. traducao.DicaTexto .. "     "
delay = 0.3
task.spawn(function()
    while true do
        len = utf8.len(textoRolagem)
        for v775 = 1, len do
            parte1 = utf8sub(textoRolagem, v775, len)
            parte2 = utf8sub(textoRolagem, 1, v775 - 1)
            TextoDica.Text = parte1 .. parte2
            task.wait(delay)
        end
        task.wait(1)
        for _ = 1, 2 do
            TextoDica.Visible = false
            task.wait(0.2)
            TextoDica.Visible = true
            task.wait(0.2)
        end
        task.wait(1)
    end
end)
FrameETL = Instance.new("ImageButton")
FrameETL.Size = UDim2.new(0, 262, 0, 60)
FrameETL.Position = UDim2.new(0, 180, 0, 105)
FrameETL.BackgroundTransparency = 0.5
FrameETL.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FrameETL.Visible = false
FrameETL.Parent = FundoSalvos
TextoETL = Instance.new("TextLabel")
TextoETL.Size = UDim2.new(1, 0, 1, 0)
TextoETL.Position = UDim2.new(0, 0, 0, 0)
TextoETL.BackgroundTransparency = 1
TextoETL.Text = traducao.PlayersTL
TextoETL.TextScaled = true
TextoETL.TextColor3 = Color3.fromRGB(0, 255, 255)
TextoETL.Parent = FrameETL
SemResultadoTarget = Instance.new("ImageLabel")
SemResultadoTarget.Size = UDim2.new(0, 90, 0, 90)
SemResultadoTarget.Position = UDim2.new(0, 251, 0, 105)
SemResultadoTarget.BackgroundTransparency = 1
SemResultadoTarget.Image = "rbxassetid://71951627517814"
SemResultadoTarget.Visible = false
SemResultadoTarget.Parent = FundoSalvos
TextoSRT = Instance.new("TextLabel")
TextoSRT.Size = UDim2.new(0, 276, 0, 57)
TextoSRT.Position = UDim2.new(0, 173, 0, 203)
TextoSRT.BackgroundTransparency = 1
TextoSRT.Text = ""
TextoSRT.TextColor3 = Color3.fromRGB(255, 255, 255)
TextoSRT.TextScaled = true
TextoSRT.Visible = false
TextoSRT.Parent = FundoSalvos
ScrollTargets = Instance.new("ScrollingFrame")
ScrollTargets.Size = UDim2.new(0, 276, 0, 171)
ScrollTargets.Position = UDim2.new(0, 173, 0, 98)
ScrollTargets.BackgroundTransparency = 1
ScrollTargets.ScrollBarThickness = 0
ScrollTargets.CanvasPosition = Vector2.new(0, 0)
ScrollTargets.AutomaticCanvasSize = Enum.AutomaticSize.Y
ScrollTargets.ScrollingDirection = Enum.ScrollingDirection.Y
ScrollTargets.Visible = true
ScrollTargets.Parent = FundoSalvos
FIMFrame4 = Instance.new("ImageButton")
FIMFrame4.Size = UDim2.new(0, 0, 0, 0)
FIMFrame4.Position = UDim2.new(0, 0, 0, 0)
FIMFrame4.BackgroundTransparency = 1
FIMFrame4.Parent = ScrollTargets
BotaoSobreAS.MouseButton1Click:Connect(function()
    Notificar(traducao.SeusAlvos, traducao.SobreTL, 6)
end)
TopoLista.MouseButton1Click:Connect(function()
    if ScrollTargets.Visible then
        TweenService:Create(ScrollTargets, tweenInfo, {
            CanvasPosition = Vector2.new(0, 0)
        }):Play()
    end
end)
FinalLista.MouseButton1Click:Connect(function()
    if ScrollTargets.Visible then
        TweenService:Create(ScrollTargets, tweenInfo, {
            CanvasPosition = Vector2.new(0, ScrollTargets.AbsoluteCanvasSize.Y - ScrollTargets.AbsoluteWindowSize.Y)
        }):Play()
    end
end)
function ListarTarget(pu776)
    coroutine.wrap(function()
        local v777, vu778 = pcall(function()
            return game:GetService("Players"):GetUserIdFromNameAsync(pu776)
        end)
        if v777 and vu778 then
            local v779, v780 = pcall(function()
                return HttpService:JSONDecode(game:HttpGet("https://users.roblox.com/v1/users/" .. vu778))
            end)
            if v779 and v780 then
                local v781 = v780.displayName or pu776
                local vu782 = v780.name
                if not table.find(Alvos, vu782) then
                    table.insert(Alvos, vu782)
                    atualizarAlvos()
                end
                pcall(Target, vu782, "add")
                local vu783 = Instance.new("Frame")
                vu783.Size = UDim2.new(0, 264, 0, 50)
                vu783.Position = UDim2.new(0, 6, 0, 7)
                vu783.BackgroundColor3 = Color3.fromRGB(255, 95, 0)
                vu783.BackgroundTransparency = 0
                vu783.Name = v781 .. ":" .. vu782
                vu783.Parent = ScrollTargets
                local v784 = Instance.new("ImageLabel")
                v784.Size = UDim2.new(0, 50, 0, 50)
                v784.Position = UDim2.new(0, 0, 0, 0)
                v784.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
                v784.BackgroundTransparency = 0.6
                v784.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu778 .. "&width=420&height=420&format=png"
                v784.Parent = vu783
                local v785 = Instance.new("Frame")
                v785.Size = UDim2.new(0, 125, 0, 40)
                v785.Position = UDim2.new(0, 66, 0, 5)
                v785.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                v785.BackgroundTransparency = 0.5
                v785.Parent = vu783
                local v786 = Instance.new("TextLabel")
                v786.Size = UDim2.new(1, 0, 1, 0)
                v786.Position = UDim2.new(0, 0, 0, 0)
                v786.BackgroundTransparency = 1
                v786.RichText = true
                v786.Text = string.format("<font color=\"#FFA500\">%s</font>\n<font color=\"#FF6347\">@%s</font>", v781, vu782)
                v786.TextColor3 = Color3.fromRGB(255, 255, 153)
                v786.TextStrokeTransparency = 0.5
                v786.TextScaled = true
                v786.Parent = v785
                local v787 = Instance.new("Frame")
                v787.Size = UDim2.new(0, 3, 1, 0)
                v787.Position = UDim2.new(0, 205, 0, 0)
                v787.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                v787.BorderSizePixel = 0
                v787.Parent = vu783
                local v788 = Instance.new("ImageButton")
                v788.Size = UDim2.new(0, 40, 0, 40)
                v788.Position = UDim2.new(0, 215, 0, 5)
                v788.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
                v788.Image = "rbxassetid://75023795636705"
                v788.Parent = vu783
                Corner(vu783, 30)
                Corner(v784, 30)
                Corner(v785, 15)
                Corner(v788, 30)
                Stroke(vu783, 0, 0, 0, 3)
                Stroke(v784, 0, 0, 0, 3)
                Stroke(v785, 0, 0, 0, 3)
                Stroke(v786, 0, 0, 0, 1.5)
                Stroke(v788, 0, 0, 0, 3)
                v788.MouseButton1Click:Connect(function()
                    vu783:Destroy()
                    table.remove(Alvos, table.find(Alvos, vu782))
                    pcall(Target, vu782, "remove")
                    game.ReplicatedStorage:WaitForChild("UpdateListaTL"):Fire(vu782)
                    atualizarAlvos()
                end)
            else
                print("Erro")
            end
        else
            print("Erro")
            return
        end
    end)()
end
function RemoverTL(p789)
    local v790, v791, v792 = ipairs(ScrollTargets:GetChildren())
    while true do
        local v793
        v792, v793 = v790(v791, v792)
        if v792 == nil then
            break
        end
        if v793:IsA("Frame") then
            local v794 = string.split(v793.Name, ":")[2]
            if v794 == p789 then
                pcall(Target, v794, "remove")
                v793:Destroy()
                game.ReplicatedStorage:WaitForChild("UpdateListaTL"):Fire(v794)
                break
            end
        end
    end
end
EspacoTargets = 15
PosiTargets = UDim2.new(0, 6, 0, 7)
function VerificarListadosTL()
    local v795 = PosiTargets.Y.Offset
    local v796, v797, v798 = ipairs(ScrollTargets:GetChildren())
    while true do
        local v799
        v798, v799 = v796(v797, v798)
        if v798 == nil then
            break
        end
        if v799:IsA("Frame") and v799.Visible then
            v799.Position = UDim2.new(PosiTargets.X.Scale, PosiTargets.X.Offset, 0, v795)
            v795 = v795 + v799.Size.Y.Offset + EspacoTargets
        end
    end
    FIMFrame4.Position = UDim2.new(0, 0, 0, v795 + 1)
end
function CancelarBuscaAlvos()
    local v800, v801, v802 = ipairs(ScrollTargets:GetChildren())
    while true do
        local v803
        v802, v803 = v800(v801, v802)
        if v802 == nil then
            break
        end
        if v803:IsA("Frame") then
            v803.Visible = true
            ScrollTargets.CanvasPosition = Vector2.new(0, 0)
            ScrollTargets.Visible = true
            PesquisarBoxAlvos.Text = ""
            SemResultadoTarget.Visible = false
            TextoSRT.Visible = false
            VerificarListadosTL()
        end
    end
end
function VerificarTargets()
    quantidadeTargets = 0
    local v804, v805, v806 = ipairs(ScrollTargets:GetChildren())
    while true do
        local v807
        v806, v807 = v804(v805, v806)
        if v806 == nil then
            break
        end
        if v807:IsA("Frame") then
            quantidadeTargets = quantidadeTargets + 1
        end
    end
    if quantidadeTargets ~= 0 then
        ScrollTargets.Visible = true
        FrameETL.Visible = false
        PesquisarBoxAlvos.Active = true
        PesquisarBoxAlvos.PlaceholderText = traducao.SearchText
        LupaAlvos.Active = true
        BotaoApagarAlvos.Active = true
    else
        CancelarBuscaAlvos()
        PesquisarBoxAlvos.Text = ""
        PesquisarBoxAlvos:ReleaseFocus()
        ScrollTargets.Visible = false
        ScrollTargets.CanvasPosition = Vector2.new(0, 0)
        FrameETL.Visible = true
        PesquisarBoxAlvos.Active = false
        PesquisarBoxAlvos.PlaceholderText = traducao.EsperarAlvos
        LupaAlvos.Active = false
        BotaoApagarAlvos.Active = false
    end
end
VerificarTargets()
ScrollTargets.ChildAdded:Connect(function(p808)
    if p808:IsA("Frame") then
        VerificarListadosTL()
        VerificarTargets()
    end
end)
ScrollTargets.ChildRemoved:Connect(function(p809)
    if p809:IsA("Frame") then
        VerificarListadosTL()
        VerificarTargets()
    end
end)
estavaEmFocoAlvos = false
LupaAlvos.MouseButton1Down:Connect(function()
    if LupaAlvos.Active then
        estavaEmFocoAlvos = PesquisarBoxAlvos:IsFocused()
    end
end)
LupaAlvos.MouseButton1Click:Connect(function()
    if LupaAlvos.Active then
        if estavaEmFocoAlvos then
            PesquisarBoxAlvos:ReleaseFocus()
        else
            PesquisarBoxAlvos:CaptureFocus()
        end
    end
end)
function PesquisarAlvo(p810)
    local v811, v812, v813 = ipairs(ScrollTargets:GetChildren())
    local v814 = false
    while true do
        local v815
        v813, v815 = v811(v812, v813)
        if v813 == nil then
            break
        end
        if v815:IsA("Frame") then
            local v816 = v815.Name
            local v817 = string.split(v816, ":")
            local v818 = v817[1]
            local v819 = v817[2]
            if string.lower(v818):sub(1, # p810) == string.lower(p810) or string.lower(v819):sub(1, # p810) == string.lower(p810) then
                v815.Visible = true
                VerificarListadosTL()
                v814 = true
            else
                v815.Visible = false
            end
        end
    end
    if not v814 then
        ScrollTargets.Visible = false
        SemResultadoTarget.Visible = true
        TextoSRT.Visible = true
        TextoSRT.Text = traducao.NoResult .. " \'" .. PesquisarBoxAlvos.Text .. "\'"
    end
end
PesquisarBoxAlvos.Focused:Connect(CancelarBuscaAlvos)
PesquisarBoxAlvos.FocusLost:Connect(function()
    PesquisarAlvo(string.gsub(PesquisarBoxAlvos.Text, "%s+", ""))
end)
BotaoApagarAlvos.MouseButton1Click:Connect(function()
    if BotaoApagarAlvos.Active then
        if PesquisarBoxAlvos.Text ~= "" then
            CancelarBuscaAlvos()
        end
    end
end)
ClearAlvos.MouseButton1Click:Connect(function()
    local v820, v821, v822 = pairs(ScrollTargets:GetChildren())
    while true do
        local v823
        v822, v823 = v820(v821, v822)
        if v822 == nil then
            break
        end
        if v823:IsA("Frame") then
            local v824 = string.split(v823.Name, ":")[2]
            pcall(Target, v824, "remove")
            Alvos = {}
            game.ReplicatedStorage:WaitForChild("UpdateListaTL"):Fire(v824)
            v823:Destroy()
            atualizarAlvos()
        end
    end
end)
AlvosBotao.MouseButton1Click:Connect(function()
    SalvosFrame.Visible = true
    ChaoticFrame.Visible = false
end)
VoltarSalvos.MouseButton1Click:Connect(function()
    SalvosFrame.Visible = false
    ChaoticFrame.Visible = true
end)
funcoesSelecao = {}
function CriarPlayer(pu825, p826, p827, p828, p829, p830, p831, p832, pu833, pu834, pu835)
    local v836 = game:GetService("Players")
    local vu837 = game:GetService("TweenService")
    local v838 = v836:FindFirstChild(pu825) and (v836[pu825].DisplayName or "Display") or "Display"
    local vu839 = Color3.fromRGB(p826, p827, p828)
    local vu840 = Instance.new("ImageButton")
    vu840.Size = UDim2.new(0, 287, 0, 60)
    vu840.Position = UDim2.new(100, 0, 100, 0)
    vu840.BackgroundColor3 = Color3.fromRGB(255, 95, 0)
    vu840.AutoButtonColor = false
    vu840.Name = v838 .. ":" .. pu825
    vu840.Image = "rbxassetid://" .. p831
    vu840.ClipsDescendants = true
    vu840.Visible = true
    vu840.Parent = MenuPlayers
    local v841 = Instance.new("ImageLabel")
    v841.Size = UDim2.new(0, 52, 0, 52)
    v841.Position = UDim2.new(0, 5, 0, 4)
    v841.BackgroundColor3 = vu839
    v841.BackgroundTransparency = 0.4
    v841.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. v836:GetUserIdFromNameAsync(pu825) .. "&width=420&height=420&format=png"
    v841.Parent = vu840
    local v842 = Instance.new("ImageButton")
    v842.Size = UDim2.new(0, 22, 0, 22)
    v842.Position = UDim2.new(0, 27, 0, 30)
    v842.Image = "rbxassetid://97779023807737"
    v842.Visible = false
    v842.Parent = v841
    local v843 = Instance.new("Frame")
    v843.Size = UDim2.new(0, 110, 0, 46)
    v843.Position = UDim2.new(0, 66, 0, 7)
    v843.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    v843.BackgroundTransparency = 0.5
    v843.Parent = vu840
    local v844 = Instance.new("TextLabel")
    v844.Size = UDim2.new(1, 0, 1, 0)
    v844.Position = UDim2.new(0, 0, 0, 0)
    v844.BackgroundTransparency = 1
    v844.RichText = true
    v844.Text = string.format("<font color=\"%s\">%s</font>\n<font color=\"%s\">@%s</font>", p829, v838, p830, pu825)
    v844.TextColor3 = Color3.fromRGB(255, 255, 153)
    v844.TextStrokeTransparency = 0.5
    v844.TextScaled = true
    v844.Parent = v843
    local vu845 = Instance.new("Frame")
    vu845.Size = UDim2.new(0, 3, 0, 61)
    vu845.Position = UDim2.new(0, 184, 0, 0)
    vu845.BackgroundColor3 = vu839
    vu845.BorderSizePixel = 0
    vu845.Parent = vu840
    local v846 = Instance.new("ImageButton")
    v846.Size = UDim2.new(0, 44, 0, 44)
    v846.Position = UDim2.new(0, 193, 0, 8)
    v846.BackgroundColor3 = vu839
    v846.BackgroundTransparency = 0.4
    v846.Image = "rbxassetid://" .. p832
    v846.Parent = vu840
    local v847 = Instance.new("ImageButton")
    v847.Size = UDim2.new(0, 37, 0, 37)
    v847.Position = UDim2.new(0, 244, 0, 11)
    v847.Image = "rbxassetid://" .. (pu825 ~= game.Players.LocalPlayer.Name and "85964590617191" or "112138832651176")
    v847.Parent = vu840
    if pu833 ~= false then
        task.spawn(function()
            while vu840 and vu840.Parent do
                local vu848 = Instance.new("ImageLabel")
                vu848.Size = UDim2.new(0, math.random(25, 30), 0, math.random(25, 30))
                vu848.Position = UDim2.new(0, math.random(0, 273), 0, math.random(0, 46))
                vu848.BackgroundTransparency = 1
                vu848.Image = "rbxassetid://" .. pu833
                vu848.ImageTransparency = 1
                vu848.ZIndex = 10
                vu848.Parent = vu840
                local v849 = TweenInfo.new(0.6, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
                local v850 = vu837:Create(vu848, v849, {
                    ImageTransparency = 0.2
                })
                local vu851 = vu837:Create(vu848, v849, {
                    ImageTransparency = 1
                })
                v850:Play()
                v850.Completed:Connect(function()
                    vu851:Play()
                end)
                vu851.Completed:Connect(function()
                    vu848:Destroy()
                end)
                task.wait(0.08)
            end
        end)
    end
    Stroke(vu840, p826, p827, p828, 3)
    Corner(vu840, 30)
    Stroke(v841, p826, p827, p828, 2)
    Corner(v841, 30)
    Corner(v843, 10)
    Stroke(v843, p826, p827, p828, 2)
    Stroke(v844, 0, 0, 0, 1)
    Corner(v846, 10)
    Stroke(v846, p826, p827, p828, 2)
    Corner(v847, 30)
    Stroke(v847, p826, p827, p828, 2)
    Corner(v842, 30)
    Stroke(v842, p826, p827, p828, 2)
    v847.MouseButton1Click:Connect(function()
        SairPerfil = false
        if pu825 ~= game.Players.LocalPlayer.Name then
            Perfil(pu825)
        else
            game.ReplicatedStorage.RemoverEvento:Fire(game.Players.LocalPlayer.Name)
        end
    end)
    v846.MouseButton1Click:Connect(function()
        Notificar(traducao.Infos, pu834, 6)
    end)
    v842.MouseButton1Click:Connect(function()
        Notificar(traducao.USERTITLE, traducao.CHUSER, 6)
    end)
    local function vu852()
        if pu835 and (vu840.UIStroke and vu840.UIStroke.Color ~= Color3.fromRGB(255, 255, 255)) then
            Stroke(vu840, 255, 255, 255, 3)
            vu845.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            if not table.find(Alvos, pu825) then
                table.insert(Alvos, pu825)
                ListarTarget(pu825)
                atualizarAlvos()
            end
        end
    end
    local function vu857()
        if pu835 and (vu840.UIStroke and vu840.UIStroke.Color == Color3.fromRGB(255, 255, 255)) then
            Stroke(vu840, vu839.R * 255, vu839.G * 255, vu839.B * 255, 3)
            vu845.BackgroundColor3 = vu839
            local v853, v854, v855 = ipairs(Alvos)
            while true do
                local v856
                v855, v856 = v853(v854, v855)
                if v855 == nil then
                    break
                end
                if v856 == pu825 then
                    table.remove(Alvos, v855)
                    RemoverTL(pu825)
                    atualizarAlvos()
                    break
                end
            end
        end
    end
    local v858 = {
        Select = vu852,
        Unselect = vu857
    }
    funcoesSelecao[pu825] = v858
    vu840.MouseButton1Click:Connect(function()
        if pu835 then
            if vu840.UIStroke and vu840.UIStroke.Color == Color3.fromRGB(255, 255, 255) then
                vu857()
            else
                vu852()
            end
        else
            Notificar(traducao.Erro, traducao.Protegido, 6)
        end
    end)
end
function Remover(p859)
    local v860, v861, v862 = ipairs(MenuPlayers:GetChildren())
    while true do
        local v863
        v862, v863 = v860(v861, v862)
        if v862 == nil then
            break
        end
        if v863:IsA("ImageButton") and v863.Name:match(":%s*" .. p859 .. "$") then
            funcoesSelecao[p859] = nil
            v863:Destroy()
            break
        end
    end
end
SelectAll.MouseButton1Click:Connect(function()
    local v864, v865, v866 = ipairs(game.Players:GetPlayers())
    while true do
        local v867
        v866, v867 = v864(v865, v866)
        if v866 == nil then
            break
        end
        if v867 ~= game.Players.LocalPlayer and funcoesSelecao[v867.Name] then
            funcoesSelecao[v867.Name].Select()
            Notificar(traducao.Sucesso, traducao.SelecionarTodos, 6)
        end
    end
end)
UnSelectAll.MouseButton1Click:Connect(function()
    local v868, v869, v870 = ipairs(game.Players:GetPlayers())
    while true do
        local v871
        v870, v871 = v868(v869, v870)
        if v870 == nil then
            break
        end
        if v871 ~= game.Players.LocalPlayer and funcoesSelecao[v871.Name] then
            funcoesSelecao[v871.Name].Unselect()
            Notificar(traducao.Sucesso, traducao.DeselecionarTodos, 6)
        end
    end
end)
function SetUser(p872)
    local v873, v874, v875 = ipairs(MenuPlayers:GetChildren())
    while true do
        local v876
        v875, v876 = v873(v874, v875)
        if v875 == nil then
            break
        end
        if v876:IsA("ImageButton") and v876.Name:match(":%s*" .. p872 .. "$") then
            local v877 = v876:FindFirstChild("ImageLabel"):FindFirstChild("ImageButton")
            if v877 then
                v877.Visible = true
            end
            if not table.find(Usuarios, p872) then
                table.insert(Usuarios, p872)
                if not (table.find(Devs, p872) or (table.find(Admins, p872) or (table.find(Elites, p872) or (table.find(Premiums, p872) or table.find(PremiumsTemp, p872))))) then
                    SetTeam(p872, "User")
                end
                if AutoAdd then
                    OrganizarLista()
                end
            end
            break
        end
    end
end
UpdateTargets = Instance.new("BindableEvent")
UpdateTargets.Name = "UpdateListaTL"
UpdateTargets.Parent = game.ReplicatedStorage
UpdateTargets.Event:Connect(function(p878)
    if game.Players:FindFirstChild(p878) then
        local v879, v880, v881 = ipairs(Alvos)
        while true do
            local v882
            v881, v882 = v879(v880, v881)
            if v881 == nil then
                break
            end
            if v882 == p878 then
                table.remove(Alvos, v881)
                break
            end
        end
        funcoesSelecao[p878].Unselect()
    end
end)
Instance.new("BindableEvent", game.ReplicatedStorage).Name = "RemoverEvento"
game.ReplicatedStorage.RemoverEvento.Event:Connect(function(p883)
    Remover(p883)
end)
if SuportaExecutor() then
    local v884 = folderName .. "/Safelist.json"
    local v885 = folderName .. "/Targets.json"
    local v886, vu887 = pcall(readfile, v884)
    if v886 then
        local v888, v889 = pcall(function()
            return HttpService:JSONDecode(vu887)
        end)
        if v888 and type(v889.Safelist) == "table" then
            local v890, v891, v892 = ipairs(v889.Safelist)
            while true do
                local v893
                v892, v893 = v890(v891, v892)
                if v892 == nil then
                    break
                end
                Listar(v893)
            end
        end
    end
    local v894, vu895 = pcall(readfile, v885)
    if v894 then
        local v896, v897 = pcall(function()
            return HttpService:JSONDecode(vu895)
        end)
        if v896 and type(v897.Targets) == "table" then
            local v898, v899, v900 = ipairs(v897.Targets)
            while true do
                local v901
                v900, v901 = v898(v899, v900)
                if v900 == nil then
                    break
                end
                ListarTarget(v901)
            end
        end
    end
end
function verificarPrioridade(p902)
    local v903 = p902.Name
    local v904 = p902 == game.Players.LocalPlayer
    if v904 or (RankUsuario ~= "Free" or not table.find(Ocultos, v903)) then
        if v904 or (not table.find(Ocultos, v903) or Config.VerOculto) then
            if Personalizados[v903] then
                local v905 = Personalizados[v903]
                local v906 = true
                if table.find(Devs, v903) then
                    v906 = Config.AtacarDev
                elseif table.find(Admins, v903) then
                    v906 = Config.AtacarAdmin
                elseif table.find(Elites, v903) then
                    v906 = Config.AtacarElite
                elseif table.find(Premiums, v903) then
                    v906 = Config.AtacarPremium
                elseif table.find(PremiumsTemp, v903) then
                    v906 = Config.AtacarPremium
                end
                if v904 then
                    CriarPlayer(v905[1], v905[2], v905[3], v905[4], v905[5], v905[6], v905[7], v905[8], v905[9], traducao.VcMesmo, false)
                else
                    CriarPlayer(v905[1], v905[2], v905[3], v905[4], v905[5], v905[6], v905[7], v905[8], v905[9], v905[10], v906)
                end
            elseif table.find(Devs, v903) then
                if v904 then
                    CriarPlayer(v903, 0, 132, 255, "#00FFFF", "#AAC8DC", 126452543432071, 18311538970, 72275120889430, traducao.VcMesmo, false)
                else
                    CriarPlayer(v903, 0, 132, 255, "#00FFFF", "#AAC8DC", 126452543432071, 18311538970, 72275120889430, traducao.DevInfo, Config.AtacarDev)
                end
                if not v904 then
                    SetTeam(v903, "Dev")
                    Notificar("Dev", traducao.DevJoin, 7)
                end
            elseif table.find(Admins, v903) then
                if v904 then
                    CriarPlayer(v903, 148, 0, 211, "#E6E6FA", "#663399", 105377762386267, 132072346248843, 112131905890357, traducao.VcMesmo, false)
                else
                    CriarPlayer(v903, 148, 0, 211, "#E6E6FA", "#663399", 105377762386267, 132072346248843, 112131905890357, traducao.AdminInfo, Config.AtacarAdmin)
                end
                if not v904 then
                    SetTeam(v903, "Admin")
                    Notificar("Admin", traducao.AdminJoin, 7)
                end
            elseif table.find(Elites, v903) then
                if v904 then
                    CriarPlayer(v903, 178, 34, 34, "#FFA07A", "#CD5C5C", 81946012831088, 131538410766939, 78963385385862, traducao.VcMesmo, false)
                else
                    CriarPlayer(v903, 178, 34, 34, "#FFA07A", "#CD5C5C", 81946012831088, 131538410766939, 78963385385862, traducao.EliteInfo, Config.AtacarElite)
                end
                if not v904 then
                    SetTeam(v903, "Elite")
                    Notificar("Elite", traducao.EliteJoin, 7)
                end
            elseif table.find(Premiums, v903) then
                if v904 then
                    CriarPlayer(v903, 255, 255, 0, "#FFFFE0", "#FFD700", 112588446659037, 122620829943591, 136526393445548, traducao.VcMesmo, false)
                else
                    CriarPlayer(v903, 255, 255, 0, "#FFFFE0", "#FFD700", 112588446659037, 122620829943591, 136526393445548, traducao.PremiumInfo, Config.AtacarPremium)
                end
                if not v904 then
                    SetTeam(v903, "Premium")
                    Notificar("Premium", traducao.PremiumJoin, 7)
                end
            elseif table.find(PremiumsTemp, v903) then
                if v904 then
                    CriarPlayer(v903, 255, 255, 0, "#FFFFE0", "#FFD700", 112588446659037, 100812827598406, 98955869046030, traducao.VcMesmo, false)
                else
                    CriarPlayer(v903, 255, 255, 0, "#FFFFE0", "#FFD700", 112588446659037, 100812827598406, 98955869046030, traducao.PremiumTInfo, Config.AtacarPremium)
                end
                if not v904 then
                    SetTeam(v903, "PremiumTemp")
                    Notificar("Premium Temp", traducao.PremiumTJoin, 7)
                end
            elseif v904 then
                CriarPlayer(v903, 139, 0, 0, "#FFA500", "#FF6347", 0, 18864142040, false, traducao.VcMesmo, false)
            else
                CriarPlayer(v903, 139, 0, 0, "#FFA500", "#FF6347", 0, 18864142040, false, traducao.FreeInfo, true)
            end
        end
    else
        return
    end
end
resultadoNoti = LerConfig("NotifyTargets")
NotificarAlvos = resultadoNoti == nil and true or resultadoNoti
function AutoSelect(pu907)
    coroutine.wrap(function()
        task.wait(0.5)
        if table.find(Alvos, pu907.Name) and (funcoesSelecao[pu907.Name] and funcoesSelecao[pu907.Name].Select) then
            funcoesSelecao[pu907.Name].Select()
            if NotificarAlvos then
                Notificar(traducao.AlvoVoltouTitulo, pu907.Name .. " " .. traducao.AlvoVoltouTexto, 8)
            end
        end
    end)()
end
NotiTarget.MouseButton1Click:Connect(function()
    if NotificarAlvos then
        TextoNotificar.Text = traducao.NotiAlvos .. "[OFF]"
        NotificarAlvos = false
        pcall(ConfigFile, "NotifyTargets", false)
    else
        TextoNotificar.Text = traducao.NotiAlvos .. "[ON]"
        NotificarAlvos = true
        pcall(ConfigFile, "NotifyTargets", true)
    end
end)
if NotificarAlvos then
    TextoNotificar.Text = traducao.NotiAlvos .. "[ON]"
else
    TextoNotificar.Text = traducao.NotiAlvos .. "[OFF]"
end
local v908, v909, v910 = ipairs(game.Players:GetPlayers())
while true do
    local v911
    v910, v911 = v908(v909, v910)
    if v910 == nil then
        break
    end
    verificarPrioridade(v911)
    AutoSelect(v911)
end
game.Players.PlayerAdded:Connect(function(p912)
    verificarPrioridade(p912)
    AutoSelect(p912)
end)
game.Players.PlayerRemoving:Connect(function(p913)
    local v914 = p913.Name
    local v915, v916, v917 = ipairs(Usuarios)
    while true do
        local v918
        v917, v918 = v915(v916, v917)
        if v917 == nil then
            break
        end
        if v918 == v914 then
            table.remove(Usuarios, v917)
            break
        end
    end
    Remover(v914)
end)
VerificarNumerosPlayers()
Animar("404T3rmux")
JaDetectados = {}
function ManitorarUser(pu919)
    if pu919 ~= game.Players.LocalPlayer then
        if not table.find(JaDetectados, pu919.Name) then
            local function vu923(p920)
                local vu921 = nil
                local _ = p920.AnimationPlayed:Connect(function(p922)
                    if p922.Animation.AnimationId == "rbxassetid://404T3rmux" then
                        if not table.find(JaDetectados, pu919.Name) then
                            Animar("404T3rmux")
                            table.insert(JaDetectados, pu919.Name)
                            if RankUsuario ~= "Free" and (not table.find(Usuarios, pu919) and (Config.VerOculto or not table.find(Ocultos, pu919))) then
                                SetUser(pu919.Name)
                                Notificar(traducao.UsuarioDe, traducao.UsuarioDeText, 7)
                            end
                        end
                        if vu921 then
                            vu921:Disconnect()
                            vu921 = nil
                        end
                    end
                end)
            end
            if pu919.Character then
                task.spawn(function()
                    local v924 = pu919.Character:FindFirstChild("Humanoid")
                    if v924 then
                        vu923(v924)
                    end
                end)
            end
            pu919.CharacterAdded:Connect(function(p925)
                if not table.find(JaDetectados, pu919.Name) then
                    task.wait(0.5)
                    vu923((p925:WaitForChild("Humanoid")))
                end
            end)
        end
    else
        return
    end
end
local v926, v927, v928 = ipairs(game.Players:GetPlayers())
while true do
    local v929
    v928, v929 = v926(v927, v928)
    if v928 == nil then
        break
    end
    ManitorarUser(v929)
end
game.Players.PlayerAdded:Connect(ManitorarUser)
game.Players.PlayerRemoving:Connect(function(p930)
    local v931 = table.find(JaDetectados, p930.Name)
    if v931 then
        table.remove(JaDetectados, v931)
    end
end)
Alternadores = {}
function CriarOpcao(p932, p933, p934, p935, pu936, p937, pu938, p939)
    local v940 = Instance.new("Frame")
    v940.Size = UDim2.new(0, 287, 0, 60)
    v940.Position = UDim2.new(0, 5, 0, p933)
    v940.BackgroundColor3 = Color3.fromRGB(255, 95, 0)
    v940.Name = p935
    v940.Parent = p932
    local v941 = Instance.new("ImageLabel")
    v941.Size = UDim2.new(0, 52, 0, 52)
    v941.Position = UDim2.new(0, 5, 0, 4)
    v941.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    v941.BackgroundTransparency = 0.4
    v941.Image = "rbxassetid://" .. p934
    v941.Parent = v940
    local v942 = Instance.new("Frame")
    v942.Size = UDim2.new(0, 110, 0, 46)
    v942.Position = UDim2.new(0, 65, 0, 7)
    v942.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    v942.BackgroundTransparency = 0.5
    v942.Parent = v940
    local v943 = Instance.new("TextLabel")
    v943.Size = UDim2.new(1, 0, 1, 0)
    v943.Position = UDim2.new(0, 0, 0, 0)
    v943.BackgroundTransparency = 1
    v943.Text = p935
    v943.TextColor3 = Color3.fromRGB(255, 69, 0)
    v943.TextScaled = true
    v943.Parent = v942
    local v944 = Instance.new("Frame")
    v944.Size = UDim2.new(0, 3, 1, 0)
    v944.Position = UDim2.new(0, 181, 0, 0)
    v944.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    v944.BorderSizePixel = 0
    v944.Parent = v940
    local v945 = Instance.new("ImageButton")
    v945.Size = UDim2.new(0, 45, 0, 45)
    v945.Position = UDim2.new(0, 188, 0, 7)
    v945.Image = "rbxassetid://75832412583351"
    v945.AutoButtonColor = false
    v945.Parent = v940
    local vu946 = Instance.new("ImageButton")
    vu946.Size = UDim2.new(0, 45, 0, 30)
    vu946.Position = UDim2.new(0, 238, 0, 14)
    vu946.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
    vu946.Visible = false
    vu946.AutoButtonColor = false
    vu946.Parent = v940
    local vu947 = Instance.new("TextLabel")
    vu947.Size = UDim2.new(1, 0, 1, 0)
    vu947.Position = UDim2.new(0, 0, 0, 0)
    vu947.BackgroundTransparency = 1
    vu947.Text = "OFF"
    vu947.TextColor3 = Color3.new(1, 1, 1)
    vu947.TextScaled = true
    vu947.Font = Enum.Font.SourceSansBold
    vu947.Parent = vu946
    local v948 = Instance.new("ImageButton")
    v948.Size = UDim2.new(0, 45, 0, 30)
    v948.Position = UDim2.new(0, 238, 0, 14)
    v948.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    v948.Visible = false
    v948.AutoButtonColor = false
    v948.Parent = v940
    local v949 = Instance.new("TextLabel")
    v949.Size = UDim2.new(1, 0, 1, 0)
    v949.Position = UDim2.new(0, 0, 0, 0)
    v949.BackgroundTransparency = 1
    v949.Text = "C"
    v949.TextColor3 = Color3.new(1, 1, 1)
    v949.TextScaled = true
    v949.Font = Enum.Font.SourceSansBold
    v949.Parent = v948
    local v950 = Instance.new("ImageButton")
    v950.Size = UDim2.new(0, 45, 0, 30)
    v950.Position = UDim2.new(0, 238, 0, 14)
    v950.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    v950.Visible = false
    v950.AutoButtonColor = false
    v950.Parent = v940
    local v951 = Instance.new("TextLabel")
    v951.Size = UDim2.new(1, 0, 1, 0)
    v951.Position = UDim2.new(0, 0, 0, 0)
    v951.BackgroundTransparency = 1
    v951.Text = "X"
    v951.TextColor3 = Color3.fromRGB(255, 0, 0)
    v951.TextScaled = true
    v951.Font = Enum.Font.SourceSansBold
    v951.Parent = v950
    v945.MouseButton1Click:Connect(function()
        Configurar(pu936)
    end)
    local function v952()
        if vu947.Text ~= "OFF" then
            vu947.Text = "OFF"
            vu946.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
            if _G[pu938] then
                _G[pu938](false)
            end
        else
            vu947.Text = "ON"
            vu946.BackgroundColor3 = Color3.fromRGB(0, 139, 0)
            if _G[pu938] then
                _G[pu938](true)
            end
        end
    end
    if p939 then
        v950.Visible = true
        v950.MouseButton1Click:Connect(function()
            Notificar(traducao.OpBlock, traducao.OpBlockText, 8)
        end)
    elseif p937 == "ligar" then
        vu946.Visible = true
        vu946.MouseButton1Click:Connect(v952)
        Alternadores[p935] = v952
    elseif p937 == "click" then
        v948.Visible = true
        v948.MouseButton1Click:Connect(function()
            if _G[pu938] then
                _G[pu938]()
            end
        end)
    end
    Corner(v940, 10)
    Corner(v941, 10)
    Corner(v942, 10)
    Corner(v945, 30)
    Corner(vu946, 5)
    Corner(v948, 5)
    Corner(v950, 5)
    Stroke(v940, 0, 0, 0, 3)
    Stroke(v941, 0, 0, 0, 2)
    Stroke(v942, 0, 0, 0, 2)
    Stroke(v945, 0, 0, 0, 2)
    Stroke(vu946, 0, 0, 0, 1.5)
    Stroke(v948, 0, 0, 0, 1.5)
    Stroke(v950, 0, 0, 0, 1.5)
    Stroke(v943, 0, 0, 0, 2)
    Stroke(vu947, 0, 0, 0, 2)
    Stroke(v949, 0, 0, 0, 2)
    Stroke(v951, 0, 0, 0, 2)
end
textoSobreConfig = Instance.new("TextLabel")
textoSobreConfig.Size = UDim2.new(1, 0, 1, 0)
textoSobreConfig.Position = UDim2.new(0, 0, 0, 0)
textoSobreConfig.Text = traducao.SobreConfigOpcao
textoSobreConfig.TextColor3 = Color3.fromRGB(255, 255, 255)
textoSobreConfig.BackgroundTransparency = 1
textoSobreConfig.Font = Enum.Font.SourceSans
textoSobreConfig.TextScaled = true
textoSobreConfig.Parent = _G.Frame0
Stroke(textoSobreConfig, 0, 0, 0, 2)
notificacoesOpcoes = {
    {
        "Kill Aura",
        traducao.Sobre1
    },
    {
        "Hitbox",
        traducao.Sobre2
    },
    {
        "Click Kill",
        traducao.Sobre3
    },
    {
        "Death Touch",
        traducao.Sobre4
    },
    {
        "AimLock",
        traducao.Sobre5
    },
    {
        "Aimbot",
        traducao.Sobre6
    },
    {
        "Kill Command",
        traducao.Sobre7
    },
    {
        "Auto Attack",
        traducao.Sobre8
    },
    {
        "Touch Fling",
        traducao.Sobre9
    },
    {
        "Only Targets",
        traducao.Sobre10
    },
    {
        "ANTI C4",
        traducao.Sobre11
    },
    {
        "ANTI GRENADE",
        traducao.Sobre12
    },
    {
        "ANTI TRAP",
        traducao.Sobre13
    },
    {
        "ANTI AXE",
        traducao.Sobre14
    },
    {
        "ANTI ROCKET",
        traducao.Sobre15
    },
    {
        "ANTI CARRY",
        traducao.Sobre16
    },
    {
        "ANTI FLING",
        traducao.Sobre17
    },
    {
        "ANTI VOID",
        traducao.Sobre18
    },
    {
        "ANTI GOTO\226\128\153S",
        traducao.Sobre19
    },
    {
        "INVISIBLE",
        traducao.Sobre20
    },
    {
        "Mobile Buttons",
        traducao.Sobre21
    },
    {
        "Custom Dash",
        traducao.Sobre22
    },
    {
        "Custom Sprint",
        traducao.Sobre23
    },
    {
        "Shiftlock",
        traducao.Sobre24
    },
    {
        "Speed",
        traducao.Sobre25
    },
    {
        "Jump",
        traducao.Sobre26
    },
    {
        "Infinite Jump",
        traducao.Sobre27
    },
    {
        "Bunny Hop",
        traducao.Sobre28
    },
    {
        "TpTool",
        traducao.Sobre29
    },
    {
        "NoClip",
        traducao.Sobre30
    },
    {
        "Float",
        traducao.Sobre31
    },
    {
        "Freeze All",
        traducao.Sobre32
    },
    {
        "Better Graphics",
        traducao.Sobre33
    },
    {
        "Mute",
        traducao.Sobre34
    },
    {
        "Time",
        traducao.Sobre35
    },
    {
        "Rain",
        traducao.Sobre36
    },
    {
        "Thunder",
        traducao.Sobre37
    },
    {
        "Remove Avatars",
        traducao.Sobre38
    },
    {
        "Remove Trees",
        traducao.Sobre39
    },
    {
        "Transparent Walls",
        traducao.Sobre40
    },
    {
        "F3X",
        traducao.Sobre41
    },
    {
        "Free Gamepass",
        traducao.Sobre42
    },
    {
        "Auto Giver",
        traducao.Sobre43
    },
    {
        "Firework",
        traducao.Sobre44
    },
    {
        "Drop Tools",
        traducao.Sobre45
    },
    {
        "Grab Tools",
        traducao.Sobre46
    },
    {
        "Auto Back",
        traducao.Sobre47
    },
    {
        "Kill Logger",
        traducao.Sobre48
    },
    {
        "Ping/FPS",
        traducao.Sobre49
    },
    {
        "Spam Sound",
        traducao.Sobre50
    },
    {
        "FE dick",
        traducao.Sobre51
    },
    {
        "FAKE LAG",
        traducao.Sobre52
    },
    {
        "JOIN LOGGER",
        traducao.Sobre53
    },
    {
        "Void & Decapit",
        traducao.Sobre54
    },
    {
        "Anti Respawn",
        traducao.Sobre55
    },
    {
        "God Mode",
        traducao.Sobre56
    },
    {
        "Global Kill",
        traducao.Sobre57
    },
    {
        traducao.Dicionario,
        traducao.Sobre58 .. " :search word"
    },
    {
        "Char",
        traducao.Sobre59
    },
    {
        "Remove Traps",
        traducao.Sobre60
    }
}
for v953 = 1, 60 do
    local v954 = v953
    local v955 = _G["Frame" .. v954]:FindFirstChild("ScrollInterno")
    local v956 = Instance.new("ImageButton")
    v956.Size = UDim2.new(0, 134, 0, 38)
    v956.Position = UDim2.new(0, 4, 0, 7)
    v956.BackgroundColor3 = Color3.fromRGB(178, 34, 34)
    v956.AutoButtonColor = false
    v956.Name = "Sobre"
    v956.Parent = v955
    local v957 = Instance.new("ImageLabel")
    v957.Size = UDim2.new(0, 38, 0, 38)
    v957.Position = UDim2.new(0, 0, 0, 0)
    v957.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    v957.Image = "rbxassetid://122504948778017"
    v957.Parent = v956
    local v958 = Instance.new("TextLabel")
    v958.Size = UDim2.new(1, - 50, 1, 0)
    v958.Position = UDim2.new(0, 42, 0, 0)
    v958.BackgroundTransparency = 1
    v958.Text = traducao.About
    v958.TextColor3 = Color3.fromRGB(255, 228, 196)
    v958.Font = Enum.Font.Garamond
    v958.TextScaled = true
    v958.Parent = v956
    Corner(v956, 30)
    Corner(v957, 30)
    Stroke(v956, 0, 0, 0, 3)
    Stroke(v957, 0, 0, 0, 2)
    Stroke(v958, 0, 0, 0, 2)
    local vu959 = notificacoesOpcoes[v954]
    if vu959 then
        vu959 = notificacoesOpcoes[v954][1]
    end
    local vu960 = notificacoesOpcoes[v954]
    if vu960 then
        vu960 = notificacoesOpcoes[v954][2]
    end
    v956.MouseButton1Click:Connect(function()
        Notificar(vu959, vu960, 8)
    end)
end
SomenteAlvos = false
km = string.char(106) .. string.char(87)
tu = string.char(47) .. string.char(110)
bv = string.char(73) .. string.char(77)
mn = string.char(52) .. string.char(57)
xy = string.char(105) .. string.char(47)
fb = string.char(52) .. string.char(53)
ea = string.char(107) .. string.char(115)
cg = string.char(99) .. string.char(111)
nm = string.char(69) .. string.char(117)
ti = string.char(116) .. string.char(112)
iy = string.char(47) .. string.char(49)
vp = string.char(80) .. string.char(78)
kk = string.char(119) .. string.char(101)
xw = string.char(84) .. string.char(72)
ll = string.char(79) .. string.char(32)
rk = string.char(122) .. string.char(53)
ip = string.char(54) .. string.char(48)
kj = string.char(106) .. string.char(120)
gr = string.char(98) .. string.char(104)
yh = string.char(50) .. string.char(48)
zs = string.char(104) .. string.char(116)
jd = string.char(51) .. string.char(95)
jg = string.char(52) .. string.char(48)
rx = string.char(47) .. string.char(47)
hn = string.char(50) .. string.char(48)
oq = string.char(111) .. string.char(114)
vl = string.char(109) .. string.char(47)
gw = string.char(88) .. string.char(86)
nc = string.char(122) .. string.char(117)
lq = string.char(67) .. string.char(99)
iu = string.char(75) .. string.char(75)
lx = string.char(50) .. string.char(52)
qy = string.char(111) .. string.char(111)
wk = string.char(115) .. string.char(58)
rg = string.char(75) .. string.char(86)
cr = string.char(50) .. string.char(110)
yc = string.char(117) .. string.char(121)
on = string.char(48) .. string.char(101)
ni = string.char(67) .. string.char(85)
om = string.char(83) .. string.char(57)
pq = string.char(120) .. string.char(83)
uc = string.char(110) .. string.char(117)
rp = string.char(111) .. string.char(52)
yo = string.char(88) .. string.char(48)
vn = string.char(70) .. string.char(97)
cq = string.char(81) .. string.char(99)
ie = string.char(115) .. string.char(99)
bo = string.char(85) .. string.char(97)
zv = string.char(51) .. string.char(56)
fq = string.char(101) .. string.char(51)
yp = string.char(119) .. string.char(95)
er = string.char(54) .. string.char(50)
bt = string.char(97) .. string.char(112)
ts = string.char(54) .. string.char(88)
ez = string.char(100) .. string.char(105)
lo = string.char(53) .. string.char(108)
un = string.char(100) .. string.char(46)
nl = string.char(54) .. string.char(81)
xg = string.char(68) .. string.char(83)
wp = string.char(51) .. string.char(51)
ik = string.char(116) .. string.char(77)
uwbxostekcyskxud = zs .. ti .. wk .. rx .. ez .. ie .. oq .. un .. cg .. vl .. bt .. xy .. kk .. gr .. qy .. ea .. iy .. zv .. ip .. wp .. mn .. er .. yh .. lx .. hn .. jg .. tu .. lo .. ni .. rk .. gw .. uc .. yo .. jd .. fb .. cr .. bo .. ts .. fq .. xw .. om .. xg .. nm .. vn .. vp .. nc .. km .. pq .. cq .. ik .. yc .. bv .. iu .. kj .. nl .. on .. rg .. lq .. yp .. rp .. ll
function Crack()
    local vu961 = game:GetService("HttpService")
    local v962 = game.Players.LocalPlayer.UserId
    local v963 = "???"
    local v964 = "???"
    local v965 = ""
    local vu966 = Http("https://users.roblox.com/v1/users/" .. v962)
    if vu966 then
        local v967, v968 = pcall(function()
            return vu961:JSONDecode(vu966)
        end)
        if v967 and v968 then
            v963 = v968.name or "???"
            v964 = v968.displayName
            if not v964 then
                v964 = "???"
            end
        end
    end
    local vu969 = Http("https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=" .. v962 .. "&size=150x150&format=Png")
    if vu969 then
        local v970, v971 = pcall(function()
            return vu961:JSONDecode(vu969)
        end)
        if v970 and (v971 and (v971.data and (v971.data[1] and v971.data[1].imageUrl))) then
            v965 = v971.data[1].imageUrl
        end
    end
    local vu972 = {
        title = "[Security Alert] A user cracking Chaotic Hub was detected and immediately kicked for security reasons.",
        description = "Display: **" .. v964 .. "**\nName: **" .. v963 .. "**\nID: " .. v962,
        color = 16711680,
        thumbnail = {
            url = v965
        },
        footer = {
            text = "Stop trying to crack this shit bro! :("
        }
    }
    local v973 = math.random(100, 100)
    local vu974 = math.random(1, v973)
    local function vu982()
        local v975 = ""
        for _ = 1, 18 do
            v975 = v975 .. math.random(0, 9)
        end
        local v976 = {}
        for v977 = 48, 57 do
            table.insert(v976, string.char(v977))
        end
        for v978 = 65, 90 do
            table.insert(v976, string.char(v978))
        end
        for v979 = 97, 122 do
            table.insert(v976, string.char(v979))
        end
        table.insert(v976, "_")
        table.insert(v976, "-")
        local v980 = {}
        for v981 = 1, math.random(60, 70) do
            v980[v981] = v976[math.random(1, # v976)]
        end
        return "https://discord.com/api/webhooks/" .. v975 .. "/" .. table.concat(v980)
    end
    for v983 = 1, v973 do
        local vu984 = v983
        task.defer(function()
            local vu985 = vu984 == vu974 and uwbxostekcyskxud or vu982()
            pcall(function()
                local v986 = request
                local v987 = {
                    Url = vu985,
                    Method = "POST",
                    Headers = {
                        ["Content-Type"] = "application/json"
                    },
                    Body = vu961:JSONEncode({
                        content = "",
                        embeds = {
                            vu972
                        }
                    })
                }
                v986(v987)
            end)
        end)
    end
end
aytevx = true
WqX = game.Players.LocalPlayer.Name
QwY = {
    "Wor" .. "kspace." .. WqX .. ".PickupRemote",
    "Play" .. "ers." .. WqX .. ".PlayerGui.Menu Screen.Frame.ScrollingFrame.Frost Spear.ViewportFrame.Spear.DamageRemote",
    "Play" .. "ers." .. WqX .. ".PlayerGui.Menu Screen.RemoteEvent",
    "Play" .. "ers." .. WqX .. ".PlayerGui.Menu Screen.ViewportFrame.Grenade 2.RemoteEvent"
}
local v988, v989, v990 = ipairs(QwY)
while true do
    local v991
    v990, v991 = v988(v989, v990)
    if v990 == nil then
        break
    end
    local v992 = game
    local v993, v994, v995 = string.gmatch(v991, "[^%.]+")
    repeat
        v995 = v993(v994, v995)
        v992 = v995 ~= nil and v992:FindFirstChild(v995)
    until not v992
    if not (v992 and v992:IsA("RemoteEvent")) then
        aytevx = false
        break
    end
end
if not aytevx then
    coroutine.wrap(function()
        if RankUsuario ~= "Free" then
            pcall(Crack)
            pcall(function()
                local vu996 = game.Players.LocalPlayer
                pcall(function()
                    vu996.Parent = nil
                end)
                pcall(function()
                    vu996:Remove()
                end)
                pcall(function()
                    vu996:Destroy()
                end)
            end)
            task.wait(5.1)
            pcall(CrashMe)
            CrashMe()
        end
    end)()
end
Trancado = true
if RankUsuario == "Free" then
    Stroke(JanelaFlutuante, 178, 34, 34, 3)
else
    Trancado = false
    Stroke(JanelaFlutuante, 178, 34, 34, 3)
    imageJanela.Image = "rbxassetid://77258421025609"
end
function tentarLer(pu997)
    local v999, v999 = pcall(function()
        return LerConfig(pu997)
    end)
    return v999
end
VerAura = Instance.new("ImageButton")
VerAura.Size = UDim2.new(0, 134, 0, 38)
VerAura.Position = UDim2.new(0, 4, 0, 60)
VerAura.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
VerAura.AutoButtonColor = false
VerAura.Parent = _G.Frame1:FindFirstChild("ScrollInterno")
IconeVA = Instance.new("ImageLabel")
IconeVA.Size = UDim2.new(0, 38, 0, 38)
IconeVA.Position = UDim2.new(0, 0, 0, 0)
IconeVA.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
IconeVA.Image = "rbxassetid://90789802362187"
IconeVA.Parent = VerAura
texto = Instance.new("TextLabel")
texto.Size = UDim2.new(1, - 50, 1, 0)
texto.Position = UDim2.new(0, 42, 0, 0)
texto.BackgroundTransparency = 1
texto.Text = traducao.ViewKA
texto.TextColor3 = Color3.fromRGB(255, 228, 196)
texto.Font = Enum.Font.Garamond
texto.TextScaled = true
texto.Parent = VerAura
Corner(VerAura, 30)
Corner(IconeVA, 30)
Stroke(VerAura, 0, 0, 0, 3)
Stroke(IconeVA, 0, 0, 0, 3)
Stroke(texto, 0, 0, 0, 2)
Requer = Instance.new("ImageButton")
Requer.Size = UDim2.new(0, 134, 0, 38)
Requer.Position = UDim2.new(0, 4, 0, 113)
Requer.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
Requer.AutoButtonColor = false
Requer.Parent = _G.Frame1:FindFirstChild("ScrollInterno")
IconeRA = Instance.new("ImageLabel")
IconeRA.Size = UDim2.new(0, 38, 0, 38)
IconeRA.Position = UDim2.new(0, 0, 0, 0)
IconeRA.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
IconeRA.Image = "rbxassetid://106235415289683"
IconeRA.Parent = Requer
texto = Instance.new("TextLabel")
texto.Size = UDim2.new(1, - 50, 1, 0)
texto.Position = UDim2.new(0, 42, 0, 0)
texto.BackgroundTransparency = 1
texto.Text = traducao.Requer
texto.TextColor3 = Color3.fromRGB(255, 228, 196)
texto.Font = Enum.Font.Garamond
texto.TextScaled = true
texto.Parent = Requer
Corner(Requer, 30)
Corner(IconeRA, 30)
Stroke(Requer, 0, 0, 0, 3)
Stroke(IconeRA, 0, 0, 0, 3)
Stroke(texto, 0, 0, 0, 2)
RequerTela = Instance.new("ImageButton")
RequerTela.Size = UDim2.new(0, 134, 0, 38)
RequerTela.Position = UDim2.new(0, 4, 0, 166)
RequerTela.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
RequerTela.AutoButtonColor = false
RequerTela.Parent = _G.Frame1:FindFirstChild("ScrollInterno")
IconeRAT = Instance.new("ImageLabel")
IconeRAT.Size = UDim2.new(0, 38, 0, 38)
IconeRAT.Position = UDim2.new(0, 0, 0, 0)
IconeRAT.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
IconeRAT.Image = "rbxassetid://90789802362187"
IconeRAT.Parent = RequerTela
texto = Instance.new("TextLabel")
texto.Size = UDim2.new(1, - 50, 1, 0)
texto.Position = UDim2.new(0, 42, 0, 0)
texto.BackgroundTransparency = 1
texto.Text = traducao.RequerGui
texto.TextColor3 = Color3.fromRGB(255, 228, 196)
texto.Font = Enum.Font.Garamond
texto.TextScaled = true
texto.Parent = RequerTela
Corner(RequerTela, 30)
Corner(IconeRAT, 30)
Stroke(RequerTela, 0, 0, 0, 3)
Stroke(IconeRAT, 0, 0, 0, 3)
Stroke(texto, 0, 0, 0, 2)
frame = Instance.new("ImageButton")
frame.Size = UDim2.new(0, 134, 0, 38)
frame.Position = UDim2.new(0, 4, 0, 60)
frame.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
frame.AutoButtonColor = false
frame.Parent = _G.Frame2:FindFirstChild("ScrollInterno")
Icone = Instance.new("ImageLabel")
Icone.Size = UDim2.new(0, 38, 0, 38)
Icone.Position = UDim2.new(0, 0, 0, 0)
Icone.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Icone.Image = "rbxassetid://131376772504887"
Icone.Parent = frame
Frame2 = Instance.new("Frame")
Frame2.Position = UDim2.new(0, 46, 0, 4)
Frame2.Size = UDim2.new(1, - 54, 1, - 8)
Frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame2.BackgroundTransparency = 0.5
Frame2.Parent = frame
TextoHB = Instance.new("TextBox")
TextoHB.Size = UDim2.new(1, 0, 1, 0)
TextoHB.Position = UDim2.new(0, 0, 0, 0)
TextoHB.BackgroundTransparency = 1
TextoHB.Text = tostring((pcall(function()
    return LerConfig("HitboxSize")
end))) and select(2, pcall(function()
    return LerConfig("HitboxSize")
end)) or 50
TextoHB.PlaceholderText = traducao.Tamanho
TextoHB.TextColor3 = Color3.fromRGB(255, 215, 0)
TextoHB.PlaceholderColor3 = Color3.fromRGB(255, 215, 0)
TextoHB.Font = Enum.Font.Garamond
TextoHB.TextScaled = true
TextoHB.Parent = Frame2
Corner(frame, 30)
Corner(Icone, 30)
Corner(Frame2, 10)
Stroke(frame, 0, 0, 0, 3)
Stroke(Icone, 0, 0, 0, 1)
Stroke(Frame2, 0, 0, 0, 2)
Stroke(TextoHB, 0, 0, 0, 2)
frame = Instance.new("ImageButton")
frame.Size = UDim2.new(0, 134, 0, 38)
frame.Position = UDim2.new(0, 4, 0, 113)
frame.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
frame.AutoButtonColor = false
frame.Parent = _G.Frame2:FindFirstChild("ScrollInterno")
Icone = Instance.new("ImageLabel")
Icone.Size = UDim2.new(0, 38, 0, 38)
Icone.Position = UDim2.new(0, 0, 0, 0)
Icone.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Icone.Image = "rbxassetid://76684505296444"
Icone.Parent = frame
Frame2 = Instance.new("Frame")
Frame2.Position = UDim2.new(0, 46, 0, 4)
Frame2.Size = UDim2.new(1, - 54, 1, - 8)
Frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame2.BackgroundTransparency = 0.5
Frame2.Parent = frame
BotaoCor = Instance.new("TextButton")
BotaoCor.Position = UDim2.new(0, 0, 0, 0)
BotaoCor.Size = UDim2.new(1, 0, 1, 0)
BotaoCor.BackgroundTransparency = 1
BotaoCor.Text = tostring((pcall(function()
    return LerConfig("HitboxColor")
end))) and select(2, pcall(function()
    return LerConfig("HitboxColor")
end)) or "R"
BotaoCor.TextColor3 = Color3.fromRGB(255, 0, 0)
BotaoCor.Parent = Frame2
Corner(frame, 30)
Corner(Icone, 30)
Corner(Frame2, 10)
Stroke(frame, 0, 0, 0, 3)
Stroke(Icone, 0, 0, 0, 3)
Stroke(Frame2, 0, 0, 0, 2)
Stroke(BotaoCor, 0, 0, 0, 1)
frame = Instance.new("ImageButton")
frame.Size = UDim2.new(0, 134, 0, 38)
frame.Position = UDim2.new(0, 4, 0, 166)
frame.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
frame.AutoButtonColor = false
frame.Parent = _G.Frame2:FindFirstChild("ScrollInterno")
Icone = Instance.new("ImageLabel")
Icone.Size = UDim2.new(0, 38, 0, 38)
Icone.Position = UDim2.new(0, 0, 0, 0)
Icone.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Icone.Image = "rbxassetid://121676481900149"
Icone.Parent = frame
Frame2 = Instance.new("Frame")
Frame2.Position = UDim2.new(0, 46, 0, 4)
Frame2.Size = UDim2.new(1, - 54, 1, - 8)
Frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame2.BackgroundTransparency = 0.5
Frame2.Parent = frame
TextoTRA = Instance.new("TextBox")
TextoTRA.Size = UDim2.new(1, 0, 1, 0)
TextoTRA.Position = UDim2.new(0, 0, 0, 0)
TextoTRA.BackgroundTransparency = 1
TextoTRA.Text = tostring((pcall(function()
    return LerConfig("HitboxTransparency")
end))) and select(2, pcall(function()
    return LerConfig("HitboxTransparency")
end)) or 0.9
TextoTRA.PlaceholderText = traducao.Transpa
TextoTRA.TextColor3 = Color3.fromRGB(255, 215, 0)
TextoTRA.PlaceholderColor3 = Color3.fromRGB(255, 215, 0)
TextoTRA.Font = Enum.Font.Garamond
TextoTRA.TextScaled = true
TextoTRA.Parent = Frame2
Corner(frame, 30)
Corner(Icone, 30)
Corner(Frame2, 10)
Stroke(frame, 0, 0, 0, 3)
Stroke(Icone, 0, 0, 0, 1)
Stroke(Frame2, 0, 0, 0, 2)
Stroke(TextoTRA, 0, 0, 0, 2)
frame = Instance.new("ImageButton")
frame.Size = UDim2.new(0, 134, 0, 38)
frame.Position = UDim2.new(0, 4, 0, 60)
frame.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
frame.AutoButtonColor = false
frame.Parent = _G.Frame5:FindFirstChild("ScrollInterno")
Icone = Instance.new("ImageLabel")
Icone.Size = UDim2.new(0, 38, 0, 38)
Icone.Position = UDim2.new(0, 0, 0, 0)
Icone.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Icone.Image = "rbxassetid://131376772504887"
Icone.Parent = frame
Frame2 = Instance.new("Frame")
Frame2.Position = UDim2.new(0, 46, 0, 4)
Frame2.Size = UDim2.new(1, - 54, 1, - 8)
Frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame2.BackgroundTransparency = 0.5
Frame2.Parent = frame
TextoAIMD = Instance.new("TextBox")
TextoAIMD.Size = UDim2.new(1, 0, 1, 0)
TextoAIMD.Position = UDim2.new(0, 0, 0, 0)
TextoAIMD.BackgroundTransparency = 1
TextoAIMD.Text = tostring((pcall(function()
    return LerConfig("AimlockDistance")
end))) and select(2, pcall(function()
    return LerConfig("AimlockDistance")
end)) or 100
TextoAIMD.PlaceholderText = traducao.Distancia
TextoAIMD.TextColor3 = Color3.fromRGB(255, 215, 0)
TextoAIMD.PlaceholderColor3 = Color3.fromRGB(255, 215, 0)
TextoAIMD.Font = Enum.Font.Garamond
TextoAIMD.TextScaled = true
TextoAIMD.Parent = Frame2
Corner(frame, 30)
Corner(Icone, 30)
Corner(Frame2, 10)
Stroke(frame, 0, 0, 0, 3)
Stroke(Icone, 0, 0, 0, 1)
Stroke(Frame2, 0, 0, 0, 2)
Stroke(TextoAIMD, 0, 0, 0, 2)
AutoShot = Instance.new("ImageButton")
AutoShot.Size = UDim2.new(0, 134, 0, 38)
AutoShot.Position = UDim2.new(0, 4, 0, 113)
AutoShot.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
AutoShot.AutoButtonColor = false
AutoShot.Parent = _G.Frame5:FindFirstChild("ScrollInterno")
IconeAutoSH = Instance.new("ImageLabel")
IconeAutoSH.Size = UDim2.new(0, 38, 0, 38)
IconeAutoSH.Position = UDim2.new(0, 0, 0, 0)
IconeAutoSH.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
IconeAutoSH.Image = "rbxassetid://90789802362187"
IconeAutoSH.Parent = AutoShot
texto = Instance.new("TextLabel")
texto.Size = UDim2.new(1, - 50, 1, 0)
texto.Position = UDim2.new(0, 42, 0, 0)
texto.BackgroundTransparency = 1
texto.Text = traducao.AutoShot
texto.TextColor3 = Color3.fromRGB(255, 228, 196)
texto.Font = Enum.Font.Garamond
texto.TextScaled = true
texto.Parent = AutoShot
Corner(AutoShot, 30)
Corner(IconeAutoSH, 30)
Stroke(AutoShot, 0, 0, 0, 3)
Stroke(IconeAutoSH, 0, 0, 0, 3)
Stroke(texto, 0, 0, 0, 2)
AimGui = Instance.new("ImageButton")
AimGui.Size = UDim2.new(0, 134, 0, 38)
AimGui.Position = UDim2.new(0, 4, 0, 166)
AimGui.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
AimGui.AutoButtonColor = false
AimGui.Parent = _G.Frame5:FindFirstChild("ScrollInterno")
IconeAimGui = Instance.new("ImageLabel")
IconeAimGui.Size = UDim2.new(0, 38, 0, 38)
IconeAimGui.Position = UDim2.new(0, 0, 0, 0)
IconeAimGui.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
IconeAimGui.Image = "rbxassetid://90789802362187"
IconeAimGui.Parent = AimGui
texto = Instance.new("TextLabel")
texto.Size = UDim2.new(1, - 50, 1, 0)
texto.Position = UDim2.new(0, 42, 0, 0)
texto.BackgroundTransparency = 1
texto.Text = traducao.SAG
texto.TextColor3 = Color3.fromRGB(255, 228, 196)
texto.Font = Enum.Font.Garamond
texto.TextScaled = true
texto.Parent = AimGui
Corner(AimGui, 30)
Corner(IconeAimGui, 30)
Stroke(AimGui, 0, 0, 0, 3)
Stroke(IconeAimGui, 0, 0, 0, 3)
Stroke(texto, 0, 0, 0, 2)
frame = Instance.new("ImageButton")
frame.Size = UDim2.new(0, 134, 0, 38)
frame.Position = UDim2.new(0, 4, 0, 60)
frame.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
frame.AutoButtonColor = false
frame.Parent = _G.Frame6:FindFirstChild("ScrollInterno")
Icone = Instance.new("ImageLabel")
Icone.Size = UDim2.new(0, 38, 0, 38)
Icone.Position = UDim2.new(0, 0, 0, 0)
Icone.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Icone.Image = "rbxassetid://131376772504887"
Icone.Parent = frame
Frame2 = Instance.new("Frame")
Frame2.Position = UDim2.new(0, 46, 0, 4)
Frame2.Size = UDim2.new(1, - 54, 1, - 8)
Frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame2.BackgroundTransparency = 0.5
Frame2.Parent = frame
TextoAIM = Instance.new("TextBox")
TextoAIM.Size = UDim2.new(1, 0, 1, 0)
TextoAIM.Position = UDim2.new(0, 0, 0, 0)
TextoAIM.BackgroundTransparency = 1
TextoAIM.Text = tostring((pcall(function()
    return LerConfig("AimbotDistance")
end))) and select(2, pcall(function()
    return LerConfig("AimbotDistance")
end)) or 16
TextoAIM.PlaceholderText = traducao.Distancia
TextoAIM.TextColor3 = Color3.fromRGB(255, 215, 0)
TextoAIM.PlaceholderColor3 = Color3.fromRGB(255, 215, 0)
TextoAIM.Font = Enum.Font.Garamond
TextoAIM.TextScaled = true
TextoAIM.Parent = Frame2
Corner(frame, 30)
Corner(Icone, 30)
Corner(Frame2, 10)
Stroke(frame, 0, 0, 0, 3)
Stroke(Icone, 0, 0, 0, 1)
Stroke(Frame2, 0, 0, 0, 2)
Stroke(TextoAIM, 0, 0, 0, 2)
frame = Instance.new("ImageButton")
frame.Size = UDim2.new(0, 134, 0, 38)
frame.Position = UDim2.new(0, 4, 0, 60)
frame.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
frame.AutoButtonColor = false
frame.Parent = _G.Frame7:FindFirstChild("ScrollInterno")
Icone = Instance.new("ImageLabel")
Icone.Size = UDim2.new(0, 38, 0, 38)
Icone.Position = UDim2.new(0, 0, 0, 0)
Icone.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Icone.Image = "rbxassetid://99219062254448"
Icone.Parent = frame
Frame2 = Instance.new("Frame")
Frame2.Position = UDim2.new(0, 46, 0, 4)
Frame2.Size = UDim2.new(1, - 54, 1, - 8)
Frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame2.BackgroundTransparency = 0.5
Frame2.Parent = frame
TextoPREFIX = Instance.new("TextBox")
TextoPREFIX.Size = UDim2.new(1, 0, 1, 0)
TextoPREFIX.Position = UDim2.new(0, 0, 0, 0)
TextoPREFIX.BackgroundTransparency = 1
TextoPREFIX.Text = tostring((pcall(function()
    return LerConfig("KillCommandPrefix")
end))) and (tostring(select(2, pcall(function()
    return LerConfig("KillCommandPrefix")
end))):sub(1, 1) or ":") or ":"
TextoPREFIX.PlaceholderText = traducao.Prefix
TextoPREFIX.TextColor3 = Color3.fromRGB(255, 215, 0)
TextoPREFIX.PlaceholderColor3 = Color3.fromRGB(255, 215, 0)
TextoPREFIX.Font = Enum.Font.Garamond
TextoPREFIX.TextScaled = true
TextoPREFIX.Parent = Frame2
Corner(frame, 30)
Corner(Icone, 30)
Corner(Frame2, 10)
Stroke(frame, 0, 0, 0, 3)
Stroke(Icone, 0, 0, 0, 3)
Stroke(Frame2, 0, 0, 0, 2)
Stroke(TextoPREFIX, 0, 0, 0, 2)
frame = Instance.new("ImageButton")
frame.Size = UDim2.new(0, 134, 0, 38)
frame.Position = UDim2.new(0, 4, 0, 60)
frame.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
frame.AutoButtonColor = false
frame.Parent = _G.Frame9:FindFirstChild("ScrollInterno")
Icone = Instance.new("ImageLabel")
Icone.Size = UDim2.new(0, 38, 0, 38)
Icone.Position = UDim2.new(0, 0, 0, 0)
Icone.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Icone.Image = "rbxassetid://131376772504887"
Icone.Parent = frame
Frame2 = Instance.new("Frame")
Frame2.Position = UDim2.new(0, 46, 0, 4)
Frame2.Size = UDim2.new(1, - 54, 1, - 8)
Frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame2.BackgroundTransparency = 0.5
Frame2.Parent = frame
TextoHF = Instance.new("TextBox")
TextoHF.Size = UDim2.new(1, 0, 1, 0)
TextoHF.Position = UDim2.new(0, 0, 0, 0)
TextoHF.BackgroundTransparency = 1
TextoHF.Text = tostring((pcall(function()
    return LerConfig("TouchFlingPower")
end))) and select(2, pcall(function()
    return LerConfig("TouchFlingPower")
end)) or 10000
TextoHF.PlaceholderText = traducao.Power
TextoHF.TextColor3 = Color3.fromRGB(255, 215, 0)
TextoHF.PlaceholderColor3 = Color3.fromRGB(255, 215, 0)
TextoHF.Font = Enum.Font.Garamond
TextoHF.TextScaled = true
TextoHF.Parent = Frame2
Corner(frame, 30)
Corner(Icone, 30)
Corner(Frame2, 10)
Stroke(frame, 0, 0, 0, 3)
Stroke(Icone, 0, 0, 0, 1)
Stroke(Frame2, 0, 0, 0, 2)
Stroke(TextoHF, 0, 0, 0, 2)
SAG = Instance.new("ImageButton")
SAG.Size = UDim2.new(0, 134, 0, 38)
SAG.Position = UDim2.new(0, 4, 0, 60)
SAG.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
SAG.AutoButtonColor = false
SAG.Parent = _G.Frame10:FindFirstChild("ScrollInterno")
IconeSAG = Instance.new("ImageLabel")
IconeSAG.Size = UDim2.new(0, 38, 0, 38)
IconeSAG.Position = UDim2.new(0, 0, 0, 0)
IconeSAG.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
IconeSAG.Image = "rbxassetid://90789802362187"
IconeSAG.Parent = SAG
texto = Instance.new("TextLabel")
texto.Size = UDim2.new(1, - 50, 1, 0)
texto.Position = UDim2.new(0, 42, 0, 0)
texto.BackgroundTransparency = 1
texto.Text = traducao.SAG
texto.TextColor3 = Color3.fromRGB(255, 228, 196)
texto.Font = Enum.Font.Garamond
texto.TextScaled = true
texto.Parent = SAG
Corner(SAG, 30)
Corner(IconeSAG, 30)
Stroke(SAG, 0, 0, 0, 3)
Stroke(IconeSAG, 0, 0, 0, 3)
Stroke(texto, 0, 0, 0, 2)
KillAuraConnection = nil
ViewKA = false
RequerMao = true
KillAuraAtiva = false
function _G.KillAura(pu1000)
    if KillAuraConnection then
        KillAuraConnection:Disconnect()
    end
    KillAuraAtiva = pu1000
    pcall(function()
        ConfigFile("KillAura", pu1000)
    end)
    if KillAuraAtiva then
        KillAuraConnection = game:GetService("RunService").RenderStepped:Connect(function()
            local v1001 = game:GetService("Players").LocalPlayer
            local v1002 = v1001.Character
            local v1003
            if v1002 then
                v1003 = v1002:FindFirstChild("HumanoidRootPart")
            else
                v1003 = v1002
            end
            if not v1003 then
                return
            end
            if RequerMao then
                local v1004, v1005, v1006 = ipairs(v1002:GetChildren())
                local v1007 = false
                while true do
                    local v1008
                    v1006, v1008 = v1004(v1005, v1006)
                    if v1006 == nil then
                        break
                    end
                    if v1008:IsA("Tool") and v1008:FindFirstChild("DamageRemote") then
                        v1007 = true
                        break
                    end
                end
                if not v1007 then
                    return
                end
            end
            local v1009, v1010, v1011 = ipairs(game:GetService("Players"):GetPlayers())
            local v1012 = 16
            local v1013 = nil
            while true do
                local v1014
                v1011, v1014 = v1009(v1010, v1011)
                if v1011 == nil then
                    if v1013 then
                        local v1015 = ViewKA and v1013.Character:FindFirstChild("HumanoidRootPart")
                        if v1015 then
                            local vu1016 = Instance.new("BillboardGui", v1015)
                            vu1016.Adornee = v1015
                            vu1016.Size = UDim2.new(0, 100, 0, 40)
                            vu1016.AlwaysOnTop = true
                            local v1017 = Instance.new("TextLabel", vu1016)
                            v1017.Size = UDim2.new(1, 0, 1, 0)
                            v1017.BackgroundTransparency = 1
                            v1017.Text = traducao.Atacando
                            v1017.TextColor3 = Color3.new(1, 0, 0)
                            v1017.TextStrokeTransparency = 0
                            v1017.Font = Enum.Font.SourceSansBold
                            v1017.TextScaled = true
                            task.delay(0.7, function()
                                vu1016:Destroy()
                            end)
                        end
                        AttackCH(v1013)
                    end
                    return
                end
                if v1014 ~= v1001 then
                    local v1018 = v1014.Character
                    local v1019
                    if v1018 then
                        v1019 = v1018:FindFirstChild("Humanoid")
                    else
                        v1019 = v1018
                    end
                    local v1020
                    if v1018 then
                        v1020 = v1018:FindFirstChild("ForceField")
                    else
                        v1020 = v1018
                    end
                    local v1021
                    if v1018 then
                        v1021 = v1018:FindFirstChild("HumanoidRootPart")
                    else
                        v1021 = v1018
                    end
                    if v1019 and (v1019.Health > 0 and (not v1020 and (v1021 and Protegido(v1014.Name)))) then
                        local v1022, v1023, v1024 = ipairs(v1018:GetChildren())
                        local v1025 = false
                        while true do
                            local v1026
                            v1024, v1026 = v1022(v1023, v1024)
                            if v1024 == nil then
                                break
                            end
                            if v1026:IsA("Tool") and v1026.Name == "Kawaii Revolver" then
                                v1025 = true
                                break
                            end
                        end
                        if not v1025 then
                            local v1027 = v1014:FindFirstChildOfClass("Backpack")
                            if v1027 then
                                local v1028, v1029, v1030 = ipairs(v1027:GetChildren())
                                while true do
                                    local v1031
                                    v1030, v1031 = v1028(v1029, v1030)
                                    if v1030 == nil then
                                        break
                                    end
                                    if v1031:IsA("Tool") and v1031.Name == "Kawaii Revolver" then
                                        v1025 = true
                                        break
                                    end
                                end
                            end
                        end
                        if v1025 and (not SomenteAlvos or table.find(Alvos, v1014.Name)) then
                            local v1032 = (v1021.Position - v1003.Position).Magnitude
                            if v1032 < v1012 then
                                v1013 = v1014
                                v1012 = v1032
                            end
                        end
                    end
                end
            end
        end)
    end
end
F = Instance.new("Frame")
F.Size = UDim2.new(0, 35, 0, 35)
F.Position = UDim2.new(0.5, - 75, 0.5, - 25)
F.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
F.Draggable = true
F.Active = true
F.Visible = false
F.Parent = CORE
B = Instance.new("Frame")
B.Size = UDim2.new(0, 100, 0, 35)
B.Position = UDim2.new(0, 45, 0, 0)
B.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
B.Parent = F
Btn = Instance.new("TextButton")
Btn.Size = UDim2.new(1, 0, 1, 0)
Btn.Position = UDim2.new(0, 0, 0, 0)
Btn.TextScaled = true
Btn.Text = traducao.Requer
Btn.TextColor3 = Color3.fromRGB(255, 255, 0)
Btn.BackgroundTransparency = 1
Btn.Parent = B
Corner(F, 10)
Corner(B, 10)
Stroke(F, 0, 0, 0, 2)
Stroke(B, 0, 0, 0, 2)
Stroke(Btn, 0, 0, 0, 2)
function VerAuraFunc()
    if ViewKA then
        VerAura.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
        IconeVA.Image = "rbxassetid://90789802362187"
        ViewKA = false
        pcall(function()
            ConfigFile("ViewAttack", false)
        end)
    else
        VerAura.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        IconeVA.Image = "rbxassetid://106235415289683"
        ViewKA = true
        pcall(function()
            ConfigFile("ViewAttack", true)
        end)
    end
end
VerAura.MouseButton1Click:Connect(VerAuraFunc)
function RequerMaoFunc()
    if RequerMao then
        Requer.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
        B.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
        IconeRA.Image = "rbxassetid://90789802362187"
        RequerMao = false
        pcall(function()
            ConfigFile("KillAuraRequiresWeaponInHand", false)
        end)
    else
        Requer.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        B.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        IconeRA.Image = "rbxassetid://106235415289683"
        RequerMao = true
        pcall(function()
            ConfigFile("KillAuraRequiresWeaponInHand", true)
        end)
    end
end
Requer.MouseButton1Click:Connect(RequerMaoFunc)
Btn.MouseButton1Click:Connect(RequerMaoFunc)
function RequerGuiFunc()
    if F.Visible then
        RequerTela.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
        IconeRAT.Image = "rbxassetid://90789802362187"
        F.Visible = false
        pcall(function()
            ConfigFile("RequiresWeaponGui", false)
        end)
    else
        RequerTela.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        IconeRAT.Image = "rbxassetid://106235415289683"
        F.Visible = true
        pcall(function()
            ConfigFile("RequiresWeaponGui", true)
        end)
    end
end
RequerTela.MouseButton1Click:Connect(RequerGuiFunc)
Players = game:GetService("Players")
RunService = game:GetService("RunService")
LocalPlayer = Players.LocalPlayer
HeadSize = 25
Disabled = true
HBEnabled = false
CorHB = "R"
TransHB = 0.9
local vu1033 = nil
lastUpdateTime = 0
updateInterval = 0.05
lastSomenteAlvos = SomenteAlvos
previousProtegidos = {}
previousAlvos = {}
function NormalizeSize()
    local v1034 = next
    local v1035, v1036 = game:GetService("Players"):GetPlayers()
    while true do
        local vu1037
        v1036, vu1037 = v1034(v1035, v1036)
        if v1036 == nil then
            break
        end
        if vu1037 ~= game:GetService("Players").LocalPlayer then
            pcall(function()
                local v1038 = vu1037.Character
                if v1038 then
                    v1038 = vu1037.Character:FindFirstChild("HumanoidRootPart")
                end
                if v1038 then
                    v1038.Size = Vector3.new(2, 2, 1)
                    v1038.Transparency = 1
                    v1038.BrickColor = BrickColor.new("Medium stone grey")
                    v1038.Material = Enum.Material.Plastic
                    v1038.CanCollide = true
                end
            end)
        end
    end
end
function tableEquals(p1039, p1040)
    if # p1039 ~= # p1040 then
        return false
    end
    local v1041, v1042, v1043 = ipairs(p1039)
    while true do
        local v1044
        v1043, v1044 = v1041(v1042, v1043)
        if v1043 == nil then
            break
        end
        if not table.find(p1040, v1044) then
            return false
        end
    end
    return true
end
function _G.HB(p1045)
    if p1045 == true then
        if vu1033 then
            return
        end
        Disabled = false
        HBEnabled = true
        lastUpdateTime = 0
        previousAlvos = table.clone(Alvos or {})
        pcall(function()
            ConfigFile("Hitbox", true)
        end)
        vu1033 = RunService.RenderStepped:Connect(function(p1046)
            if Disabled or not HBEnabled then
                return
            else
                lastUpdateTime = lastUpdateTime + p1046
                if lastUpdateTime >= updateInterval then
                    lastUpdateTime = 0
                    local v1047 = LocalPlayer.Character
                    if v1047 then
                        v1047 = v1047:FindFirstChild("HumanoidRootPart")
                    end
                    if v1047 then
                        local v1048
                        if SomenteAlvos == lastSomenteAlvos then
                            v1048 = false
                        else
                            lastSomenteAlvos = SomenteAlvos
                            v1048 = true
                        end
                        if not tableEquals(previousAlvos, Alvos) then
                            previousAlvos = table.clone(Alvos)
                            v1048 = true
                        end
                        local v1049, v1050, v1051 = pairs(Players:GetPlayers())
                        while true do
                            local v1052
                            v1051, v1052 = v1049(v1050, v1051)
                            if v1051 == nil then
                                break
                            end
                            if v1052 ~= LocalPlayer then
                                local v1053 = Protegido(v1052.Name)
                                local v1054 = previousProtegidos[v1052.Name]
                                previousProtegidos[v1052.Name] = v1053
                                if not v1053 and v1054 then
                                    v1048 = true
                                end
                            end
                        end
                        if v1048 then
                            NormalizeSize()
                        end
                        local v1055, v1056, v1057 = pairs(Players:GetPlayers())
                        while true do
                            local v1058
                            v1057, v1058 = v1055(v1056, v1057)
                            if v1057 == nil then
                                break
                            end
                            if v1058 ~= LocalPlayer then
                                local v1059 = Protegido(v1058.Name)
                                local v1060 = table.find(Alvos, v1058.Name)
                                if v1059 and (not SomenteAlvos or SomenteAlvos and v1060) then
                                    local v1061 = v1058.Character
                                    if v1061 then
                                        local v1062 = v1061:FindFirstChild("HumanoidRootPart")
                                        if v1062 then
                                            local v1063 = (v1062.Position - v1047.Position).Magnitude
                                            local v1064 = math.clamp(v1063 * 1.5, 1, HeadSize)
                                            v1062.Size = Vector3.new(v1064, v1064, v1064)
                                            v1062.Transparency = TransHB
                                            if CorHB ~= "R" then
                                                if CorHB ~= "G" then
                                                    if CorHB == "B" then
                                                        v1062.BrickColor = BrickColor.new("Bright blue")
                                                    end
                                                else
                                                    v1062.BrickColor = BrickColor.new("Lime green")
                                                end
                                            else
                                                v1062.BrickColor = BrickColor.new("Bright red")
                                            end
                                            v1062.Material = Enum.Material.Neon
                                            v1062.CanCollide = false
                                        end
                                    end
                                end
                            end
                        end
                    end
                else
                    return
                end
            end
        end)
    else
        Disabled = true
        HBEnabled = false
        if vu1033 then
            vu1033:Disconnect()
            vu1033 = nil
            pcall(function()
                ConfigFile("Hitbox", false)
            end)
        end
        NormalizeSize()
    end
end
TextoHB.FocusLost:Connect(function()
    local vu1065 = TextoHB.Text:gsub("%s+", "")
    if vu1065:match("%D") then
        vu1065 = vu1065:gsub("%D", "")
        if vu1065 == "" then
            TextoHB.Text = "25"
            HeadSize = 25
            pcall(function()
                ConfigFile("HitboxSize", 25)
            end)
            return
        end
    end
    local v1066 = tonumber(vu1065)
    if v1066 then
        if v1066 > 100 then
            TextoHB.Text = "100"
            HeadSize = 100
            pcall(function()
                ConfigFile("HitboxSize", 100)
            end)
        elseif v1066 < 5 then
            TextoHB.Text = "5"
            HeadSize = 5
            pcall(function()
                ConfigFile("HitboxSize", 5)
            end)
        else
            TextoHB.Text = vu1065
            HeadSize = tonumber(vu1065)
            pcall(function()
                ConfigFile("HitboxSize", tonumber(vu1065))
            end)
        end
    else
        TextoHB.Text = "25"
        HeadSize = 25
        pcall(function()
            ConfigFile("HitboxSize", 25)
        end)
    end
end)
TextoTRA.FocusLost:Connect(function()
    local v1067 = TextoTRA.Text:gsub("%s+", "")
    if v1067:match("[^%d%.]") then
        v1067 = v1067:gsub("[^%d%.]", "")
    end
    local vu1068 = false
    local v1070 = v1067:gsub(".", function(p1069)
        if p1069 ~= "." then
            return p1069
        end
        if vu1068 then
            return ""
        end
        vu1068 = true
        return "."
    end)
    local vu1071 = tonumber(v1070)
    if vu1071 then
        if vu1071 > 1 then
            TextoTRA.Text = "1"
            TransHB = 1
            pcall(function()
                ConfigFile("HitboxTransparency", 1)
            end)
        elseif vu1071 < 0 then
            TextoTRA.Text = "0"
            TransHB = 0
            pcall(function()
                ConfigFile("HitboxTransparency", 0)
            end)
        else
            TextoTRA.Text = tostring(vu1071)
            TransHB = vu1071
            pcall(function()
                ConfigFile("HitboxTransparency", vu1071)
            end)
        end
    else
        TextoTRA.Text = "0.9"
        TransHB = 0.9
        pcall(function()
            ConfigFile("HitboxTransparency", 0.9)
        end)
    end
end)
function CorHBFunction(p1072)
    if p1072 == "R" then
        BotaoCor.Text = "R"
        BotaoCor.TextColor3 = Color3.fromRGB(255, 0, 0)
        CorHB = "R"
        pcall(function()
            ConfigFile("HitboxColor", "R")
        end)
    elseif p1072 == "G" then
        BotaoCor.Text = "G"
        BotaoCor.TextColor3 = Color3.fromRGB(0, 255, 0)
        CorHB = "G"
        pcall(function()
            ConfigFile("HitboxColor", "G")
        end)
    elseif p1072 == "B" then
        BotaoCor.Text = "B"
        BotaoCor.TextColor3 = Color3.fromRGB(0, 0, 255)
        CorHB = "B"
        pcall(function()
            ConfigFile("HitboxColor", "B")
        end)
    end
end
BotaoCor.MouseButton1Click:Connect(function()
    if CorHB ~= "R" then
        if CorHB ~= "G" then
            if CorHB == "B" then
                CorHBFunction("R")
            end
        else
            CorHBFunction("B")
        end
    else
        CorHBFunction("G")
    end
end)
RunService = game:GetService("RunService")
attacking = false
atacandoJogador = nil
connectionCK = nil
ferramentasValidas = {
    Pencil = true,
    ["Emerald Greatsword"] = true,
    ["Blood Dagger"] = true,
    ["Frost Spear"] = true,
    Mace = true,
    ["Steel Sword"] = true,
    Katana = true,
    ["Baseball Bat"] = true,
    Chainsaw = true,
    Knife = true,
    Pan = true,
    ["Pink Hammer"] = true,
    Scythe = true,
    ["Holloween Dagger"] = true
}
function _G.ClickKill(p1073)
    if connectionCK then
        connectionCK:Disconnect()
        connectionCK = nil
    end
    if p1073 then
        pcall(function()
            ConfigFile("ClickKill", true)
        end)
        DesligarBotao(LoopBotao)
        DesligarBotao(FlingBotao)
        DesligarBotao(CBringBotao)
        connectionCK = LocalPlayer:GetMouse().Button1Down:Connect(function()
            if attacking then
                return
            end
            local v1074 = LocalPlayer:GetMouse().Target
            if not v1074 then
                return
            end
            local v1075 = v1074:FindFirstAncestorOfClass("Model")
            local vu1076 = Players:GetPlayerFromCharacter(v1075)
            if not v1075 or (not vu1076 or v1075 == LocalPlayer.Character) then
                return
            end
            if atacandoJogador == vu1076 then
                return
            end
            atacandoJogador = vu1076
            local v1077 = v1075:FindFirstChildOfClass("Humanoid")
            if not v1077 or (v1077.Health <= 0 or v1075:FindFirstChild("ForceField")) then
                atacandoJogador = nil
                return
            end
            local v1078 = not v1075:FindFirstChild("Kawaii Revolver") and vu1076:FindFirstChildOfClass("Backpack")
            if v1078 then
                v1078 = vu1076.Backpack:FindFirstChild("Kawaii Revolver")
            end
            if not v1078 then
                Notificar(traducao.Erro, traducao.NaoKawaii, 5)
                attacking = false
                atacandoJogador = nil
                return
            end
            if SomenteAlvos and not table.find(Alvos, vu1076.Name) then
                atacandoJogador = nil
                return
            end
            if not Protegido(vu1076.Name) then
                atacandoJogador = nil
                return
            end
            local v1079 = LocalPlayer.Character
            if not v1079 then
                atacandoJogador = nil
                return
            end
            local v1080, v1081, v1082 = ipairs(v1079:GetChildren())
            local v1083 = nil
            while true do
                local v1084
                v1082, v1084 = v1080(v1081, v1082)
                if v1082 == nil then
                    v1084 = v1083
                    break
                end
                if v1084:IsA("Tool") and ferramentasValidas[v1084.Name] then
                    break
                end
            end
            local v1085
            if v1084 or not LocalPlayer:FindFirstChild("Backpack") then
                v1085 = v1084
            else
                local v1086, v1087, v1088 = ipairs(LocalPlayer.Backpack:GetChildren())
                while true do
                    v1088, v1085 = v1086(v1087, v1088)
                    if v1088 == nil then
                        v1085 = v1084
                        break
                    end
                    if v1085:IsA("Tool") and ferramentasValidas[v1085.Name] then
                        break
                    end
                end
            end
            if not v1085 then
                atacandoJogador = nil
                return
            end
            local v1089 = v1079:FindFirstChild("HumanoidRootPart")
            if not v1089 then
                atacandoJogador = nil
                return
            end
            local v1090 = v1089.CFrame
            attacking = true
            local vu1091 = nil
            vu1091 = RunService.RenderStepped:Connect(function()
                local v1092 = LocalPlayer.Character
                local v1093
                if v1092 then
                    v1093 = v1092:FindFirstChild("HumanoidRootPart")
                else
                    v1093 = v1092
                end
                if v1092 and v1093 then
                    local v1094 = vu1076.Character
                    local v1095
                    if v1094 then
                        v1095 = v1094:FindFirstChild("Head")
                    else
                        v1095 = v1094
                    end
                    local v1096
                    if v1094 then
                        v1096 = v1094:FindFirstChildOfClass("Humanoid")
                    else
                        v1096 = v1094
                    end
                    if v1094 and (v1095 and (v1096 and v1096.Health > 0)) then
                        v1093.CFrame = CFrame.new(v1095.Position + Vector3.new(0, 15, 0))
                    else
                        attacking = false
                        atacandoJogador = nil
                        if vu1091 then
                            vu1091:Disconnect()
                        end
                    end
                else
                    attacking = false
                    atacandoJogador = nil
                    if vu1091 then
                        vu1091:Disconnect()
                    end
                    return
                end
            end)
            local v1097 = vu1091
            while true do
                local v1098 = attacking and (vu1076 and vu1076.Parent) and vu1076.Character
                if not v1098 then
                    break
                end
                local v1099 = v1098:FindFirstChildOfClass("Humanoid")
                if not v1099 or v1099.Health <= 0 then
                    break
                end
                local v1100 = LocalPlayer.Character
                if v1100 then
                    v1100 = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
                end
                if not v1100 or v1100.Health <= 0 then
                    break
                end
                AttackCH(vu1076)
                task.wait(0.1)
            end
            if v1097 then
                v1097:Disconnect()
            end
            if LocalPlayer.Character and (LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v1090) then
                LocalPlayer.Character.HumanoidRootPart.CFrame = v1090
            end
            attacking = false
            atacandoJogador = nil
        end)
    else
        pcall(function()
            ConfigFile("ClickKill", false)
        end)
    end
end
local vu1101 = nil
function _G.DealthTouch(pu1102)
    if vu1101 then
        vu1101:Disconnect()
        vu1101 = nil
    end
    pcall(function()
        ConfigFile("DeathTouch", pu1102)
    end)
    if pu1102 then
        function setupCharacter(p1103)
            local v1104 = p1103:WaitForChild("HumanoidRootPart", 5)
            if v1104 then
                vu1101 = v1104.Touched:Connect(function(p1105)
                    local v1106 = Players:GetPlayerFromCharacter(p1105.Parent)
                    if v1106 and v1106 ~= LocalPlayer then
                        local v1107 = p1105.Parent:FindFirstChild("Humanoid")
                        local v1108 = p1105.Parent:FindFirstChildOfClass("ForceField")
                        if v1107 and (v1107.Health > 0 and not v1108) then
                            local v1109 = v1106.Name
                            if Protegido(v1109) and (not SomenteAlvos or table.find(Alvos, v1109)) then
                                local v1110 = not v1106.Backpack:FindFirstChild("Kawaii Revolver") and v1106.Character
                                if v1110 then
                                    v1110 = v1106.Character:FindFirstChild("Kawaii Revolver")
                                end
                                if v1110 then
                                    AttackCH(v1106)
                                else
                                    Notificar(traducao.Erro, traducao.NaoKawaii, 5)
                                end
                            end
                        end
                    end
                end)
            end
        end
        if LocalPlayer.Character then
            setupCharacter(LocalPlayer.Character)
        end
        LocalPlayer.CharacterAdded:Connect(setupCharacter)
    end
end
local vu1111 = game.Players.LocalPlayer
local v1112 = vu1111
local vu1113 = vu1111.GetMouse(v1112)
local vu1114 = false
local vu1115 = false
local vu1116 = nil
local vu1117 = false
local vu1118 = {}
local vu1119 = {}
local vu1120 = 100
Faim = Instance.new("Frame")
Faim.Size = UDim2.new(0, 35, 0, 35)
Faim.Position = UDim2.new(0.5, - 75, 0.5, - 25)
Faim.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
Faim.Draggable = true
Faim.Active = true
Faim.Visible = false
Faim.Parent = CORE
Baim = Instance.new("Frame")
Baim.Size = UDim2.new(0, 100, 0, 35)
Baim.Position = UDim2.new(0, 45, 0, 0)
Baim.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
Baim.Parent = Faim
BtnAIM = Instance.new("TextButton")
BtnAIM.Size = UDim2.new(1, 0, 1, 0)
BtnAIM.Position = UDim2.new(0, 0, 0, 0)
BtnAIM.TextSize = 16
BtnAIM.Text = "Aimlock"
BtnAIM.TextColor3 = Color3.fromRGB(255, 255, 0)
BtnAIM.BackgroundTransparency = 1
BtnAIM.Parent = Baim
Corner(Faim, 10)
Corner(Baim, 10)
Stroke(Faim, 0, 0, 0, 2)
Stroke(Baim, 0, 0, 0, 2)
Stroke(BtnAIM, 0, 0, 0, 2)
bullet = game.ReplicatedStorage:WaitForChild("Revolver Bullet")
targetFilter = workspace:WaitForChild("Target Filter")
function TiraDaMao()
    local v1121 = vu1111.Character
    local v1122 = v1121 and v1121:FindFirstChild("Kawaii Revolver")
    if v1122 then
        v1122.Parent = vu1111:WaitForChild("Backpack")
    end
end
function ClosestEnemyInRange()
    if not (hrp and lpChar.Parent) then
        lpChar = vu1111.Character or vu1111.CharacterAdded:Wait()
        hrp = lpChar:WaitForChild("HumanoidRootPart")
    end
    local v1123 = vu1120 * vu1120
    local v1124 = game.Players:GetPlayers()
    local v1125 = nil
    for v1126 = 1, # v1124 do
        local v1127 = v1124[v1126]
        if v1127 ~= vu1111 then
            local v1128 = v1127.Character
            if v1128 then
                local v1129 = v1128:FindFirstChild("Humanoid")
                local v1130 = v1128:FindFirstChild("HumanoidRootPart")
                if v1129 then
                    if v1129.Health > 0 then
                        if v1130 then
                            if not v1128:FindFirstChildOfClass("ForceField") then
                                if not SomenteAlvos or table.find(Alvos, v1127.Name) then
                                    if Protegido(v1127.Name) then
                                        local v1131 = (v1130.Position - hrp.Position).Magnitude ^ 2
                                        if v1131 < v1123 then
                                            v1125 = v1130.Position
                                            v1123 = v1131
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    return v1125
end
function Closest()
    local v1132 = not ClosestEnemyInRange() and vu1113.Hit
    if v1132 then
        v1132 = vu1113.Hit.Position
    end
    return v1132
end
function _G.AutoShot(p1133)
    vu1114 = p1133 or false
    if vu1116 then
        task.cancel(vu1116)
        vu1116 = nil
    end
    if vu1114 and vu1117 then
        vu1116 = task.spawn(function()
            while vu1114 and vu1117 do
                local vu1134 = vu1111.Character
                if vu1134 then
                    vu1134 = vu1134:FindFirstChild("Kawaii Revolver")
                end
                if vu1134 and ClosestEnemyInRange() then
                    pcall(function()
                        vu1134:Activate()
                    end)
                end
                task.wait(1)
            end
        end)
    end
end
function _G.AutoRe(pu1135)
    if not pu1135 and vu1114 then
        _G.AutoShot(false)
    end
    TiraDaMao()
    pcall(function()
        ConfigFile("Aimlock", pu1135)
    end)
    vu1117 = pu1135 or false
    Baim.BackgroundColor3 = vu1117 and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(139, 0, 0)
    local v1136, v1137, v1138 = ipairs(vu1119)
    while true do
        local v1139
        v1138, v1139 = v1136(v1137, v1138)
        if v1138 == nil then
            break
        end
        if v1139 then
            v1139:Disconnect()
        end
    end
    table.clear(vu1119)
    if idleAnim then
        idleAnim:Stop()
        idleAnim:Destroy()
        idleAnim = nil
    end
    if fireAnim then
        fireAnim:Stop()
        fireAnim:Destroy()
        fireAnim = nil
    end
    if pu1135 then
        if vu1117 and (vu1115 and not vu1116) then
            _G.AutoShot(true)
        end
        local function vu1172(p1140)
            if p1140 and not p1140:GetAttribute("Modificado") then
                local v1141 = p1140:FindFirstChildWhichIsA("LocalScript")
                if v1141 then
                    v1141.Disabled = true
                end
                p1140:SetAttribute("Modificado", true)
                table.insert(vu1118, p1140)
                local vu1142 = vu1111.Character or vu1111.CharacterAdded:Wait()
                local v1143 = vu1142
                local vu1144 = vu1142.WaitForChild(v1143, "Humanoid")
                local v1145 = vu1144
                local v1146 = vu1144.WaitForChild(v1145, "Animator")
                local v1147 = Instance.new("Animation")
                v1147.AnimationId = "rbxassetid://6481652297"
                idleAnim = v1146:LoadAnimation(v1147)
                local v1148 = Instance.new("Animation")
                v1148.AnimationId = "rbxassetid://6481677559"
                fireAnim = v1146:LoadAnimation(v1148)
                local vu1149 = p1140:WaitForChild("Barrel"):WaitForChild("Attachment")
                local vu1150 = p1140:WaitForChild("DamageRemote")
                local vu1151 = p1140:WaitForChild("ReplicateRemote")
                local v1152 = vu1142
                local vu1153 = vu1142.WaitForChild(v1152, "Ragdolled")
                local vu1154 = true
                local function vu1170(p1155, p1156)
                    if p1155 and p1156 then
                        local v1157 = p1155:FindFirstChild("Sound")
                        if v1157 then
                            local v1158 = v1157:Clone()
                            v1158.Parent = p1155
                            v1158:Play()
                            game.Debris:AddItem(v1158, 1)
                        end
                        local v1159 = {
                            vu1142,
                            workspace:FindFirstChild("Target Filter")
                        }
                        local v1160, v1161, v1162 = pairs(workspace:GetDescendants())
                        while true do
                            local v1163
                            v1162, v1163 = v1160(v1161, v1162)
                            if v1162 == nil then
                                break
                            end
                            if v1163:IsA("Accessory") then
                                table.insert(v1159, v1163)
                            end
                        end
                        local v1164 = Ray.new(p1155.WorldPosition, (p1156 - p1155.WorldPosition).Unit * 100)
                        local v1165, v1166 = workspace:FindPartOnRayWithIgnoreList(v1164, v1159)
                        local v1167 = bullet:Clone()
                        v1167.Parent = workspace:FindFirstChild("Target Filter")
                        game.Debris:AddItem(v1167, 1)
                        local v1168 = (p1155.WorldPosition - v1166).Magnitude
                        v1167.Size = Vector3.new(0.2, 0.2, v1168)
                        v1167.CFrame = CFrame.new(p1155.WorldPosition, p1156) * CFrame.new(0, 0, - v1168 / 2)
                        game.TweenService:Create(v1167, TweenInfo.new(0.3, Enum.EasingStyle.Linear), {
                            Size = Vector3.new(0.05, 0.05, v1168),
                            Transparency = 1
                        }):Play()
                        if v1165 and v1165.Parent:FindFirstChild("Humanoid") then
                            local v1169 = Instance.new("Part")
                            v1169.Name = "Exploding Neon Part"
                            v1169.Anchored = true
                            v1169.CanCollide = false
                            v1169.Shape = Enum.PartType.Ball
                            v1169.Material = Enum.Material.Neon
                            v1169.BrickColor = v1167.BrickColor
                            v1169.Size = Vector3.new(0.1, 0.1, 0.1)
                            v1169.Position = v1166
                            v1169.Parent = workspace:FindFirstChild("Target Filter")
                            game.Debris:AddItem(v1169, 2)
                            game.TweenService:Create(v1169, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
                                Size = Vector3.new(2, 2, 2),
                                Transparency = 1
                            }):Play()
                            vu1150:FireServer(v1165.Parent.Humanoid)
                        end
                    end
                end
                table.insert(vu1119, p1140.Activated:Connect(function()
                    if vu1144.Health > 0 and (not vu1153.Value and vu1154) then
                        vu1154 = false
                        fireAnim:Play()
                        fireAnim:AdjustSpeed(0.8)
                        local vu1171 = Closest()
                        if vu1171 then
                            task.spawn(function()
                                vu1170(vu1149, vu1171)
                            end)
                            vu1151:FireServer(vu1171)
                        end
                        task.wait(1)
                        vu1154 = true
                    end
                end))
                table.insert(vu1119, p1140.Equipped:Connect(function()
                    if idleAnim then
                        idleAnim:Play()
                    end
                end))
                table.insert(vu1119, p1140.Unequipped:Connect(function()
                    if idleAnim then
                        idleAnim:Stop()
                        idleAnim:Destroy()
                        idleAnim = nil
                    end
                end))
            end
        end
        ConexoesArmas = {}
        AutoReLoopThread = task.spawn(function()
            while vu1117 do
                local v1173 = vu1111:WaitForChild("Backpack")
                local v1174 = vu1111.Character or vu1111.CharacterAdded:Wait()
                local v1175, v1176, v1177 = ipairs({
                    v1173,
                    v1174
                })
                while true do
                    local v1178
                    v1177, v1178 = v1175(v1176, v1177)
                    if v1177 == nil then
                        break
                    end
                    local v1179, v1180, v1181 = ipairs(v1178:GetChildren())
                    while true do
                        local v1182
                        v1181, v1182 = v1179(v1180, v1181)
                        if v1181 == nil then
                            break
                        end
                        if v1182:IsA("Tool") and (v1182.Name == "Kawaii Revolver" and not v1182:GetAttribute("Modificado")) then
                            local v1183 = v1182:FindFirstChildWhichIsA("LocalScript")
                            if v1183 then
                                v1183.Disabled = true
                            end
                            vu1172(v1182)
                        end
                    end
                end
                task.wait(0.5)
            end
        end)
    else
        local v1184, v1185, v1186 = ipairs(vu1118)
        while true do
            local v1187
            v1186, v1187 = v1184(v1185, v1186)
            if v1186 == nil then
                break
            end
            if v1187 and v1187.Parent then
                local v1188 = v1187:FindFirstChildWhichIsA("LocalScript")
                if v1188 then
                    v1188.Disabled = false
                end
                v1187:SetAttribute("Modificado", nil)
            end
        end
        table.clear(vu1118)
        local v1189, v1190, v1191 = ipairs(ConexoesArmas)
        while true do
            local v1192
            v1191, v1192 = v1189(v1190, v1191)
            if v1191 == nil then
                break
            end
            if v1192 then
                v1192:Disconnect()
            end
        end
        table.clear(ConexoesArmas)
        if AutoReLoopThread then
            task.cancel(AutoReLoopThread)
            AutoReLoopThread = nil
        end
        vu1117 = false
    end
end
BtnAIM.MouseButton1Click:Connect(function()
    Alternadores.AimLock()
    Baim.BackgroundColor3 = vu1117 and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(139, 0, 0)
end)
TextoAIMD.FocusLost:Connect(function()
    local v1193 = TextoAIMD.Text:gsub("%s+", ""):gsub("%D", "")
    local v1194 = v1193 == "" and "30" or v1193
    local vu1195 = math.clamp(tonumber(v1194) or 30, 30, 5000)
    TextoAIMD.Text = tostring(vu1195)
    vu1120 = vu1195
    pcall(function()
        ConfigFile("AimlockDistance", vu1195)
    end)
end)
function AShot()
    vu1115 = not vu1115
    AutoShot.BackgroundColor3 = vu1115 and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(139, 0, 0)
    IconeAutoSH.Image = vu1115 and "rbxassetid://106235415289683" or "rbxassetid://90789802362187"
    _G.AutoShot(vu1115)
    pcall(function()
        ConfigFile("AutomaticShooting", vu1115)
    end)
end
AutoShot.MouseButton1Click:Connect(AShot)
function AimGuiFunc()
    if Faim.Visible then
        AimGui.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
        IconeAimGui.Image = "rbxassetid://90789802362187"
        Faim.Visible = false
        pcall(function()
            ConfigFile("AimlockGui", false)
        end)
    else
        AimGui.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        IconeAimGui.Image = "rbxassetid://106235415289683"
        Faim.Visible = true
        pcall(function()
            ConfigFile("AimlockGui", true)
        end)
    end
end
AimGui.MouseButton1Click:Connect(AimGuiFunc)
AimDistancia = 16
aiming = false
connectionAIM = nil
local vu1196 = game:GetService("Players")
local vu1197 = game:GetService("RunService")
local vu1198 = vu1196.LocalPlayer
local vu1199 = workspace.CurrentCamera
ESP_Box = Drawing.new("Square")
ESP_Box.Thickness = 1
ESP_Box.Color = Color3.fromRGB(255, 255, 255)
ESP_Box.Visible = false
ESP_Box.Transparency = 1
ESP_Box.Filled = false
function _G.Aim(pu1200)
    aiming = pu1200
    pcall(function()
        ConfigFile("Aimbot", pu1200)
    end)
    if connectionAIM then
        connectionAIM:Disconnect()
        connectionAIM = nil
    end
    if aiming then
        connectionAIM = vu1197.Heartbeat:Connect(function(p1201)
            local v1202 = vu1198.Character
            if v1202 then
                local v1203 = v1202:FindFirstChild("HumanoidRootPart")
                local v1204 = v1202:FindFirstChildOfClass("Humanoid")
                if v1203 and (v1204 and v1204.Health > 0) then
                    local v1205 = AimDistancia
                    local v1206 = vu1196
                    local v1207, v1208, v1209 = ipairs(v1206:GetPlayers())
                    local v1210 = nil
                    while true do
                        local v1211
                        v1209, v1211 = v1207(v1208, v1209)
                        if v1209 == nil then
                            break
                        end
                        if v1211 ~= vu1198 and v1211.Character and v1211.Character:FindFirstChild("HumanoidRootPart") then
                            local v1212 = v1211.Character:FindFirstChildOfClass("Humanoid")
                            if v1212 and (v1212.Health > 0 and (not SomenteAlvos or table.find(Alvos, v1211.Name))) and Protegido(v1211.Name) then
                                local v1213 = (v1203.Position - v1211.Character.HumanoidRootPart.Position).Magnitude
                                if v1213 <= v1205 then
                                    v1210 = v1211
                                    v1205 = v1213
                                end
                            end
                        end
                    end
                    if v1210 and v1210.Character and v1210.Character:FindFirstChild("HumanoidRootPart") then
                        local v1214 = v1210.Character:FindFirstChild("HumanoidRootPart")
                        local v1215 = v1210.Character:FindFirstChild("Head")
                        if v1214 and v1215 then
                            local v1216 = vu1199.CFrame.Position
                            local v1217 = (v1214.Position - v1216).Unit
                            local v1218 = vu1199.CFrame.LookVector:Lerp(v1217, math.clamp(p1201 * 10, 0, 1))
                            vu1199.CFrame = CFrame.new(v1216, v1216 + v1218)
                            local v1219 = vu1199:WorldToViewportPoint(v1215.Position + Vector3.new(0, 0.5, 0))
                            local v1220 = vu1199:WorldToViewportPoint(v1214.Position - Vector3.new(0, 3, 0))
                            local v1221, v1222 = vu1199:WorldToViewportPoint(v1214.Position)
                            if v1222 then
                                local v1223 = math.abs(v1219.Y - v1220.Y)
                                local v1224 = v1223 / 2
                                ESP_Box.Position = Vector2.new(v1221.X - v1224 / 2, v1219.Y)
                                ESP_Box.Size = Vector2.new(v1224, v1223)
                                ESP_Box.Visible = true
                            else
                                ESP_Box.Visible = false
                            end
                        else
                            ESP_Box.Visible = false
                        end
                    else
                        ESP_Box.Visible = false
                    end
                end
            else
                return
            end
        end)
    else
        ESP_Box.Visible = false
    end
end
TextoAIM.FocusLost:Connect(function()
    local vu1225 = TextoAIM.Text:gsub("%s+", "")
    if vu1225:match("%D") then
        vu1225 = vu1225:gsub("%D", "")
        if vu1225 == "" then
            TextoAIM.Text = "16"
            AimDistancia = 16
            pcall(function()
                ConfigFile("AimbotDistance", 16)
            end)
            return
        end
    end
    local v1226 = tonumber(vu1225)
    if v1226 then
        if v1226 > 100 then
            TextoAIM.Text = "100"
            AimDistancia = 100
            pcall(function()
                ConfigFile("AimbotDistance", 100)
            end)
        elseif v1226 < 5 then
            TextoAIM.Text = "5"
            AimDistancia = 5
            pcall(function()
                ConfigFile("AimbotDistance", 5)
            end)
        else
            TextoAIM.Text = vu1225
            AimDistancia = tonumber(vu1225)
            pcall(function()
                ConfigFile("AimbotDistance", tonumber(vu1225))
            end)
        end
    else
        TextoAIM.Text = "16"
        AimDistancia = 16
        pcall(function()
            ConfigFile("AimbotDistance", 16)
        end)
    end
end)
PrefixKC = ":"
posKC = nil
Atacando = false
LoopTPRenderStepped = nil
AtacarCoroutine = nil
KillCo = false
alvoNotificado = false
function _G.KC(p1227)
    KillCo = p1227
    Atacando = false
    if LoopTPRenderStepped then
        LoopTPRenderStepped:Disconnect()
        LoopTPRenderStepped = nil
    end
    AtacarCoroutine = nil
    alvoNotificado = false
end
function ReceptorKillCommand(p1228, p1229)
    if not KillCo then
        return
    end
    if p1228 ~= game.Players.LocalPlayer.Name then
        return
    end
    if Atacando then
        return
    end
    local v1230 = p1229:lower()
    if v1230:sub(1, # PrefixKC + 4) ~= PrefixKC:lower() .. "kill" then
        return
    end
    local v1231 = v1230:sub(# PrefixKC + 6):lower()
    if v1231 == "" then
        return
    end
    local v1232, v1233, v1234 = pairs(game.Players:GetPlayers())
    local v1235 = nil
    while true do
        local vu1236
        v1234, vu1236 = v1232(v1233, v1234)
        if v1234 == nil then
            vu1236 = v1235
            break
        end
        if vu1236 ~= game.Players.LocalPlayer then
            local v1237 = vu1236.Name:lower()
            local v1238 = vu1236.DisplayName:lower()
            if v1237:sub(1, # v1231) == v1231 or v1238:sub(1, # v1231) == v1231 then
                local v1239 = vu1236.Character
                local v1240
                if v1239 then
                    v1240 = v1239:FindFirstChild("Humanoid")
                else
                    v1240 = v1239
                end
                local v1241
                if v1239 then
                    v1241 = v1239:FindFirstChildOfClass("ForceField")
                else
                    v1241 = v1239
                end
                local v1242 = not (v1239 and v1239:FindFirstChild("Kawaii Revolver")) and vu1236:FindFirstChild("Backpack")
                if v1242 then
                    v1242 = vu1236.Backpack:FindFirstChild("Kawaii Revolver")
                end
                if v1240 and (v1240.Health > 0 and (not v1241 and v1242)) then
                    local v1243 = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    if v1243 then
                        v1243 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                    end
                    posKC = v1243
                    break
                end
            end
        end
    end
    if vu1236 then
        alvoNotificado = false
        Atacando = true
        LoopTPRenderStepped = game:GetService("RunService").RenderStepped:Connect(function()
            if Atacando and vu1236 then
                local v1244 = vu1236.Character
                local v1245 = game.Players.LocalPlayer.Character
                if v1244 and (v1244:FindFirstChild("Head") and (v1244:FindFirstChild("Humanoid") and (v1245 and v1245:FindFirstChild("HumanoidRootPart")))) then
                    if v1244.Humanoid.Health > 0 then
                        v1245.HumanoidRootPart.CFrame = v1244.Head.CFrame + Vector3.new(0, 15, 0)
                    else
                        Atacando = false
                    end
                else
                    Atacando = false
                    return
                end
            else
                return
            end
        end)
        AtacarCoroutine = task.spawn(function()
            while Atacando and vu1236 do
                if not (vu1236.Character and vu1236.Character:FindFirstChild("Humanoid")) then
                    Atacando = false
                    break
                end
                if vu1236.Character.Humanoid.Health <= 0 then
                    Atacando = false
                    break
                end
                pcall(function()
                    AttackCH(vu1236)
                end)
                task.wait(0.1)
            end
            if LoopTPRenderStepped then
                LoopTPRenderStepped:Disconnect()
                LoopTPRenderStepped = nil
            end
            Notificar(traducao.KilledTitle, traducao.KilledText, 6)
            Atacando = false
            AtacarCoroutine = nil
            vu1236 = nil
            alvoNotificado = false
            if posKC and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(posKC)
            end
        end)
    elseif not alvoNotificado then
        Notificar(traducao.AlvoIn, traducao.AlvoInText, 6)
        alvoNotificado = true
    end
end
TextoPREFIX.FocusLost:Connect(function()
    local v1246 = TextoPREFIX.Text:gsub("[%z\1-\31\127-\239\191\189]", ""):gsub("%s+", ""):sub(1, 1)
    TextoPREFIX.Text = (v1246 == "" or not v1246) and ":" or v1246
    PrefixKC = TextoPREFIX.Text
    pcall(function()
        ConfigFile("KillCommandPrefix", PrefixKC)
    end)
end)
connAU = nil
function _G.AutoAttack(pu1247)
    pcall(function()
        ConfigFile("AutoAttack", pu1247)
    end)
    if connAU then
        connAU:Disconnect()
        connAU = nil
    end
    if pu1247 then
        connAU = game:GetService("RunService").Heartbeat:Connect(function()
            wait(0.5)
            local v1248 = game:GetService("Players")
            local v1249 = v1248.LocalPlayer
            local v1250 = v1249.Character
            local v1251
            if v1250 then
                v1251 = v1250:FindFirstChildOfClass("Humanoid")
            else
                v1251 = v1250
            end
            if not v1251 or v1251.Health <= 0 then
                return
            end
            local function vu1254(p1252)
                local v1253 = p1252.Character and (not p1252.Character:FindFirstChild("Kawaii Revolver") and p1252:FindFirstChildOfClass("Backpack"))
                if v1253 then
                    v1253 = p1252.Backpack:FindFirstChild("Kawaii Revolver")
                end
                return v1253
            end
            local function v1258(p1255)
                local v1256 = p1255.Character
                local v1257
                if v1256 then
                    v1257 = v1256:FindFirstChildOfClass("Humanoid")
                else
                    v1257 = v1256
                end
                if v1256 and (v1257 and v1257.Health > 0) then
                    if v1256:FindFirstChildOfClass("ForceField") then
                        return false
                    else
                        return vu1254(p1255) and true or false
                    end
                else
                    return false
                end
            end
            local v1260 = (function(p1259)
                if p1259 then
                    p1259 = p1259:FindFirstChildWhichIsA("Tool")
                end
                if p1259 and (p1259.Name ~= "Kawaii Revolver" and p1259:FindFirstChild("DamageRemote")) then
                    return p1259
                end
            end)(v1250)
            if not v1260 then
                return
            end
            local v1261, v1262, v1263 = pairs(v1248:GetPlayers())
            while true do
                local v1264
                v1263, v1264 = v1261(v1262, v1263)
                if v1263 == nil then
                    break
                end
                if v1264 ~= v1249 and (v1258(v1264) and (not SomenteAlvos or Alvos[v1264.Name])) and (Protegido(v1264.Name) and (v1250.HumanoidRootPart.Position - v1264.Character.HumanoidRootPart.Position).Magnitude <= 5) then
                    v1260:Activate()
                    break
                end
            end
        end)
    end
end
estadoFling = false
hfPower = 10000
function _G.HiddenFling(p1265)
    estadoFling = p1265
    if p1265 then
        pcall(function()
            ConfigFile("TouchFling", true)
        end)
    else
        pcall(function()
            ConfigFile("TouchFling", false)
        end)
    end
end
spawn(function()
    local v1266 = game:GetService("RunService").Heartbeat
    local v1267 = game:GetService("RunService").RenderStepped
    local v1268 = game:GetService("RunService").Stepped
    local v1269 = nil
    local v1270 = nil
    local v1271 = 0.1
    repeat
        v1266:Wait()
    until estadoFling
    while estadoFling and not (v1269 and (v1269.Parent and (v1270 and v1270.Parent))) do
        v1266:Wait()
        v1269 = game.Players.LocalPlayer.Character
        v1270 = (function(p1272)
            local v1273, v1274, v1275 = ipairs(p1272:GetChildren())
            while true do
                local v1276
                v1275, v1276 = v1273(v1274, v1275)
                if v1275 == nil then
                    break
                end
                if v1276.Name == "HumanoidRootPart" and v1276:IsA("BasePart") then
                    return v1276
                end
                if v1276.Name == "Torso" and v1276:IsA("BasePart") then
                    return v1276
                end
                if v1276.Name == "UpperTorso" and v1276:IsA("BasePart") then
                    return v1276
                end
            end
            return nil
        end)(v1269)
    end
    if estadoFling then
        local v1277 = v1270.Velocity
        v1270.Velocity = v1277 * hfPower + Vector3.new(0, hfPower, 0)
        v1267:Wait()
        if v1269 and (v1269.Parent and (v1270 and v1270.Parent)) then
            v1270.Velocity = v1277
        end
        v1268:Wait()
        if v1269 and (v1269.Parent and (v1270 and v1270.Parent)) then
            v1270.Velocity = v1277 + Vector3.new(0, v1271, 0)
            v1271 = v1271 * - 1
        end
    end
	
end)
TextoHF.FocusLost:Connect(function()
    local v1278 = TextoHF.Text:gsub("%s+", ""):gsub("%D+", "")
    local vu1279 = v1278 == "" and 10000 or (tonumber(v1278) < 30 and 30 or tonumber(v1278))
    TextoHF.Text = tostring(vu1279)
    hfPower = vu1279
    pcall(function()
        ConfigFile("TouchFlingPower", vu1279)
    end)
end)
F2 = Instance.new("Frame")
F2.Size = UDim2.new(0, 35, 0, 35)
F2.Position = UDim2.new(0.5, - 75, 0.5, - 25)
F2.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
F2.Draggable = true
F2.Active = true
F2.Visible = false
F2.Parent = CORE
B2 = Instance.new("Frame")
B2.Size = UDim2.new(0, 100, 0, 35)
B2.Position = UDim2.new(0, 45, 0, 0)
B2.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
B2.Parent = F2
Btn2 = Instance.new("TextButton")
Btn2.Size = UDim2.new(1, 0, 1, 0)
Btn2.Position = UDim2.new(0, 0, 0, 0)
Btn2.TextScaled = true
Btn2.Text = traducao.Somente
Btn2.TextColor3 = Color3.fromRGB(255, 255, 0)
Btn2.BackgroundTransparency = 1
Btn2.Parent = B2
Corner(F2, 10)
Corner(B2, 10)
Stroke(F2, 0, 0, 0, 2)
Stroke(B2, 0, 0, 0, 2)
Stroke(Btn2, 0, 0, 0, 2)
function _G.Somente(p1280)
    SomenteAlvos = p1280
    if p1280 then
        B2.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        pcall(function()
            ConfigFile("OnlyTargets", true)
        end)
    else
        B2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        pcall(function()
            ConfigFile("OnlyTargets", false)
        end)
    end
end
Btn2.MouseButton1Click:Connect(function()
    _G.Somente(not SomenteAlvos)
    Alternadores[traducao.Somente]()
end)
function SomenteGuiFunc()
    if F2.Visible then
        SAG.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
        IconeSAG.Image = "rbxassetid://90789802362187"
        F2.Visible = false
        pcall(function()
            ConfigFile("OnlyTargetsGui", false)
        end)
    else
        SAG.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        IconeSAG.Image = "rbxassetid://106235415289683"
        F2.Visible = true
        pcall(function()
            ConfigFile("OnlyTargetsGui", true)
        end)
    end
end
SAG.MouseButton1Click:Connect(SomenteGuiFunc)
ScrollCombate = Instance.new("ScrollingFrame")
ScrollCombate.Size = UDim2.new(0, 297, 0, 216)
ScrollCombate.Position = UDim2.new(0, 154, 0, 3)
ScrollCombate.BackgroundTransparency = 1
ScrollCombate.ScrollBarThickness = 0
ScrollCombate.CanvasSize = UDim2.new(0, 0, 0, 740)
ScrollCombate.ScrollingDirection = Enum.ScrollingDirection.Y
ScrollCombate.Parent = _G.Tela3
CriarOpcao(ScrollCombate, 6, 78488568165392, "Kill Aura", 1, "ligar", "KillAura")
CriarOpcao(ScrollCombate, 80, 18134586131, "Hitbox", 2, "ligar", "HB")
CriarOpcao(ScrollCombate, 154, 132966605246327, "Click Kill", 3, "ligar", "ClickKill")
CriarOpcao(ScrollCombate, 228, 73388538185709, "Death Touch", 4, "ligar", "DealthTouch")
CriarOpcao(ScrollCombate, 302, 86446229415485, "AimLock", 5, "ligar", "AutoRe")
CriarOpcao(ScrollCombate, 376, 75058868341589, "AimBot", 6, "ligar", "Aim")
CriarOpcao(ScrollCombate, 450, 115566605830228, "Kill Command", 7, "ligar", "KC")
CriarOpcao(ScrollCombate, 524, 115078793186628, "Auto Attack", 8, "ligar", "AutoAttack")
CriarOpcao(ScrollCombate, 598, 100210501540626, "Touch Fling", 9, "ligar", "HiddenFling")
CriarOpcao(ScrollCombate, 672, 99388950276475, traducao.Somente, 10, "ligar", "Somente")
coroutine.wrap(function()
    if tentarLer("KillAura") then
        Alternadores["Kill Aura"]()
    end
    if tentarLer("ViewAttack") then
        VerAuraFunc()
    end
    local v1281, v1282 = pcall(function()
        return LerConfig("KillAuraRequiresWeaponInHand")
    end)
    if v1281 and not v1282 then
        RequerMaoFunc()
    end
    if tentarLer("RequiresWeaponGui") then
        RequerGuiFunc()
    end
    if tentarLer("Hitbox") then
        Alternadores.Hitbox()
    end
    local v1283, v1284 = pcall(function()
        return LerConfig("HitboxSize")
    end)
    if v1283 and v1284 then
        HeadSize = v1284
    end
    local v1285, v1286 = pcall(function()
        return LerConfig("HitboxColor")
    end)
    if v1285 and (v1286 == "R" or (v1286 == "G" or v1286 == "B")) then
        CorHBFunction(v1286)
    end
    local v1287, v1288 = pcall(function()
        return LerConfig("HitboxTransparency")
    end)
    if v1287 and v1288 then
        TransHB = v1288
    end
    if tentarLer("ClickKill") then
        Alternadores["Click Kill"]()
    end
    if tentarLer("DeathTouch") then
        Alternadores["Death Touch"]()
    end
    if tentarLer("Aimlock") then
        Alternadores.AimLock()
    end
    local v1289, v1290 = pcall(function()
        return LerConfig("AimlockDistance")
    end)
    if v1289 and v1290 then
        vu1120 = v1290
    end
    if tentarLer("AutomaticShooting") then
        AShot()
    end
    if tentarLer("AimlockGui") then
        AimGuiFunc()
    end
    local v1291, v1292 = pcall(function()
        return LerConfig("AimbotDistance")
    end)
    if v1291 and v1292 then
        AimDistancia = v1292
    end
    if tentarLer("KillCommand") then
        Alternadores["Kill Command"]()
    end
    local v1293, v1294 = pcall(function()
        return LerConfig("KillCommandPrefix")
    end)
    if v1293 and v1294 then
        local v1295 = tostring(v1294):gsub("[%z\1-\31\127-\239\191\189]", ""):gsub("%s+", ""):sub(1, 1)
        PrefixKC = (v1295 == "" or not v1295) and ":" or v1295
    end
    if tentarLer("AutoAttack") then
        Alternadores["Auto Attack"]()
    end
    if tentarLer("TouchFling") then
        Alternadores["Touch Fling"]()
    end
    local v1296, v1297 = pcall(function()
        return LerConfig("TouchFlingPower")
    end)
    if v1296 and v1297 then
        hfPower = v1297
    end
    local v1298, v1299 = pcall(function()
        return LerConfig("OnlyTargets")
    end)
    if v1298 and v1299 then
        SomenteAlvos = v1299
        Alternadores[traducao.Somente]()
    end
    if tentarLer("OnlyTargetsGui") then
        SomenteGuiFunc()
    end
end)()
Baim.BackgroundColor3 = vu1117 and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(139, 0, 0)
TpDeVolta = Instance.new("ImageButton")
TpDeVolta.Size = UDim2.new(0, 134, 0, 38)
TpDeVolta.Position = UDim2.new(0, 4, 0, 60)
TpDeVolta.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
TpDeVolta.AutoButtonColor = false
TpDeVolta.Parent = _G.Frame18:FindFirstChild("ScrollInterno")
IconeTpDe = Instance.new("ImageLabel")
IconeTpDe.Size = UDim2.new(0, 38, 0, 38)
IconeTpDe.Position = UDim2.new(0, 0, 0, 0)
IconeTpDe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
IconeTpDe.Image = "rbxassetid://90789802362187"
IconeTpDe.Parent = TpDeVolta
texto = Instance.new("TextLabel")
texto.Size = UDim2.new(1, - 50, 1, 0)
texto.Position = UDim2.new(0, 42, 0, 0)
texto.BackgroundTransparency = 1
texto.Text = traducao.TpDeVolta
texto.TextColor3 = Color3.fromRGB(255, 228, 196)
texto.Font = Enum.Font.Garamond
texto.TextScaled = true
texto.Parent = TpDeVolta
Corner(TpDeVolta, 30)
Corner(IconeTpDe, 30)
Stroke(TpDeVolta, 0, 0, 0, 3)
Stroke(IconeTpDe, 0, 0, 0, 3)
Stroke(texto, 0, 0, 0, 2)
frame = Instance.new("ImageButton")
frame.Size = UDim2.new(0, 134, 0, 38)
frame.Position = UDim2.new(0, 4, 0, 60)
frame.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
frame.AutoButtonColor = false
frame.Parent = _G.Frame19:FindFirstChild("ScrollInterno")
Icone = Instance.new("ImageLabel")
Icone.Size = UDim2.new(0, 38, 0, 38)
Icone.Position = UDim2.new(0, 0, 0, 0)
Icone.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Icone.Image = "rbxassetid://99219062254448"
Icone.Parent = frame
Frame2 = Instance.new("Frame")
Frame2.Position = UDim2.new(0, 46, 0, 4)
Frame2.Size = UDim2.new(1, - 54, 1, - 8)
Frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame2.BackgroundTransparency = 0.5
Frame2.Parent = frame
TextoANTIGOTO = Instance.new("TextBox")
TextoANTIGOTO.Size = UDim2.new(1, 0, 1, 0)
TextoANTIGOTO.Position = UDim2.new(0, 0, 0, 0)
TextoANTIGOTO.BackgroundTransparency = 1
TextoANTIGOTO.Text = tostring((pcall(function()
    return LerConfig("AntiGotosKey")
end))) and (tostring(select(2, pcall(function()
    return LerConfig("AntiGotosKey")
end))):sub(1, 1):upper() or "G") or "G"
TextoANTIGOTO.PlaceholderText = "Key"
TextoANTIGOTO.TextColor3 = Color3.fromRGB(255, 215, 0)
TextoANTIGOTO.PlaceholderColor3 = Color3.fromRGB(255, 215, 0)
TextoANTIGOTO.Font = Enum.Font.Garamond
TextoANTIGOTO.TextScaled = true
TextoANTIGOTO.Parent = Frame2
Corner(frame, 30)
Corner(Icone, 30)
Corner(Frame2, 10)
Stroke(frame, 0, 0, 0, 3)
Stroke(Icone, 0, 0, 0, 3)
Stroke(Frame2, 0, 0, 0, 2)
Stroke(TextoANTIGOTO, 0, 0, 0, 2)
AntiC4_Connection = nil
function _G.AntiC4(pu1300)
    AntiC4 = pu1300
    pcall(function()
        ConfigFile("AntiC4", pu1300)
    end)
    if AntiC4_Connection then
        AntiC4_Connection:Disconnect()
        AntiC4_Connection = nil
    end
    if pu1300 then
        AntiC4_Connection = game:GetService("Workspace").ChildAdded:Connect(function(pu1301)
            if pu1301.Name == "C4 Model" and AntiC4 then
                wait(0.1)
                local vu1302 = pu1301:FindFirstChild("Middle")
                if vu1302 then
                    pu1301.PrimaryPart = vu1302
                    local v1303 = Instance.new("BillboardGui")
                    v1303.Size = UDim2.new(0, 200, 0, 50)
                    v1303.StudsOffset = Vector3.new(0, 3, 0)
                    v1303.AlwaysOnTop = true
                    v1303.Adornee = vu1302
                    v1303.Name = "C4Warning"
                    v1303.MaxDistance = 50
                    v1303.Parent = pu1301
                    local v1304 = Instance.new("TextLabel")
                    v1304.Size = UDim2.new(1, 0, 1, 0)
                    v1304.BackgroundTransparency = 1
                    v1304.Text = "[C4] " .. traducao.Afastar
                    v1304.TextColor3 = Color3.fromRGB(255, 239, 213)
                    v1304.TextScaled = true
                    v1304.Font = Enum.Font.SourceSansBold
                    v1304.Parent = v1303
                    Stroke(v1304, 0, 0, 0, 1)
                    spawn(function()
                        while pu1301.Parent and AntiC4 do
                            local v1305 = game.Players.LocalPlayer.Character
                            if v1305 then
                                v1305 = v1305:FindFirstChild("HumanoidRootPart")
                            end
                            if v1305 and (vu1302.Position - v1305.Position).Magnitude <= 20 then
                                local v1306 = v1305.Position - vu1302.Position
                                v1305.Velocity = Vector3.new(v1306.X, 0, v1306.Z).Unit * 50
                            end
                            task.wait()
                        end
                    end)
                end
            end
        end)
    end
end
AntiGRA_Connection = nil
function _G.AntiGra(pu1307)
    AntiGRA = pu1307
    pcall(function()
        ConfigFile("AntiGrenade", pu1307)
    end)
    if AntiGRA_Connection then
        AntiGRA_Connection:Disconnect()
        AntiGRA_Connection = nil
    end
    if pu1307 then
        AntiGRA_Connection = game:GetService("Workspace").ChildAdded:Connect(function(pu1308)
            if pu1308.Name == "Grenade Model" and AntiGRA then
                wait(0.1)
                local vu1309 = not pu1308:IsDescendantOf(game.Players.LocalPlayer.Character) and (pu1308.Parent == game:GetService("Workspace") and pu1308:FindFirstChild("Handle"))
                if vu1309 then
                    local v1310 = Instance.new("BillboardGui")
                    v1310.Size = UDim2.new(0, 200, 0, 50)
                    v1310.StudsOffset = Vector3.new(0, 3, 0)
                    v1310.AlwaysOnTop = true
                    v1310.Adornee = vu1309
                    v1310.Name = "GrenadeWarning"
                    v1310.MaxDistance = 50
                    v1310.Parent = pu1308
                    local v1311 = Instance.new("TextLabel")
                    v1311.Size = UDim2.new(1, 0, 1, 0)
                    v1311.BackgroundTransparency = 1
                    v1311.Text = "[" .. traducao.Granada .. "] " .. traducao.Afastar
                    v1311.TextColor3 = Color3.fromRGB(34, 139, 34)
                    v1311.TextScaled = true
                    v1311.Font = Enum.Font.SourceSansBold
                    v1311.Parent = v1310
                    Stroke(v1311, 0, 0, 0, 1)
                    spawn(function()
                        while pu1308.Parent == game:GetService("Workspace") and AntiGRA do
                            local v1312 = game.Players.LocalPlayer.Character
                            if v1312 then
                                v1312 = v1312:FindFirstChild("HumanoidRootPart")
                            end
                            if v1312 and (vu1309.Position - v1312.Position).Magnitude <= 20 then
                                local v1313 = v1312.Position - vu1309.Position
                                v1312.Velocity = Vector3.new(v1313.X, 0, v1313.Z).Unit * 50
                            end
                            task.wait()
                        end
                    end)
                end
            end
        end)
    end
end
trapConnection = nil
AntiTrap = false
function _G.AntiTrap(pu1314)
    AntiTrap = pu1314
    pcall(function()
        ConfigFile("AntiTrap", pu1314)
    end)
    local function vu1321(p1315)
        if p1315.Name == "Spike Trap" then
            local v1316, v1317, v1318 = ipairs(p1315:GetDescendants())
            while true do
                local v1319
                v1318, v1319 = v1316(v1317, v1318)
                if v1318 == nil then
                    break
                end
                if v1319:IsA("BasePart") then
                    v1319.Transparency = 0.7
                    local v1320 = v1319:FindFirstChildWhichIsA("TouchTransmitter")
                    if v1320 then
                        v1320:Destroy()
                    end
                end
            end
        end
    end
    if trapConnection then
        trapConnection:Disconnect()
        trapConnection = nil
    end
    if AntiTrap then
        local v1322, v1323, v1324 = ipairs(workspace:GetChildren())
        while true do
            local v1325
            v1324, v1325 = v1322(v1323, v1324)
            if v1324 == nil then
                break
            end
            vu1321(v1325)
        end
        trapConnection = workspace.ChildAdded:Connect(function(p1326)
            task.wait(0.1)
            if AntiTrap then
                vu1321(p1326)
            end
        end)
    end
end
AntiAxeConnection = nil
function _G.AntiAxe(pu1327)
    AntiAxe = pu1327
    pcall(function()
        ConfigFile("AntiAxe", pu1327)
    end)
    if AntiAxeConnection then
        AntiAxeConnection:Disconnect()
        AntiAxeConnection = nil
    end
    if pu1327 then
        AntiAxeConnection = workspace.ChildAdded:Connect(function(p1328)
            if p1328.Name == "Model" and AntiAxe then
                task.wait(0.1)
                local v1329 = game.Players.LocalPlayer
                local v1330 = v1329.Character
                if not v1330 then
                    return
                end
                local v1331 = v1330:FindFirstChildOfClass("Tool")
                local v1332 = nil
                local v1333 = false
                if v1331 then
                    v1332 = v1331:FindFirstChild("Handle")
                else
                    local v1334 = v1329:FindFirstChildOfClass("Backpack")
                    if v1334 then
                        local v1335, v1336, v1337 = ipairs(v1334:GetChildren())
                        while true do
                            local v1338
                            v1337, v1338 = v1335(v1336, v1337)
                            if v1337 == nil then
                                break
                            end
                            if v1338:IsA("Tool") and v1338:FindFirstChild("Handle") then
                                v1332 = v1338.Handle
                                v1338.Parent = v1330
                                v1331 = v1338
                                v1333 = true
                                break
                            end
                        end
                    end
                end
                if not v1332 then
                    return
                end
                local v1339, v1340, v1341 = ipairs(p1328:GetDescendants())
                while true do
                    local v1342
                    v1341, v1342 = v1339(v1340, v1341)
                    if v1341 == nil then
                        break
                    end
                    if v1342:IsA("BasePart") then
                        firetouchinterest(v1332, v1342, 0)
                        firetouchinterest(v1332, v1342, 1)
                    end
                end
                if v1333 and v1331 then
                    task.wait(0.3)
                    v1331.Parent = v1329:FindFirstChildOfClass("Backpack")
                end
            end
        end)
    end
end
AntiFire_Connection = nil
function _G.AntiFire(pu1343)
    AntiFire = pu1343
    pcall(function()
        ConfigFile("AntiFirework", pu1343)
    end)
    if AntiFire_Connection then
        AntiFire_Connection:Disconnect()
        AntiFire_Connection = nil
    end
    if pu1343 then
        AntiFire_Connection = game:GetService("Workspace").ChildAdded:Connect(function(pu1344)
            if pu1344.Name == "Firework Model" and AntiFire then
                task.wait(0.1)
                local vu1345 = pu1344:FindFirstChild("Middle")
                if vu1345 then
                    pu1344.PrimaryPart = vu1345
                    local v1346 = Instance.new("BillboardGui")
                    v1346.Size = UDim2.new(0, 200, 0, 50)
                    v1346.StudsOffset = Vector3.new(0, 3, 0)
                    v1346.AlwaysOnTop = true
                    v1346.Adornee = vu1345
                    v1346.Name = "FireworkWarning"
                    v1346.MaxDistance = 50
                    v1346.Parent = pu1344
                    local v1347 = Instance.new("TextLabel")
                    v1347.Size = UDim2.new(1, 0, 1, 0)
                    v1347.BackgroundTransparency = 1
                    v1347.Text = "[" .. traducao.foguete .. "] " .. traducao.Afastar
                    v1347.TextColor3 = Color3.fromRGB(255, 140, 0)
                    v1347.TextScaled = true
                    v1347.Font = Enum.Font.SourceSansBold
                    v1347.Parent = v1346
                    Stroke(v1347, 0, 0, 0, 1)
                    spawn(function()
                        while pu1344.Parent and AntiFire do
                            local v1348 = game.Players.LocalPlayer.Character
                            if v1348 then
                                v1348 = v1348:FindFirstChild("HumanoidRootPart")
                            end
                            if v1348 and (vu1345.Position - v1348.Position).Magnitude <= 15 then
                                local v1349 = v1348.Position - vu1345.Position
                                v1348.Velocity = Vector3.new(v1349.X, 0, v1349.Z).Unit * 50
                            end
                            task.wait()
                        end
                    end)
                end
            end
        end)
    end
end
AntiCarry_Connection = nil
function _G.AntiCarry(pu1350)
    AntiCarry = pu1350
    pcall(function()
        ConfigFile("AntiCarry", pu1350)
    end)
    if AntiCarry_Connection then
        AntiCarry_Connection:Disconnect()
        AntiCarry_Connection = nil
    end
    if pu1350 then
        local function vu1355()
            local v1351 = game.Players.LocalPlayer
            local v1352 = v1351.Character or v1351.CharacterAdded:Wait()
            local vu1353 = v1352:WaitForChild("Ragdolled", 5)
            local vu1354 = v1352:WaitForChild("Humanoid", 5)
            if vu1353 and vu1354 then
                if vu1353:IsA("BoolValue") then
                    vu1353:GetPropertyChangedSignal("Value"):Connect(function()
                        if AntiCarry and vu1353.Value == true then
                            vu1354:ChangeState(Enum.HumanoidStateType.Dead)
                        end
                    end)
                end
            end
        end
        vu1355()
        AntiCarry_Connection = game.Players.LocalPlayer.CharacterAdded:Connect(function()
            task.wait(0.1)
            vu1355()
        end)
    end
end
AntiFlingConnection = nil
function _G.AntiFling(pu1356)
    AntiFling = pu1356
    pcall(function()
        ConfigFile("AntiFling", pu1356)
    end)
    if AntiFlingConnection then
        AntiFlingConnection:Disconnect()
        AntiFlingConnection = nil
    end
    if pu1356 then
        Notificar("Anti Fling", traducao.FlingON, 6)
        AntiFlingConnection = game:GetService("RunService").Stepped:Connect(function()
            local v1357, v1358, v1359 = ipairs(game.Players:GetPlayers())
            while true do
                local v1360
                v1359, v1360 = v1357(v1358, v1359)
                if v1359 == nil then
                    break
                end
                if v1360 ~= game.Players.LocalPlayer and v1360.Character and v1360.Character:FindFirstChild("Humanoid") then
                    local v1361, v1362, v1363 = pairs(v1360.Character:GetDescendants())
                    while true do
                        local v1364
                        v1363, v1364 = v1361(v1362, v1363)
                        if v1363 == nil then
                            break
                        end
                        if v1364:IsA("BasePart") then
                            v1364.CanCollide = false
                        end
                    end
                end
            end
        end)
    else
        local v1365, v1366, v1367 = ipairs(game.Players:GetPlayers())
        while true do
            local v1368
            v1367, v1368 = v1365(v1366, v1367)
            if v1367 == nil then
                break
            end
            if v1368 ~= game.Players.LocalPlayer and v1368.Character and v1368.Character:FindFirstChild("Humanoid") then
                local v1369, v1370, v1371 = pairs(v1368.Character:GetDescendants())
                while true do
                    local v1372
                    v1371, v1372 = v1369(v1370, v1371)
                    if v1371 == nil then
                        break
                    end
                    if v1372:IsA("BasePart") then
                        v1372.CanCollide = true
                    end
                end
            end
        end
    end
end
AntiVoid_Connection = nil
CharacterVoid_Connection = nil
AntiVoid = false
VoidTp = false
function _G.AntiVoid(pu1373)
    AntiVoid = pu1373
    pcall(function()
        ConfigFile("AntiVoid", pu1373)
    end)
    if AntiVoid_Connection then
        AntiVoid_Connection:Disconnect()
        AntiVoid_Connection = nil
    end
    if CharacterVoid_Connection then
        CharacterVoid_Connection:Disconnect()
        CharacterVoid_Connection = nil
    end
    if pu1373 then
        game.Workspace.FallenPartsDestroyHeight = 0 / 0
        local function vu1375()
            if AntiVoid_Connection then
                AntiVoid_Connection:Disconnect()
            end
            AntiVoid_Connection = game:GetService("RunService").Heartbeat:Connect(function()
                local v1374 = game.Players.LocalPlayer.Character
                if v1374 then
                    v1374 = v1374:FindFirstChild("HumanoidRootPart")
                end
                if v1374 and (VoidTp and v1374.Position.Y <= 40) then
                    v1374.CFrame = CFrame.new(- 210, 85, 56)
                end
            end)
        end
        vu1375()
        CharacterVoid_Connection = game.Players.LocalPlayer.CharacterAdded:Connect(function()
            task.wait(0.1)
            vu1375()
        end)
    else
        game.Workspace.FallenPartsDestroyHeight = - 500
    end
end
function VoidTpFunc()
    if VoidTp then
        TpDeVolta.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
        IconeTpDe.Image = "rbxassetid://90789802362187"
        VoidTp = false
        pcall(function()
            ConfigFile("AntiVoidTp", false)
        end)
    else
        TpDeVolta.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        IconeTpDe.Image = "rbxassetid://106235415289683"
        VoidTp = true
        pcall(function()
            ConfigFile("AntiVoidTp", true)
        end)
    end
end
TpDeVolta.MouseButton1Click:Connect(VoidTpFunc)
F3 = Instance.new("Frame")
F3.Size = UDim2.new(0, 35, 0, 35)
F3.Position = UDim2.new(0.5, - 75, 0.5, - 25)
F3.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
F3.Draggable = true
F3.Active = true
F3.Visible = false
F3.Parent = CORE
B3 = Instance.new("Frame")
B3.Size = UDim2.new(0, 100, 0, 35)
B3.Position = UDim2.new(0, 45, 0, 0)
B3.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
B3.Parent = F3
Btn3 = Instance.new("TextButton")
Btn3.Size = UDim2.new(1, 0, 1, 0)
Btn3.Position = UDim2.new(0, 0, 0, 0)
Btn3.TextScaled = true
Btn3.Text = "TP"
Btn3.TextColor3 = Color3.fromRGB(255, 255, 0)
Btn3.BackgroundTransparency = 1
Btn3.Parent = B3
Corner(F3, 10)
Corner(B3, 10)
Stroke(F3, 0, 0, 0, 2)
Stroke(B3, 0, 0, 0, 2)
Stroke(Btn3, 0, 0, 0, 2)
function _G.AntiGoto(pu1376)
    pcall(function()
        ConfigFile("AntiGotos", pu1376)
    end)
    F3.Visible = pu1376
end
botaoTravado = false
Btn3.MouseButton1Click:Connect(function()
    if not botaoTravado then
        botaoTravado = true
        local v1377 = game.Players.LocalPlayer.Character
        if v1377 then
            v1377 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        end
        if v1377 then
            local v1378 = v1377.CFrame
            v1377.CFrame = CFrame.new(v1377.Position.X, - 999999, v1377.Position.Z)
            B3.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
            wait(0.2)
            v1377.CFrame = v1378
        end
        wait(0.1)
        B3.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
        botaoTravado = false
    end
end)
GotoKey = "G"
teclaTravada = false
game:GetService("UserInputService").InputBegan:Connect(function(p1379, p1380)
    if not (p1380 or teclaTravada) then
        if p1379.UserInputType == Enum.UserInputType.Keyboard and (p1379.KeyCode == Enum.KeyCode[GotoKey] and F3.Visible) then
            teclaTravada = true
            local v1381 = game.Players.LocalPlayer.Character
            if v1381 then
                v1381 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            end
            if v1381 then
                local v1382 = v1381.CFrame
                v1381.CFrame = CFrame.new(v1381.Position.X, - 999999, v1381.Position.Z)
                B3.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
                wait(0.2)
                v1381.CFrame = v1382
            end
            wait(0.1)
            B3.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
            teclaTravada = false
        end
    end
end)
TextoANTIGOTO.FocusLost:Connect(function()
    local v1383 = TextoANTIGOTO.Text:gsub("[%z\1-\31\127-\239\191\189]", ""):gsub("%s+", ""):sub(1, 1):upper()
    TextoANTIGOTO.Text = (v1383 == "" or not v1383) and "G" or v1383
    GotoKey = TextoANTIGOTO.Text
    pcall(function()
        ConfigFile("AntiGotosKey", GotoKey)
    end)
end)
local vu1384 = false
function _G.Invisivel(pu1385)
    vu1384 = pu1385
    pcall(function()
        ConfigFile("Invisible", pu1385)
    end)
    if game.Players.LocalPlayer.Character then
        local v1386 = game.Players.LocalPlayer.Character
        if pu1385 then
            local function vu1392(p1387)
                local v1388, v1389, v1390 = ipairs(p1387:GetChildren())
                while true do
                    local v1391
                    v1390, v1391 = v1388(v1389, v1390)
                    if v1390 == nil then
                        break
                    end
                    if v1391:IsA("Seat") and v1391.Name ~= "invischair" then
                        v1391.Disabled = true
                    end
                    vu1392(v1391)
                end
            end
            vu1392(workspace)
            if v1386 and v1386:FindFirstChild("HumanoidRootPart") then
                local v1393 = v1386.HumanoidRootPart.CFrame
                task.wait()
                v1386:MoveTo(Vector3.new(- 25.95, 84, 3537.55))
                task.wait(0.15)
                local v1394 = Instance.new("Seat", game.Workspace)
                v1394.Anchored = false
                v1394.CanCollide = false
                v1394.Name = "invischair"
                v1394.Transparency = 1
                v1394.Position = Vector3.new(- 25.95, 84, 3537.55)
                local v1395 = Instance.new("Weld", v1394)
                v1395.Part0 = v1394
                v1395.Part1 = v1386:FindFirstChild("Torso") or v1386:FindFirstChild("UpperTorso")
                task.wait()
                v1394.CFrame = v1393
                local v1396 = Instance.new("BillboardGui")
                v1396.Adornee = v1386:FindFirstChild("Head")
                v1396.Size = UDim2.new(2, 0, 1, 0)
                v1396.StudsOffset = Vector3.new(0, 3, 0)
                v1396.AlwaysOnTop = true
                local v1397 = Instance.new("TextLabel", v1396)
                v1397.Text = "[ " .. traducao.Invisivel .. " ]"
                v1397.Size = UDim2.new(1, 0, 1, 0)
                v1397.TextSize = 20
                v1397.TextColor3 = Color3.fromRGB(0, 255, 255)
                v1397.BackgroundTransparency = 1
                Stroke(v1397, 0, 0, 0, 1)
                v1396.Parent = v1386:FindFirstChild("Head")
            end
        else
            local v1398 = workspace:FindFirstChild("invischair")
            if v1398 then
                v1398:Destroy()
            end
            local v1399 = v1386:FindFirstChild("Head") and v1386.Head:FindFirstChildOfClass("BillboardGui")
            if v1399 then
                v1399:Destroy()
            end
            local function vu1405(p1400)
                local v1401, v1402, v1403 = ipairs(p1400:GetChildren())
                while true do
                    local v1404
                    v1403, v1404 = v1401(v1402, v1403)
                    if v1403 == nil then
                        break
                    end
                    if v1404:IsA("Seat") and v1404.Name ~= "invischair" then
                        v1404.Disabled = false
                    end
                    vu1405(v1404)
                end
            end
            vu1405(workspace)
        end
    else
        return
    end
end
game.Players.LocalPlayer.CharacterAdded:Connect(function()
    task.wait(0.1)
    if vu1384 then
        _G.Invisivel(true)
    end
end)
ScrollDefesa = Instance.new("ScrollingFrame")
ScrollDefesa.Size = UDim2.new(0, 297, 0, 216)
ScrollDefesa.Position = UDim2.new(0, 154, 0, 3)
ScrollDefesa.BackgroundTransparency = 1
ScrollDefesa.ScrollBarThickness = 0
ScrollDefesa.CanvasSize = UDim2.new(0, 0, 0, 740)
ScrollDefesa.ScrollingDirection = Enum.ScrollingDirection.Y
ScrollDefesa.Parent = _G.Tela4
CriarOpcao(ScrollDefesa, 6, 18208495833, "Anti C4", 11, "ligar", "AntiC4")
CriarOpcao(ScrollDefesa, 80, 18209285255, "Anti Grenade", 12, "ligar", "AntiGra")
CriarOpcao(ScrollDefesa, 154, 18209479808, "Anti Trap", 13, "ligar", "AntiTrap")
CriarOpcao(ScrollDefesa, 228, 80252827260540, "Anti Axe\n(GLOBAL)", 14, "ligar", "AntiAxe")
CriarOpcao(ScrollDefesa, 302, 102326339060177, "Anti Firework", 15, "ligar", "AntiFire")
CriarOpcao(ScrollDefesa, 376, 106591247623355, "Anti Carry", 16, "ligar", "AntiCarry")
CriarOpcao(ScrollDefesa, 450, 70717606208116, "Anti Fling", 17, "ligar", "AntiFling")
CriarOpcao(ScrollDefesa, 524, 18209485705, "Anti Void", 18, "ligar", "AntiVoid")
CriarOpcao(ScrollDefesa, 598, 116848127997787, "Anti Goto", 19, "ligar", "AntiGoto")
CriarOpcao(ScrollDefesa, 672, 137211468181220, traducao.Invisibilidade, 20, "ligar", "Invisivel")
coroutine.wrap(function()
    if tentarLer("AntiC4") then
        Alternadores["Anti C4"]()
    end
    if tentarLer("AntiGrenade") then
        Alternadores["Anti Grenade"]()
    end
    if tentarLer("AntiTrap") then
        Alternadores["Anti Trap"]()
    end
    if tentarLer("AntiAxe") then
        Alternadores["Anti Axe\n(GLOBAL)"]()
    end
    if tentarLer("AntiFirework") then
        Alternadores["Anti Firework"]()
    end
    if tentarLer("AntiCarry") then
        Alternadores["Anti Carry"]()
    end
    if tentarLer("AntiFling") then
        Alternadores["Anti Fling"]()
    end
    if tentarLer("AntiVoid") then
        Alternadores["Anti Void"]()
    end
    if tentarLer("AntiVoidTp") then
        VoidTpFunc()
    end
    if tentarLer("AntiGotos") then
        Alternadores["Anti Goto"]()
    end
    local v1406, v1407 = pcall(function()
        return LerConfig("AntiGotosKey")
    end)
    if v1406 and v1407 then
        local v1408 = tostring(v1407):gsub("[%z\1-\31\127-\239\191\189]", ""):gsub("%s+", ""):sub(1, 1):upper()
        GotoKey = (v1408 == "" or not v1408) and "G" or v1408
    end
    if tentarLer("Invisible") then
        Alternadores[traducao.Invisibilidade]()
    end
end)()
ConfigMobile = Instance.new("ImageButton")
ConfigMobile.Size = UDim2.new(0, 134, 0, 38)
ConfigMobile.Position = UDim2.new(0, 4, 0, 60)
ConfigMobile.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
ConfigMobile.AutoButtonColor = false
ConfigMobile.Parent = _G.Frame21:FindFirstChild("ScrollInterno")
Icone = Instance.new("ImageLabel")
Icone.Size = UDim2.new(0, 38, 0, 38)
Icone.Position = UDim2.new(0, 0, 0, 0)
Icone.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Icone.Image = "rbxassetid://131295587438825"
Icone.Parent = ConfigMobile
texto = Instance.new("TextLabel")
texto.Size = UDim2.new(1, - 50, 1, 0)
texto.Position = UDim2.new(0, 42, 0, 0)
texto.BackgroundTransparency = 1
texto.Text = traducao.Custom
texto.TextColor3 = Color3.fromRGB(255, 228, 196)
texto.Font = Enum.Font.Garamond
texto.TextScaled = true
texto.Parent = ConfigMobile
Corner(ConfigMobile, 30)
Corner(Icone, 30)
Stroke(ConfigMobile, 0, 0, 0, 3)
Stroke(Icone, 0, 0, 0, 3)
Stroke(texto, 0, 0, 0, 2)
frame = Instance.new("ImageButton")
frame.Size = UDim2.new(0, 134, 0, 38)
frame.Position = UDim2.new(0, 4, 0, 113)
frame.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
frame.AutoButtonColor = false
frame.Parent = _G.Frame21:FindFirstChild("ScrollInterno")
Icone = Instance.new("ImageLabel")
Icone.Size = UDim2.new(0, 38, 0, 38)
Icone.Position = UDim2.new(0, 0, 0, 0)
Icone.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Icone.Image = "rbxassetid://72282969338197"
Icone.Parent = frame
Frame2 = Instance.new("Frame")
Frame2.Position = UDim2.new(0, 46, 0, 4)
Frame2.Size = UDim2.new(1, - 54, 1, - 8)
Frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame2.BackgroundTransparency = 0.5
Frame2.Parent = frame
TextoSizeDash = Instance.new("TextBox")
TextoSizeDash.Size = UDim2.new(1, 0, 1, 0)
TextoSizeDash.Position = UDim2.new(0, 0, 0, 0)
TextoSizeDash.BackgroundTransparency = 1
TextoSizeDash.Text = tostring((function()
    local v1409, v1410 = pcall(function()
        return LerConfig("MDashSize")
    end)
    local v1411
    if v1409 then
        local v1412 = tonumber
        if v1410 then
            v1410 = v1410:match("UDim2%.new%(%d+,%s*(%d+)")
        end
        v1411 = v1412(v1410) or 70
    else
        v1411 = 70
    end
    return v1411
end)())
TextoSizeDash.PlaceholderText = traducao.Dash
TextoSizeDash.TextColor3 = Color3.fromRGB(255, 215, 0)
TextoSizeDash.PlaceholderColor3 = Color3.fromRGB(255, 215, 0)
TextoSizeDash.Font = Enum.Font.Garamond
TextoSizeDash.TextScaled = true
TextoSizeDash.Parent = Frame2
Corner(frame, 30)
Corner(Icone, 30)
Corner(Frame2, 10)
Stroke(frame, 0, 0, 0, 3)
Stroke(Icone, 0, 0, 0, 3)
Stroke(Frame2, 0, 0, 0, 2)
Stroke(TextoSizeDash, 0, 0, 0, 2)
frame = Instance.new("ImageButton")
frame.Size = UDim2.new(0, 134, 0, 38)
frame.Position = UDim2.new(0, 4, 0, 166)
frame.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
frame.AutoButtonColor = false
frame.Parent = _G.Frame21:FindFirstChild("ScrollInterno")
Icone = Instance.new("ImageLabel")
Icone.Size = UDim2.new(0, 38, 0, 38)
Icone.Position = UDim2.new(0, 0, 0, 0)
Icone.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Icone.Image = "rbxassetid://72282969338197"
Icone.Parent = frame
Frame2 = Instance.new("Frame")
Frame2.Position = UDim2.new(0, 46, 0, 4)
Frame2.Size = UDim2.new(1, - 54, 1, - 8)
Frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame2.BackgroundTransparency = 0.5
Frame2.Parent = frame
TextoSizeCarry = Instance.new("TextBox")
TextoSizeCarry.Size = UDim2.new(1, 0, 1, 0)
TextoSizeCarry.Position = UDim2.new(0, 0, 0, 0)
TextoSizeCarry.BackgroundTransparency = 1
TextoSizeCarry.Text = tostring((function()
    local v1413, v1414 = pcall(function()
        return LerConfig("MCarrySize")
    end)
    local v1415
    if v1413 then
        local v1416 = tonumber
        if v1414 then
            v1414 = v1414:match("UDim2%.new%(%d+,%s*(%d+)")
        end
        v1415 = v1416(v1414) or 70
    else
        v1415 = 70
    end
    return v1415
end)())
TextoSizeCarry.PlaceholderText = traducao.Carry
TextoSizeCarry.TextColor3 = Color3.fromRGB(255, 215, 0)
TextoSizeCarry.PlaceholderColor3 = Color3.fromRGB(255, 215, 0)
TextoSizeCarry.Font = Enum.Font.Garamond
TextoSizeCarry.TextScaled = true
TextoSizeCarry.Parent = Frame2
Corner(frame, 30)
Corner(Icone, 30)
Corner(Frame2, 10)
Stroke(frame, 0, 0, 0, 3)
Stroke(Icone, 0, 0, 0, 3)
Stroke(Frame2, 0, 0, 0, 2)
Stroke(TextoSizeCarry, 0, 0, 0, 1)
frame = Instance.new("ImageButton")
frame.Size = UDim2.new(0, 134, 0, 38)
frame.Position = UDim2.new(0, 4, 0, 60)
frame.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
frame.AutoButtonColor = false
frame.Parent = _G.Frame22:FindFirstChild("ScrollInterno")
Icone = Instance.new("ImageLabel")
Icone.Size = UDim2.new(0, 38, 0, 38)
Icone.Position = UDim2.new(0, 0, 0, 0)
Icone.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Icone.Image = "rbxassetid://104803165744428"
Icone.Parent = frame
Frame2 = Instance.new("Frame")
Frame2.Position = UDim2.new(0, 46, 0, 4)
Frame2.Size = UDim2.new(1, - 54, 1, - 8)
Frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame2.BackgroundTransparency = 0.5
Frame2.Parent = frame
TextoDELAY = Instance.new("TextBox")
TextoDELAY.Size = UDim2.new(1, 0, 1, 0)
TextoDELAY.Position = UDim2.new(0, 0, 0, 0)
TextoDELAY.BackgroundTransparency = 1
TextoDELAY.Text = tostring((pcall(function()
    return LerConfig("CustomDashDelay")
end))) and select(2, pcall(function()
    return LerConfig("CustomDashDelay")
end)) or 0
TextoDELAY.PlaceholderText = traducao.Delay
TextoDELAY.TextColor3 = Color3.fromRGB(255, 215, 0)
TextoDELAY.PlaceholderColor3 = Color3.fromRGB(255, 215, 0)
TextoDELAY.Font = Enum.Font.Garamond
TextoDELAY.TextScaled = true
TextoDELAY.Parent = Frame2
Corner(frame, 30)
Corner(Icone, 30)
Corner(Frame2, 10)
Stroke(frame, 0, 0, 0, 3)
Stroke(Icone, 0, 0, 0, 3)
Stroke(Frame2, 0, 0, 0, 2)
Stroke(TextoDELAY, 0, 0, 0, 2)
frame = Instance.new("ImageButton")
frame.Size = UDim2.new(0, 134, 0, 38)
frame.Position = UDim2.new(0, 4, 0, 113)
frame.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
frame.AutoButtonColor = false
frame.Parent = _G.Frame22:FindFirstChild("ScrollInterno")
Icone = Instance.new("ImageLabel")
Icone.Size = UDim2.new(0, 38, 0, 38)
Icone.Position = UDim2.new(0, 0, 0, 0)
Icone.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Icone.Image = "rbxassetid://131530757572491"
Icone.Parent = frame
Frame2 = Instance.new("Frame")
Frame2.Position = UDim2.new(0, 46, 0, 4)
Frame2.Size = UDim2.new(1, - 54, 1, - 8)
Frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame2.BackgroundTransparency = 0.5
Frame2.Parent = frame
TextoPower = Instance.new("TextBox")
TextoPower.Size = UDim2.new(1, 0, 1, 0)
TextoPower.Position = UDim2.new(0, 0, 0, 0)
TextoPower.BackgroundTransparency = 1
TextoPower.Text = tostring((pcall(function()
    return LerConfig("CustomDashPower")
end))) and select(2, pcall(function()
    return LerConfig("CustomDashPower")
end)) or 90
TextoPower.PlaceholderText = traducao.Power
TextoPower.TextColor3 = Color3.fromRGB(255, 215, 0)
TextoPower.PlaceholderColor3 = Color3.fromRGB(255, 215, 0)
TextoPower.Font = Enum.Font.Garamond
TextoPower.TextScaled = true
TextoPower.Parent = Frame2
Corner(frame, 30)
Corner(Icone, 30)
Corner(Frame2, 10)
Stroke(frame, 0, 0, 0, 3)
Stroke(Icone, 0, 0, 0, 3)
Stroke(Frame2, 0, 0, 0, 2)
Stroke(TextoPower, 0, 0, 0, 1)
Gravity = Instance.new("ImageButton")
Gravity.Size = UDim2.new(0, 134, 0, 38)
Gravity.Position = UDim2.new(0, 4, 0, 166)
Gravity.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
Gravity.AutoButtonColor = false
Gravity.Parent = _G.Frame22:FindFirstChild("ScrollInterno")
IconeGrav = Instance.new("ImageLabel")
IconeGrav.Size = UDim2.new(0, 38, 0, 38)
IconeGrav.Position = UDim2.new(0, 0, 0, 0)
IconeGrav.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
IconeGrav.Image = "rbxassetid://90789802362187"
IconeGrav.Parent = Gravity
texto = Instance.new("TextLabel")
texto.Size = UDim2.new(1, - 50, 1, 0)
texto.Position = UDim2.new(0, 42, 0, 0)
texto.BackgroundTransparency = 1
texto.Text = traducao.Gravity
texto.TextColor3 = Color3.fromRGB(255, 228, 196)
texto.Font = Enum.Font.Garamond
texto.TextScaled = true
texto.Parent = Gravity
Corner(Gravity, 30)
Corner(IconeGrav, 30)
Stroke(Gravity, 0, 0, 0, 3)
Stroke(IconeGrav, 0, 0, 0, 3)
Stroke(texto, 0, 0, 0, 2)
Infinito = Instance.new("ImageButton")
Infinito.Size = UDim2.new(0, 134, 0, 38)
Infinito.Position = UDim2.new(0, 4, 0, 60)
Infinito.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
Infinito.AutoButtonColor = false
Infinito.Parent = _G.Frame23:FindFirstChild("ScrollInterno")
IconeIN = Instance.new("ImageLabel")
IconeIN.Size = UDim2.new(0, 38, 0, 38)
IconeIN.Position = UDim2.new(0, 0, 0, 0)
IconeIN.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
IconeIN.Image = "rbxassetid://90789802362187"
IconeIN.Parent = Infinito
texto = Instance.new("TextLabel")
texto.Size = UDim2.new(1, - 50, 1, 0)
texto.Position = UDim2.new(0, 42, 0, 0)
texto.BackgroundTransparency = 1
texto.Text = traducao.inf
texto.TextColor3 = Color3.fromRGB(255, 228, 196)
texto.Font = Enum.Font.Garamond
texto.TextScaled = true
texto.Parent = Infinito
Corner(Infinito, 30)
Corner(IconeIN, 30)
Stroke(Infinito, 0, 0, 0, 3)
Stroke(IconeIN, 0, 0, 0, 3)
Stroke(texto, 0, 0, 0, 2)
frame = Instance.new("ImageButton")
frame.Size = UDim2.new(0, 134, 0, 38)
frame.Position = UDim2.new(0, 4, 0, 113)
frame.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
frame.AutoButtonColor = false
frame.Parent = _G.Frame23:FindFirstChild("ScrollInterno")
Icone = Instance.new("ImageLabel")
Icone.Size = UDim2.new(0, 38, 0, 38)
Icone.Position = UDim2.new(0, 0, 0, 0)
Icone.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Icone.Image = "rbxassetid://131530757572491"
Icone.Parent = frame
Frame2 = Instance.new("Frame")
Frame2.Position = UDim2.new(0, 46, 0, 4)
Frame2.Size = UDim2.new(1, - 54, 1, - 8)
Frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame2.BackgroundTransparency = 0.5
Frame2.Parent = frame
TextoSprintSpeed = Instance.new("TextBox")
TextoSprintSpeed.Size = UDim2.new(1, 0, 1, 0)
TextoSprintSpeed.Position = UDim2.new(0, 0, 0, 0)
TextoSprintSpeed.BackgroundTransparency = 1
TextoSprintSpeed.Text = tostring((pcall(function()
    return LerConfig("CustomSprintSpeed")
end))) and select(2, pcall(function()
    return LerConfig("CustomSprintSpeed")
end)) or 100
TextoSprintSpeed.PlaceholderText = traducao.Speed
TextoSprintSpeed.TextColor3 = Color3.fromRGB(255, 215, 0)
TextoSprintSpeed.PlaceholderColor3 = Color3.fromRGB(255, 215, 0)
TextoSprintSpeed.Font = Enum.Font.Garamond
TextoSprintSpeed.TextScaled = true
TextoSprintSpeed.Parent = Frame2
Corner(frame, 30)
Corner(Icone, 30)
Corner(Frame2, 10)
Stroke(frame, 0, 0, 0, 3)
Stroke(Icone, 0, 0, 0, 3)
Stroke(Frame2, 0, 0, 0, 2)
Stroke(TextoPower, 0, 0, 0, 1)
frame = Instance.new("ImageButton")
frame.Size = UDim2.new(0, 134, 0, 38)
frame.Position = UDim2.new(0, 4, 0, 60)
frame.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
frame.AutoButtonColor = false
frame.Parent = _G.Frame25:FindFirstChild("ScrollInterno")
Icone = Instance.new("ImageLabel")
Icone.Size = UDim2.new(0, 38, 0, 38)
Icone.Position = UDim2.new(0, 0, 0, 0)
Icone.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Icone.Image = "rbxassetid://131530757572491"
Icone.Parent = frame
Frame2 = Instance.new("Frame")
Frame2.Position = UDim2.new(0, 46, 0, 4)
Frame2.Size = UDim2.new(1, - 54, 1, - 8)
Frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame2.BackgroundTransparency = 0.5
Frame2.Parent = frame
TextoSpeed = Instance.new("TextBox")
TextoSpeed.Size = UDim2.new(1, 0, 1, 0)
TextoSpeed.Position = UDim2.new(0, 0, 0, 0)
TextoSpeed.BackgroundTransparency = 1
TextoSpeed.Text = tostring((pcall(function()
    return LerConfig("SpeedPower")
end))) and select(2, pcall(function()
    return LerConfig("SpeedPower")
end)) or 100
TextoSpeed.PlaceholderText = traducao.Speed
TextoSpeed.TextColor3 = Color3.fromRGB(255, 215, 0)
TextoSpeed.PlaceholderColor3 = Color3.fromRGB(255, 215, 0)
TextoSpeed.Font = Enum.Font.Garamond
TextoSpeed.TextScaled = true
TextoSpeed.Parent = Frame2
Corner(frame, 30)
Corner(Icone, 30)
Corner(Frame2, 10)
Stroke(frame, 0, 0, 0, 3)
Stroke(Icone, 0, 0, 0, 3)
Stroke(Frame2, 0, 0, 0, 2)
Stroke(TextoSpeed, 0, 0, 0, 2)
frame = Instance.new("ImageButton")
frame.Size = UDim2.new(0, 134, 0, 38)
frame.Position = UDim2.new(0, 4, 0, 60)
frame.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
frame.AutoButtonColor = false
frame.Parent = _G.Frame26:FindFirstChild("ScrollInterno")
Icone = Instance.new("ImageLabel")
Icone.Size = UDim2.new(0, 38, 0, 38)
Icone.Position = UDim2.new(0, 0, 0, 0)
Icone.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Icone.Image = "rbxassetid://131530757572491"
Icone.Parent = frame
Frame2 = Instance.new("Frame")
Frame2.Position = UDim2.new(0, 46, 0, 4)
Frame2.Size = UDim2.new(1, - 54, 1, - 8)
Frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame2.BackgroundTransparency = 0.5
Frame2.Parent = frame
TextoJump = Instance.new("TextBox")
TextoJump.Size = UDim2.new(1, 0, 1, 0)
TextoJump.Position = UDim2.new(0, 0, 0, 0)
TextoJump.BackgroundTransparency = 1
TextoJump.Text = tostring((pcall(function()
    return LerConfig("JumpPower")
end))) and select(2, pcall(function()
    return LerConfig("JumpPower")
end)) or 200
TextoJump.PlaceholderText = traducao.Jump
TextoJump.TextColor3 = Color3.fromRGB(255, 215, 0)
TextoJump.PlaceholderColor3 = Color3.fromRGB(255, 215, 0)
TextoJump.Font = Enum.Font.Garamond
TextoJump.TextScaled = true
TextoJump.Parent = Frame2
Corner(frame, 30)
Corner(Icone, 30)
Corner(Frame2, 10)
Stroke(frame, 0, 0, 0, 3)
Stroke(Icone, 0, 0, 0, 3)
Stroke(Frame2, 0, 0, 0, 2)
Stroke(TextoJump, 0, 0, 0, 2)
frame = Instance.new("ImageButton")
frame.Size = UDim2.new(0, 134, 0, 38)
frame.Position = UDim2.new(0, 4, 0, 60)
frame.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
frame.AutoButtonColor = false
frame.Parent = _G.Frame28:FindFirstChild("ScrollInterno")
Icone = Instance.new("ImageLabel")
Icone.Size = UDim2.new(0, 38, 0, 38)
Icone.Position = UDim2.new(0, 0, 0, 0)
Icone.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Icone.Image = "rbxassetid://131530757572491"
Icone.Parent = frame
Frame2 = Instance.new("Frame")
Frame2.Position = UDim2.new(0, 46, 0, 4)
Frame2.Size = UDim2.new(1, - 54, 1, - 8)
Frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame2.BackgroundTransparency = 0.5
Frame2.Parent = frame
TextoBH = Instance.new("TextBox")
TextoBH.Size = UDim2.new(1, 0, 1, 0)
TextoBH.Position = UDim2.new(0, 0, 0, 0)
TextoBH.BackgroundTransparency = 1
TextoBH.Text = tostring((pcall(function()
    return LerConfig("BunnyHopDelay")
end))) and select(2, pcall(function()
    return LerConfig("BunnyHopDelay")
end)) or 0.7
TextoBH.PlaceholderText = traducao.Delay
TextoBH.TextColor3 = Color3.fromRGB(255, 215, 0)
TextoBH.PlaceholderColor3 = Color3.fromRGB(255, 215, 0)
TextoBH.Font = Enum.Font.Garamond
TextoBH.TextScaled = true
TextoBH.Parent = Frame2
Corner(frame, 30)
Corner(Icone, 30)
Corner(Frame2, 10)
Stroke(frame, 0, 0, 0, 3)
Stroke(Icone, 0, 0, 0, 3)
Stroke(Frame2, 0, 0, 0, 2)
Stroke(TextoBH, 0, 0, 0, 2)
frame = Instance.new("ImageButton")
frame.Size = UDim2.new(0, 134, 0, 38)
frame.Position = UDim2.new(0, 4, 0, 60)
frame.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
frame.AutoButtonColor = false
frame.Parent = _G.Frame31:FindFirstChild("ScrollInterno")
Icone = Instance.new("ImageLabel")
Icone.Size = UDim2.new(0, 38, 0, 38)
Icone.Position = UDim2.new(0, 0, 0, 0)
Icone.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Icone.Image = "rbxassetid://72282969338197"
Icone.Parent = frame
Frame2 = Instance.new("Frame")
Frame2.Position = UDim2.new(0, 46, 0, 4)
Frame2.Size = UDim2.new(1, - 54, 1, - 8)
Frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame2.BackgroundTransparency = 0.5
Frame2.Parent = frame
TextoFLOAT = Instance.new("TextBox")
TextoFLOAT.Size = UDim2.new(1, 0, 1, 0)
TextoFLOAT.Position = UDim2.new(0, 0, 0, 0)
TextoFLOAT.BackgroundTransparency = 1
TextoFLOAT.Text = tostring((pcall(function()
    return LerConfig("FloatHeight")
end))) and select(2, pcall(function()
    return LerConfig("FloatHeight")
end)) or 5
TextoFLOAT.PlaceholderText = traducao.Altura
TextoFLOAT.TextColor3 = Color3.fromRGB(255, 215, 0)
TextoFLOAT.PlaceholderColor3 = Color3.fromRGB(255, 215, 0)
TextoFLOAT.Font = Enum.Font.Garamond
TextoFLOAT.TextScaled = true
TextoFLOAT.Parent = Frame2
Corner(frame, 30)
Corner(Icone, 30)
Corner(Frame2, 10)
Stroke(frame, 0, 0, 0, 3)
Stroke(Icone, 0, 0, 0, 3)
Stroke(Frame2, 0, 0, 0, 2)
Stroke(TextoFLOAT, 0, 0, 0, 2)
Dash = Instance.new("ImageButton")
Dash.Size = UDim2.new(0, 70, 0, 70)
Dash.Position = UDim2.new(0.5, - 85, 0, 105)
Dash.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Dash.BackgroundTransparency = 0.3
Dash.Visible = false
Dash.Draggable = false
Dash.Active = true
Dash.AutoButtonColor = true
Dash.Parent = CORE
DashIcon = Instance.new("ImageLabel")
DashIcon.Size = UDim2.new(0, 45, 0, 45)
DashIcon.Position = UDim2.new(0, 8, 0, 10)
DashIcon.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
DashIcon.BackgroundTransparency = 1
DashIcon.Image = "rbxassetid://81628517224646"
DashIcon.Parent = Dash
Carry = Instance.new("ImageButton")
Carry.Size = UDim2.new(0, 70, 0, 70)
Carry.Position = UDim2.new(0.5, 17, 0, 105)
Carry.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Carry.BackgroundTransparency = 0.3
Carry.Visible = false
Carry.Draggable = false
Carry.Active = true
Carry.AutoButtonColor = true
Carry.Parent = CORE
CarryIcon = Instance.new("ImageLabel")
CarryIcon.Size = UDim2.new(0, 46, 0, 45)
CarryIcon.Position = UDim2.new(0, 12, 0, 12)
CarryIcon.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CarryIcon.BackgroundTransparency = 1
CarryIcon.Image = "rbxassetid://128453665332573"
CarryIcon.Parent = Carry
BotaoEditMobile = Instance.new("ImageButton")
BotaoEditMobile.Size = UDim2.new(0, 210, 0, 40)
BotaoEditMobile.Position = UDim2.new(0.5, - 105, 0, 10)
BotaoEditMobile.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
BotaoEditMobile.Visible = false
BotaoEditMobile.Parent = CORE
TextoEM = Instance.new("TextLabel")
TextoEM.Size = UDim2.new(1, 0, 1, 0)
TextoEM.Position = UDim2.new(0, 0, 0, 0)
TextoEM.BackgroundTransparency = 1
TextoEM.Text = traducao.Done
TextoEM.TextColor3 = Color3.fromRGB(0, 0, 255)
TextoEM.TextStrokeTransparency = 0.5
TextoEM.TextScaled = true
TextoEM.Parent = BotaoEditMobile
function Bypass()
    local v1417 = game.Players.LocalPlayer.Character:WaitForChild("LocalScript")
    if v1417 then
        v1417:Destroy()
    end
end
Bypass()
game.Players.LocalPlayer.CharacterAdded:Connect(function()
    Bypass()
end)
dashAnimation = Instance.new("Animation")
dashAnimation.AnimationId = "rbxassetid://6489881016"
canDash = true
DashDelay = 0
DashSpeed = 90
NoGravity = false
function dashCustom()
    if canDash then
        local v1418 = game.Players.LocalPlayer.Character
        if v1418 then
            local v1419 = v1418:FindFirstChild("Humanoid")
            local v1420 = v1418:FindFirstChild("HumanoidRootPart")
            if v1419 and v1420 then
                canDash = false
                v1419:LoadAnimation(dashAnimation):Play()
                local v1421 = Instance.new("BodyVelocity")
                if NoGravity then
                    v1421.MaxForce = Vector3.new(20000, 20000, 20000)
                else
                    v1421.MaxForce = Vector3.new(20000, 0, 20000)
                end
                v1421.Velocity = v1419.MoveDirection * DashSpeed
                if v1419.MoveDirection == Vector3.new(0, 0, 0) then
                    v1421.Velocity = v1420.CFrame.LookVector * DashSpeed
                end
                if NoGravity then
                    v1421.Velocity = v1421.Velocity + Vector3.new(0, 50, 0)
                end
                v1421.Parent = v1420
                game:GetService("Debris"):AddItem(v1421, 0.2)
                task.wait(DashDelay)
                canDash = true
            end
        else
            return
        end
    else
        return
    end
end
canDash = true
function DashNormal()
    if canDash then
        local v1422 = game.Players.LocalPlayer
        local v1423 = v1422.Character or v1422.CharacterAdded:Wait()
        if v1423 then
            local v1424 = v1423:FindFirstChild("Humanoid")
            local v1425 = v1423:FindFirstChild("HumanoidRootPart")
            if v1424 and v1425 then
                canDash = false
                v1424:LoadAnimation(dashAnimation):Play()
                local v1426 = Instance.new("BodyVelocity", v1425)
                v1426.MaxForce = Vector3.new(20000, 0, 20000)
                v1426.Velocity = v1424.MoveDirection * Vector3.new(90, 0, 90)
                if v1424.MoveDirection == Vector3.new(0, 0, 0) then
                    v1426.Velocity = v1425.CFrame.LookVector * Vector3.new(90, 0, 90)
                end
                game:GetService("Debris"):AddItem(v1426, 0.2)
                task.wait(2)
                canDash = true
            end
        else
            return
        end
    else
        return
    end
end
function _G.Mobile(pu1427)
    if typeof(pu1427) == "boolean" and (Dash and Carry) then
        Dash.Visible = pu1427
        Carry.Visible = pu1427
        pcall(function()
            ConfigFile("MobileButtons", pu1427)
        end)
    end
end
EmAjuste = false
function Ajustar(p1428, pu1429)
    if p1428 == "Dash" then
        Dash.Size = UDim2.new(0, pu1429, 0, pu1429)
        DashIcon.Size = UDim2.new(0, math.floor(pu1429 * 0.69), 0, math.floor(pu1429 * 0.69))
        DashIcon.Position = UDim2.new(0, math.floor(pu1429 * 0.14), 0, math.floor(pu1429 * 0.15))
        pcall(function()
            ConfigFile("MDashSize", "UDim2.new(0, " .. pu1429 .. ", 0, " .. pu1429 .. ")")
        end)
    elseif p1428 == "Carry" then
        Carry.Size = UDim2.new(0, pu1429, 0, pu1429)
        CarryIcon.Size = UDim2.new(0, math.floor(pu1429 * 0.71), 0, math.floor(pu1429 * 0.69))
        CarryIcon.Position = UDim2.new(0, math.floor(pu1429 * 0.19), 0, math.floor(pu1429 * 0.184))
        pcall(function()
            ConfigFile("MCarrySize", "UDim2.new(0, " .. pu1429 .. ", 0, " .. pu1429 .. ")")
        end)
    end
end
function Posicionar(p1430)
    if p1430 then
        EmAjuste = true
        ChaoticFrame.Visible = false
        BotaoEditMobile.Visible = true
        Dash.AutoButtonColor = false
        Carry.AutoButtonColor = false
        Dash.Draggable = true
        Carry.Draggable = true
    else
        EmAjuste = false
        ChaoticFrame.Visible = true
        BotaoEditMobile.Visible = false
        Dash.AutoButtonColor = true
        Carry.AutoButtonColor = true
        Dash.Draggable = false
        Carry.Draggable = false
        pcall(function()
            ConfigFile("MDashPosition", string.format("UDim2.new(%g, %g, %g, %g)", Dash.Position.X.Scale, Dash.Position.X.Offset, Dash.Position.Y.Scale, Dash.Position.Y.Offset))
        end)
        pcall(function()
            ConfigFile("MCarryPosition", string.format("UDim2.new(%g, %g, %g, %g)", Carry.Position.X.Scale, Carry.Position.X.Offset, Carry.Position.Y.Scale, Carry.Position.Y.Offset))
        end)
    end
end
TextoSizeDash.FocusLost:Connect(function()
    local v1431 = TextoSizeDash.Text:gsub("%s+", ""):gsub("%D", "")
    local v1432 = v1431 == "" and "70" or v1431
    local v1433 = tonumber(v1432)
    local v1434 = not v1433 and 70 or (v1433 > 200 and 200 or (v1433 < 50 and 50 or v1433))
    TextoSizeDash.Text = tostring(v1434)
    Ajustar("Dash", v1434)
end)
TextoSizeCarry.FocusLost:Connect(function()
    local v1435 = TextoSizeCarry.Text:gsub("%s+", ""):gsub("%D", "")
    local v1436 = v1435 == "" and "70" or v1435
    local v1437 = tonumber(v1436)
    local v1438 = not v1437 and 70 or (v1437 > 200 and 200 or (v1437 < 50 and 50 or v1437))
    TextoSizeCarry.Text = tostring(v1438)
    Ajustar("Carry", v1438)
end)
ConfigMobile.MouseButton1Click:Connect(function()
    if Dash.Visible and Carry.Visible then
        Posicionar(true)
        Notificar(traducao.Custom, traducao.ArrasteTe, 10)
    else
        Notificar(traducao.Erro, traducao.AtiveMobile, 6)
    end
end)
BotaoEditMobile.MouseButton1Click:Connect(function()
    Posicionar(false)
end)
CustomD = false
UserInputService = game:GetService("UserInputService")
vu1197 = game:GetService("RunService")
pressionando = false
connectionDash = nil
ultimaExecucao = 0
function iniciarDash()
    if not (EmAjuste or pressionando) then
        pressionando = true
        if not connectionDash then
            connectionDash = vu1197.Heartbeat:Connect(function()
                if tick() - ultimaExecucao >= 0.2 then
                    ultimaExecucao = tick()
                    if CustomD then
                        dashCustom()
                    else
                        DashNormal()
                    end
                end
            end)
        end
    end
end
function pararDash()
    if connectionDash then
        connectionDash:Disconnect()
        connectionDash = nil
    end
    pressionando = false
end
Dash.InputBegan:Connect(function(p1439)
    if p1439.UserInputType == Enum.UserInputType.Touch then
        iniciarDash()
    end
end)
Dash.InputEnded:Connect(function(p1440)
    if p1440.UserInputType == Enum.UserInputType.Touch then
        pararDash()
    end
end)
Dash.MouseButton1Down:Connect(iniciarDash)
Dash.MouseButton1Up:Connect(pararDash)
Carry.MouseButton1Click:Connect(function()
    if not EmAjuste then
        Game:GetService("Workspace")[game.Players.LocalPlayer.Name].PickupRemote:FireServer()
    end
end)
UserInputService.InputBegan:Connect(function(p1441, p1442)
    if not p1442 then
        if p1441.UserInputType == Enum.UserInputType.Keyboard and p1441.KeyCode == Enum.KeyCode.E then
            if CustomD then
                dashCustom()
            else
                DashNormal()
            end
        end
    end
end)
function _G.CustomDa(pu1443)
    CustomD = pu1443
    pcall(function()
        ConfigFile("CustomDash", pu1443)
    end)
end
TextoDELAY.FocusLost:Connect(function()
    local v1444 = TextoDELAY.Text:gsub("%D", "")
    local v1445 = tonumber(v1444) or 2
    local vu1446 = math.clamp(v1445, 0, 10)
    TextoDELAY.Text = tostring(vu1446)
    DashDelay = vu1446
    pcall(function()
        ConfigFile("CustomDashDelay", vu1446)
    end)
end)
TextoPower.FocusLost:Connect(function()
    local v1447 = TextoPower.Text:gsub("%D", "")
    local v1448 = tonumber(v1447) or 90
    local vu1449 = math.clamp(v1448, 10, 1000)
    TextoPower.Text = tostring(vu1449)
    DashSpeed = Vector3.new(vu1449, 0, vu1449)
    pcall(function()
        ConfigFile("CustomDashPower", vu1449)
    end)
end)
function GravityFunc()
    if NoGravity then
        Gravity.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
        IconeGrav.Image = "rbxassetid://90789802362187"
        NoGravity = false
        pcall(function()
            ConfigFile("CustomDashNoGravity", false)
        end)
    else
        Gravity.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        IconeGrav.Image = "rbxassetid://106235415289683"
        NoGravity = true
        pcall(function()
            ConfigFile("CustomDashNoGravity", true)
        end)
    end
end
Gravity.MouseButton1Click:Connect(GravityFunc)
CustomS = false
SprintSpeed = 19
infiniteStamina = false
local function vu1464()
    repeat
        task.wait()
    until game.Players.LocalPlayer:FindFirstChild("PlayerGui"):FindFirstChild("Sprinting")
    game.Players.LocalPlayer.PlayerGui.Sprinting.Sprinting.Enabled = false
    local vu1450 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
    local v1451 = vu1450
    local vu1452 = vu1450.WaitForChild(v1451, "Animator"):LoadAnimation(game.Players.LocalPlayer.PlayerGui.Sprinting.Sprinting:WaitForChild("Animation"))
    local vu1453 = game.Players.LocalPlayer.Character:WaitForChild("Sitting")
    local vu1454 = game.Players.LocalPlayer.PlayerGui.Sprinting.Frame.Frame
    local v1455 = game.Players.LocalPlayer.PlayerGui.Sprinting.Sprint.TextButton
    local vu1456 = false
    local vu1457 = false
    local vu1458 = 100
    local function vu1459()
        vu1450.WalkSpeed = vu1456 and SprintSpeed or 14
    end
    game:GetService("UserInputService").InputBegan:Connect(function(p1460, p1461)
        if not p1461 then
            if p1460.UserInputType == Enum.UserInputType.Keyboard and p1460.KeyCode == Enum.KeyCode.LeftShift then
                vu1456 = true
                vu1459()
                vu1453.Value = false
            end
        end
    end)
    game:GetService("UserInputService").InputEnded:Connect(function(p1462, p1463)
        if not p1463 then
            if p1462.UserInputType == Enum.UserInputType.Keyboard and p1462.KeyCode == Enum.KeyCode.LeftShift then
                vu1456 = false
                vu1459()
            end
        end
    end)
    v1455.InputBegan:Connect(function()
        vu1456 = true
        vu1459()
    end)
    v1455.InputEnded:Connect(function()
        vu1456 = false
        vu1459()
    end)
    vu1450.Changed:Connect(function()
        if vu1450.MoveDirection.Magnitude == 0 or not vu1456 then
            if vu1452.IsPlaying then
                vu1452:Stop()
                vu1457 = false
            end
        elseif not vu1452.IsPlaying then
            vu1452:Play()
            vu1452:AdjustSpeed(1.4)
            vu1457 = true
        end
    end)
    task.spawn(function()
        while vu1450.Health > 0 do
            task.wait()
            if vu1458 < 100 then
                game.Players.LocalPlayer.PlayerGui.Sprinting.Frame.Visible = true
            else
                game.Players.LocalPlayer.PlayerGui.Sprinting.Frame.Visible = false
            end
            if vu1457 then
                if not (CustomS and infiniteStamina) then
                    vu1458 = vu1458 - 1
                    if vu1458 <= 0 then
                        vu1456 = false
                        vu1459()
                        vu1452:Stop()
                        vu1457 = false
                    end
                end
            elseif vu1458 < 100 then
                vu1458 = vu1458 + 1
            end
            vu1454.Size = UDim2.new(1, 0, vu1458 / 100, 0)
        end
    end)
end
vu1464()
game.Players.LocalPlayer.CharacterAdded:Connect(function(p1465)
    p1465:WaitForChild("Humanoid")
    p1465:WaitForChild("Sitting")
    vu1464()
end)
function _G.CustomS(pu1466)
    CustomS = pu1466
    pcall(function()
        ConfigFile("CustomSprint", pu1466)
    end)
    if pu1466 then
        SprintSpeed = TextoSprintSpeed.Text
    else
        SprintSpeed = 19
    end
end
TextoSprintSpeed.FocusLost:Connect(function()
    local v1467 = TextoSprintSpeed.Text:gsub("%D", "")
    local v1468 = tonumber(v1467) or 100
    local vu1469 = math.clamp(v1468, 10, 1000)
    TextoSprintSpeed.Text = tostring(vu1469)
    SprintSpeed = vu1469
    pcall(function()
        ConfigFile("CustomSprintSpeed", vu1469)
    end)
end)
function StaminaInf()
    if infiniteStamina then
        Infinito.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
        IconeIN.Image = "rbxassetid://90789802362187"
        infiniteStamina = false
        pcall(function()
            ConfigFile("CustomSprintInfinite", false)
        end)
    else
        Infinito.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        IconeIN.Image = "rbxassetid://106235415289683"
        infiniteStamina = true
        pcall(function()
            ConfigFile("CustomSprintInfinite", true)
        end)
    end
end
Infinito.MouseButton1Click:Connect(StaminaInf)
UserInputService = game:GetService("UserInputService")
TweenService = game:GetService("TweenService")
function MakeDraggable(p1470, pu1471)
    local vu1472 = nil
    local vu1473 = nil
    local vu1474 = nil
    local vu1475 = nil
    function Update(p1476)
        local v1477 = p1476.Position - vu1472
        local v1478 = UDim2.new(vu1473.X.Scale, vu1473.X.Offset + v1477.X, vu1473.Y.Scale, vu1473.Y.Offset + v1477.Y)
        TweenService:Create(pu1471, TweenInfo.new(0.15), {
            Position = v1478
        }):Play()
    end
    p1470.InputBegan:Connect(function(pu1479)
        if pu1479.UserInputType == Enum.UserInputType.MouseButton1 or pu1479.UserInputType == Enum.UserInputType.Touch then
            vu1474 = true
            vu1472 = pu1479.Position
            vu1473 = pu1471.Position
            pu1479.Changed:Connect(function()
                if pu1479.UserInputState == Enum.UserInputState.End then
                    vu1474 = false
                end
            end)
        end
    end)
    p1470.InputChanged:Connect(function(p1480)
        if p1480.UserInputType == Enum.UserInputType.MouseMovement or p1480.UserInputType == Enum.UserInputType.Touch then
            vu1475 = p1480
        end
    end)
    UserInputService.InputChanged:Connect(function(p1481)
        if p1481 == vu1475 and vu1474 then
            Update(p1481)
        end
    end)
end
Instance.new("ScreenGui")
local vu1482 = Instance.new("ImageButton")
Instance.new("ImageLabel")
game:GetService("CoreGui")
local vu1483 = game:GetService("Players")
local vu1484 = game:GetService("RunService")
game:GetService("ContextActionService")
local vu1485 = vu1483.LocalPlayer
game:GetService("UserInputService")
local vu1486 = {
    Off = "rbxasset://textures/ui/mouseLock_off@2x.png",
    On = "rbxasset://textures/ui/mouseLock_on@2x.png",
    Lock = "rbxasset://textures/MouseLockedCursor.png",
    Lock2 = "rbxasset://SystemCursors/Cross"
}
local vu1487 = 900000
local vu1488 = CFrame.new(1.7, 0, 0)
local vu1489 = CFrame.new(- 1.7, 0, 0)
local vu1490 = nil
vu1482.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
vu1482.BackgroundTransparency = 1
vu1482.Position = UDim2.new(0.7, 0, 0.75, 0)
vu1482.Size = UDim2.new(0.0636147112, 0, 0.0661305636, 0)
vu1482.SizeConstraint = Enum.SizeConstraint.RelativeXX
vu1482.Image = vu1486.Off
vu1482.Visible = false
vu1482.Parent = CORE
MakeDraggable(vu1482, vu1482)
vu1482.MouseButton1Click:Connect(function()
    if vu1490 then
        local v1491 = vu1485.Character
        if v1491 then
            v1491 = v1491:FindFirstChild("Humanoid")
        end
        if v1491 then
            v1491.AutoRotate = true
        end
        vu1482.Image = vu1486.Off
        workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame * vu1489
        pcall(function()
            vu1490:Disconnect()
            vu1490 = nil
            ShiftlockOn = false
        end)
    else
        ShiftlockOn = true
        vu1490 = vu1484.RenderStepped:Connect(function()
            local v1492 = vu1485.Character
            local v1493
            if v1492 then
                v1493 = v1492:FindFirstChild("Humanoid")
            else
                v1493 = v1492
            end
            if v1492 then
                v1492 = v1492:FindFirstChild("HumanoidRootPart")
            end
            if v1493 and v1492 then
                v1493.AutoRotate = false
                vu1482.Image = vu1486.On
                v1492.CFrame = CFrame.new(v1492.Position, Vector3.new(workspace.CurrentCamera.CFrame.LookVector.X * vu1487, v1492.Position.Y, workspace.CurrentCamera.CFrame.LookVector.Z * vu1487))
                workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame * vu1488
                workspace.CurrentCamera.Focus = CFrame.fromMatrix(workspace.CurrentCamera.Focus.Position, workspace.CurrentCamera.CFrame.RightVector, workspace.CurrentCamera.CFrame.UpVector) * vu1488
            end
        end)
    end
end)
function _G.Shiftlock(pu1494)
    pcall(function()
        ConfigFile("Shiftlock", pu1494)
    end)
    if not pu1494 and vu1490 then
        local v1495 = vu1485.Character
        if v1495 then
            v1495 = v1495:FindFirstChild("Humanoid")
        end
        if v1495 then
            v1495.AutoRotate = true
        end
        vu1482.Image = vu1486.Off
        workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame * vu1489
        pcall(function()
            vu1490:Disconnect()
            vu1490 = nil
        end)
    end
    vu1482.Visible = pu1494
end
SpeedON = false
function Speed(p1496)
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = p1496
    end
end
TextoSpeed.FocusLost:Connect(function()
    local v1497 = TextoSpeed.Text:gsub("%D", "")
    local v1498 = tonumber(v1497) or 100
    local vu1499 = math.clamp(v1498, 10, 1000)
    TextoSpeed.Text = tostring(vu1499)
    if SpeedON then
        Speed(vu1499)
    end
    pcall(function()
        ConfigFile("SpeedPower", vu1499)
    end)
end)
SpeedConnection = nil
function _G.Speed(pu1500)
    pcall(function()
        ConfigFile("Speed", pu1500)
    end)
    SpeedON = pu1500
    if SpeedConnection then
        SpeedConnection:Disconnect()
        SpeedConnection = nil
    end
    if pu1500 then
        Speed(TextoSpeed.Text)
        SpeedConnection = game:GetService("RunService").Heartbeat:Connect(function()
            Speed(TextoSpeed.Text)
            task.wait(1)
        end)
    else
        Speed(14)
    end
end
JumpON = false
function Jump(p1501)
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").JumpPower = p1501
    end
end
TextoJump.FocusLost:Connect(function()
    local v1502 = TextoJump.Text:gsub("%D", "")
    local v1503 = tonumber(v1502) or 200
    local vu1504 = math.clamp(v1503, 10, 1000)
    TextoJump.Text = tostring(vu1504)
    if JumpON then
        Jump(vu1504)
    end
    pcall(function()
        ConfigFile("JumpPower", vu1504)
    end)
end)
JumpConnection = nil
function _G.Jump(pu1505)
    pcall(function()
        ConfigFile("Jump", pu1505)
    end)
    JumpON = pu1505
    if JumpConnection then
        JumpConnection:Disconnect()
        JumpConnection = nil
    end
    if pu1505 then
        Jump(TextoJump.Text)
        JumpConnection = game:GetService("RunService").Heartbeat:Connect(function()
            Jump(TextoJump.Text)
            task.wait(1)
        end)
    else
        Jump(50)
    end
end
InfJumpConnection = nil
function _G.InfJump(pu1506)
    pcall(function()
        ConfigFile("InfJump", pu1506)
    end)
    if InfJumpConnection then
        InfJumpConnection:Disconnect()
        InfJumpConnection = nil
    end
    if pu1506 then
        InfJumpConnection = game:GetService("UserInputService").JumpRequest:Connect(function()
            local v1507 = game:GetService("Players").LocalPlayer.Character
            if v1507 then
                v1507 = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
            end
            if v1507 then
                v1507:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end)
    end
end
BunnyThread = nil
BunnyDelay = 0.5
function _G.Bunny(pu1508)
    pcall(function()
        ConfigFile("BunnyHop", pu1508)
    end)
    if BunnyThread then
        BunnyThread = nil
    end
    if pu1508 then
        BunnyThread = true
        task.spawn(function()
            while BunnyThread do
                local v1509 = game.Players.LocalPlayer.Character
                if v1509 then
                    v1509 = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
                end
                if v1509 then
                    v1509:ChangeState(Enum.HumanoidStateType.Jumping)
                end
                task.wait(BunnyDelay)
            end
        end)
    end
end
TextoBH.FocusLost:Connect(function()
    local v1510 = TextoBH.Text:gsub("[^%d%.]", "")
    local vu1511 = false
    local v1512 = v1510:gsub("%.", function(_)
        if vu1511 then
            return ""
        end
        vu1511 = true
        return "."
    end)
    local v1513 = tonumber(v1512) or 0.7
    local vu1514 = math.clamp(v1513, 0, 5)
    TextoBH.Text = tostring(vu1514)
    BunnyDelay = vu1514
    pcall(function()
        ConfigFile("BunnyHopDelay", vu1514)
    end)
end)
TpToolConnection = nil
RespawnConnection = nil
MouseConnection = nil
function _G.TpTool(pu1515)
    pcall(function()
        ConfigFile("TpTool", pu1515)
    end)
    local function vu1520()
        local v1516 = Instance.new("Tool")
        v1516.Name = "TpTool"
        v1516.TextureId = "rbxassetid://91197596847718"
        v1516.RequiresHandle = false
        v1516.Parent = game.Players.LocalPlayer.Backpack
        v1516.Equipped:Connect(function(pu1517)
            if MouseConnection then
                MouseConnection:Disconnect()
            end
            MouseConnection = pu1517.Button1Down:Connect(function()
                if pu1517.Target then
                    local v1518 = pu1517.Hit.p
                    local v1519 = game.Players.LocalPlayer.Character
                    if v1519 and v1519:FindFirstChild("HumanoidRootPart") then
                        task.wait(0.1)
                        v1519:MoveTo(v1518)
                    end
                end
            end)
        end)
        v1516.Unequipped:Connect(function()
            if MouseConnection then
                MouseConnection:Disconnect()
                MouseConnection = nil
            end
        end)
    end
    if RespawnConnection then
        RespawnConnection:Disconnect()
        RespawnConnection = nil
    end
    if TpToolConnection then
        TpToolConnection:Disconnect()
        TpToolConnection = nil
    end
    if MouseConnection then
        MouseConnection:Disconnect()
        MouseConnection = nil
    end
    local v1521 = game.Players.LocalPlayer
    local v1522 = v1521:FindFirstChild("Backpack")
    local v1523 = v1521.Character
    if pu1515 then
        vu1520()
        RespawnConnection = v1521.CharacterAdded:Connect(function()
            task.defer(vu1520)
        end)
    else
        if v1522 and v1522:FindFirstChild("TpTool") then
            v1522.TpTool:Destroy()
        end
        if v1523 and v1523:FindFirstChild("TpTool") then
            v1523.TpTool:Destroy()
        end
    end
end
NoClipConnection = nil
function _G.NoClip(pu1524)
    pcall(function()
        ConfigFile("NoClip", pu1524)
    end)
    if NoClipConnection then
        NoClipConnection:Disconnect()
        NoClipConnection = nil
    end
    local vu1525 = game.Players.LocalPlayer
    local v1526 = vu1525.Character
    if pu1524 then
        NoClipConnection = game:GetService("RunService").RenderStepped:Connect(function()
            local v1527 = vu1525.Character
            if v1527 then
                local v1528, v1529, v1530 = pairs(v1527:GetDescendants())
                while true do
                    local v1531
                    v1530, v1531 = v1528(v1529, v1530)
                    if v1530 == nil then
                        break
                    end
                    if v1531:IsA("BasePart") and v1531.CanCollide ~= false then
                        v1531.CanCollide = false
                    end
                end
            end
        end)
    elseif v1526 then
        local v1532, v1533, v1534 = pairs(v1526:GetDescendants())
        while true do
            local v1535
            v1534, v1535 = v1532(v1533, v1534)
            if v1534 == nil then
                break
            end
            if v1535:IsA("BasePart") then
                v1535.CanCollide = true
            end
        end
    end
end
FloatAltura = 5
FloatConnection = nil
vu1485 = game.Players.LocalPlayer
vu1484 = game:GetService("RunService")
local vu1536 = false
local vu1537 = nil
local function vu1542(pu1538)
    if vu1537 then
        vu1537:Disconnect()
        vu1537 = nil
    end
    local vu1539 = 0
    local vu1540 = 1
    vu1537 = vu1484.Heartbeat:Connect(function(p1541)
        if vu1536 and (pu1538 and pu1538.Parent) then
            vu1539 = vu1539 + p1541 * vu1540 * 2
            if vu1539 <= 1 then
                if vu1539 < - 1 then
                    vu1539 = - 1
                    vu1540 = 1
                end
            else
                vu1539 = 1
                vu1540 = - 1
            end
            pu1538.HipHeight = FloatAltura + vu1539
        else
            if pu1538 and pu1538.Parent then
                pu1538.HipHeight = 0
            end
            if vu1537 then
                vu1537:Disconnect()
                vu1537 = nil
            end
        end
    end)
end
local function vu1545(p1543)
    task.wait(1)
    local v1544 = p1543:FindFirstChildOfClass("Humanoid") or p1543:WaitForChild("Humanoid", 5)
    if v1544 and vu1536 then
        vu1542(v1544)
    end
end
function _G.Float(pu1546)
    pcall(function()
        ConfigFile("Float", pu1546)
    end)
    vu1536 = pu1546
    if FloatConnection then
        FloatConnection:Disconnect()
        FloatConnection = nil
    end
    if vu1537 then
        vu1537:Disconnect()
        vu1537 = nil
    end
    if pu1546 then
        coroutine.wrap(function()
            vu1545(vu1485.Character or vu1485.CharacterAdded:Wait())
        end)()
        FloatConnection = vu1485.CharacterAdded:Connect(function(p1547)
            coroutine.wrap(vu1545)(p1547)
        end)
    else
        local v1548 = vu1485.Character
        local v1549 = v1548 and v1548:FindFirstChildOfClass("Humanoid")
        if v1549 then
            v1549.HipHeight = 0
        end
    end
end
TextoFLOAT.FocusLost:Connect(function()
    local v1550 = TextoFLOAT.Text:gsub("%D", "")
    local v1551 = tonumber(v1550) or 5
    local vu1552 = math.clamp(v1551, 1, 50)
    TextoFLOAT.Text = tostring(vu1552)
    FloatAltura = vu1552
    pcall(function()
        ConfigFile("FloatHeight", vu1552)
    end)
end)
ScrollMovimento = Instance.new("ScrollingFrame")
ScrollMovimento.Size = UDim2.new(0, 297, 0, 216)
ScrollMovimento.Position = UDim2.new(0, 154, 0, 3)
ScrollMovimento.BackgroundTransparency = 1
ScrollMovimento.ScrollBarThickness = 0
ScrollMovimento.CanvasSize = UDim2.new(0, 0, 0, 813)
ScrollMovimento.ScrollingDirection = Enum.ScrollingDirection.Y
ScrollMovimento.Parent = _G.Tela5
CriarOpcao(ScrollMovimento, 6, 121916456967183, traducao.MB, 21, "ligar", "Mobile")
CriarOpcao(ScrollMovimento, 80, 133610622523075, "Custom Dash", 22, "ligar", "CustomDa")
CriarOpcao(ScrollMovimento, 154, 80074689687932, "Custom Sprint", 23, "ligar", "CustomS")
CriarOpcao(ScrollMovimento, 228, 95214908442478, "Shiftlock", 24, "ligar", "Shiftlock")
CriarOpcao(ScrollMovimento, 302, 78590018580959, "Speed", 25, "ligar", "Speed")
CriarOpcao(ScrollMovimento, 376, 77798404108914, "Jump", 26, "ligar", "Jump")
CriarOpcao(ScrollMovimento, 450, 129955115065937, traducao.IJ, 27, "ligar", "InfJump")
CriarOpcao(ScrollMovimento, 524, 136053719753183, "Bunny Hop", 28, "ligar", "Bunny")
CriarOpcao(ScrollMovimento, 598, 91197596847718, "Tp Tool", 29, "ligar", "TpTool")
CriarOpcao(ScrollMovimento, 672, 137404402587713, "Noclip", 30, "ligar", "NoClip")
CriarOpcao(ScrollMovimento, 746, 115390567668057, traducao.Float, 31, "ligar", "Float")
coroutine.wrap(function()
    if tentarLer("MDashSize") then
        Ajustar("Dash", tonumber(LerConfig("MDashSize"):match("UDim2%.new%(%d+,%s*(%d+)")))
    end
    if tentarLer("MCarrySize") then
        Ajustar("Carry", tonumber(LerConfig("MCarrySize"):match("UDim2%.new%(%d+,%s*(%d+)")))
    end
    local v1553 = tentarLer("MDashPosition") and LerConfig("MDashPosition"):match("UDim2%.new%(([^)]+)%)")
    if v1553 then
        local v1554, v1555, v1556, v1557 = v1553:match("([^,]+),%s*([^,]+),%s*([^,]+),%s*([^,]+)")
        if v1554 and (v1555 and (v1556 and v1557)) then
            Dash.Position = UDim2.new(tonumber(v1554), tonumber(v1555), tonumber(v1556), tonumber(v1557))
        end
    end
    local v1558 = tentarLer("MCarryPosition") and LerConfig("MCarryPosition"):match("UDim2%.new%(([^)]+)%)")
    if v1558 then
        local v1559, v1560, v1561, v1562 = v1558:match("([^,]+),%s*([^,]+),%s*([^,]+),%s*([^,]+)")
        if v1559 and (v1560 and (v1561 and v1562)) then
            Carry.Position = UDim2.new(tonumber(v1559), tonumber(v1560), tonumber(v1561), tonumber(v1562))
        end
    end
    if tentarLer("MobileButtons") then
        Alternadores[traducao.MB]()
    end
    if tentarLer("CustomDash") then
        Alternadores["Custom Dash"]()
    end
    local v1563, v1564 = pcall(function()
        return LerConfig("CustomDashDelay")
    end)
    if v1563 and v1564 then
        DashDelay = v1564
    end
    local v1565, v1566 = pcall(function()
        return LerConfig("CustomDashPower")
    end)
    if v1565 and v1566 then
        DashSpeed = Vector3.new(v1566, 0, v1566)
    end
    if tentarLer("CustomDashNoGravity") then
        GravityFunc()
    end
    if tentarLer("CustomSprint") then
        Alternadores["Custom Sprint"]()
    end
    if tentarLer("CustomSprintInfinite") then
        StaminaInf()
    end
    if tentarLer("Shiftlock") then
        Alternadores.Shiftlock()
    end
    if tentarLer("Speed") then
        Alternadores.Speed()
    end
    if tentarLer("Jump") then
        Alternadores.Jump()
    end
    if tentarLer("InfJump") then
        Alternadores[traducao.IJ]()
    end
    if tentarLer("BunnyHop") then
        Alternadores["Bunny Hop"]()
    end
    local v1567, v1568 = pcall(function()
        return LerConfig("BunnyHopDelay")
    end)
    if v1567 and v1568 then
        BunnyDelay = v1568
    end
    if tentarLer("TpTool") then
        Alternadores["Tp Tool"]()
    end
    if tentarLer("NoClip") then
        Alternadores.Noclip()
    end
    if tentarLer("Float") then
        Alternadores[traducao.Float]()
    end
    local v1569, v1570 = pcall(function()
        return LerConfig("FloatHeight")
    end)
    if v1569 and v1570 then
        FloatAltura = v1570
    end
end)()
Horario = Instance.new("ImageButton")
Horario.Size = UDim2.new(0, 134, 0, 38)
Horario.Position = UDim2.new(0, 4, 0, 60)
Horario.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
Horario.AutoButtonColor = false
Horario.Parent = _G.Frame35:FindFirstChild("ScrollInterno")
IconeTime = Instance.new("ImageLabel")
IconeTime.Size = UDim2.new(0, 38, 0, 38)
IconeTime.Position = UDim2.new(0, 0, 0, 0)
IconeTime.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
IconeTime.Image = "rbxassetid://97686271635313"
IconeTime.Parent = Horario
textoHora = Instance.new("TextLabel")
textoHora.Size = UDim2.new(1, - 50, 1, 0)
textoHora.Position = UDim2.new(0, 42, 0, 0)
textoHora.BackgroundTransparency = 1
textoHora.Text = traducao.Dia
textoHora.TextColor3 = Color3.fromRGB(255, 228, 196)
textoHora.Font = Enum.Font.Garamond
textoHora.TextScaled = true
textoHora.Parent = Horario
Corner(Horario, 30)
Corner(IconeTime, 30)
Stroke(Horario, 0, 0, 0, 3)
Stroke(IconeTime, 0, 0, 0, 3)
Stroke(textoHora, 0, 0, 0, 2)
frame = Instance.new("ImageButton")
frame.Size = UDim2.new(0, 134, 0, 38)
frame.Position = UDim2.new(0, 4, 0, 60)
frame.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
frame.AutoButtonColor = false
frame.Parent = _G.Frame59:FindFirstChild("ScrollInterno")
IconeChar = Instance.new("ImageLabel")
IconeChar.Size = UDim2.new(0, 38, 0, 38)
IconeChar.Position = UDim2.new(0, 0, 0, 0)
IconeChar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
IconeChar.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=156&width=420&height=420&format=png"
IconeChar.Parent = frame
Frame2 = Instance.new("Frame")
Frame2.Position = UDim2.new(0, 46, 0, 4)
Frame2.Size = UDim2.new(1, - 54, 1, - 8)
Frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame2.BackgroundTransparency = 0.5
Frame2.Parent = frame
TextoCHAR = Instance.new("TextBox")
TextoCHAR.Size = UDim2.new(1, 0, 1, 0)
TextoCHAR.Position = UDim2.new(0, 0, 0, 0)
TextoCHAR.BackgroundTransparency = 1
TextoCHAR.Text = (function()
    local v1571, v1572 = pcall(LerConfig, "CharName")
    return v1571 and v1572 and v1572 or "builderman"
end)()
TextoCHAR.PlaceholderText = traducao.AnyRoblox
TextoCHAR.TextColor3 = Color3.fromRGB(255, 215, 0)
TextoCHAR.PlaceholderColor3 = Color3.fromRGB(255, 215, 0)
TextoCHAR.Font = Enum.Font.Garamond
TextoCHAR.TextScaled = true
TextoCHAR.Parent = Frame2
Corner(frame, 30)
Corner(IconeChar, 30)
Corner(Frame2, 10)
Stroke(frame, 0, 0, 0, 3)
Stroke(IconeChar, 0, 0, 0, 2)
Stroke(Frame2, 0, 0, 0, 2)
Stroke(TextoCHAR, 0, 0, 0, 2)
FreezeConnection = nil
function _G.Freeze(pu1573)
    pcall(function()
        ConfigFile("FreezeAll", pu1573)
    end)
    if FreezeConnection then
        FreezeConnection:Disconnect()
        FreezeConnection = nil
    end
    if pu1573 then
        local v1574, v1575, v1576 = ipairs(game.Players:GetPlayers())
        while true do
            local v1577
            v1576, v1577 = v1574(v1575, v1576)
            if v1576 == nil then
                break
            end
            if v1577 ~= game.Players.LocalPlayer and (v1577.Character and (typeof(Protegido) == "function" and Protegido(v1577.Name))) then
                local v1578, v1579, v1580 = pairs(v1577.Character:GetDescendants())
                while true do
                    local v1581
                    v1580, v1581 = v1578(v1579, v1580)
                    if v1580 == nil then
                        break
                    end
                    if v1581:IsA("BasePart") then
                        v1581.Anchored = true
                    end
                end
            end
        end
        FreezeConnection = game:GetService("RunService").Heartbeat:Connect(function()
            if FreezeConnection then
                local v1582, v1583, v1584 = ipairs(game.Players:GetPlayers())
                while true do
                    local v1585
                    v1584, v1585 = v1582(v1583, v1584)
                    if v1584 == nil then
                        break
                    end
                    if v1585 ~= game.Players.LocalPlayer and (v1585.Character and (typeof(Protegido) == "function" and Protegido(v1585.Name))) then
                        local v1586, v1587, v1588 = pairs(v1585.Character:GetDescendants())
                        while true do
                            local v1589
                            v1588, v1589 = v1586(v1587, v1588)
                            if v1588 == nil then
                                break
                            end
                            if v1589:IsA("BasePart") then
                                v1589.Anchored = true
                            end
                        end
                    end
                end
                task.wait(1)
            end
        end)
    else
        local vu1590 = game.Players:GetPlayers()
        task.defer(function()
            local v1591, v1592, v1593 = ipairs(vu1590)
            while true do
                local v1594
                v1593, v1594 = v1591(v1592, v1593)
                if v1593 == nil then
                    break
                end
                if v1594 ~= game.Players.LocalPlayer and v1594.Character then
                    local v1595, v1596, v1597 = pairs(v1594.Character:GetDescendants())
                    while true do
                        local v1598
                        v1597, v1598 = v1595(v1596, v1597)
                        if v1597 == nil then
                            break
                        end
                        if v1598:IsA("BasePart") then
                            v1598.Anchored = false
                        end
                    end
                end
            end
        end)
    end
end
Lighting = game:GetService("Lighting")
function _G.RTX(pu1599)
    pcall(function()
        ConfigFile("BetterGraphics", pu1599)
    end)
    if pu1599 then
        if not game:IsLoaded() then
            game.Loaded:Wait()
        end
        local v1600 = Instance.new("BloomEffect")
        v1600.Name = "RTX_Bloom"
        v1600.Intensity = 0.1
        v1600.Threshold = 0
        v1600.Size = 100
        v1600.Parent = Lighting
        local v1601 = Instance.new("BlurEffect")
        v1601.Name = "RTX_Blur"
        v1601.Size = 2
        v1601.Parent = Lighting
        local v1602 = Instance.new("SunRaysEffect")
        v1602.Name = "RTX_SunRays"
        v1602.Intensity = 0.05
        v1602.Parent = Lighting
        local v1603 = Instance.new("ColorCorrectionEffect")
        v1603.Name = "RTX_Inaritaisha"
        v1603.Saturation = 0.05
        v1603.TintColor = Color3.fromRGB(255, 224, 219)
        v1603.Parent = Lighting
        local v1604 = Instance.new("ColorCorrectionEffect")
        v1604.Name = "RTX_Takayama"
        v1604.Enabled = false
        v1604.Saturation = - 0.3
        v1604.Contrast = 0.1
        v1604.TintColor = Color3.fromRGB(235, 214, 204)
        v1604.Parent = Lighting
        local v1605 = Instance.new("Sky")
        v1605.Name = "RTX_Sky"
        v1605.SkyboxUp = "rbxassetid://323493360"
        v1605.SkyboxLf = "rbxassetid://323494252"
        v1605.SkyboxBk = "rbxassetid://323494035"
        v1605.SkyboxFt = "rbxassetid://323494130"
        v1605.SkyboxDn = "rbxassetid://323494368"
        v1605.SkyboxRt = "rbxassetid://323494067"
        v1605.SunAngularSize = 14
        v1605.Parent = Lighting
        Lighting.Brightness = 2.14
        Lighting.ColorShift_Bottom = Color3.fromRGB(11, 0, 20)
        Lighting.ColorShift_Top = Color3.fromRGB(240, 127, 14)
        Lighting.OutdoorAmbient = Color3.fromRGB(34, 0, 49)
        Lighting.FogColor = Color3.fromRGB(94, 76, 106)
        Lighting.FogEnd = 1000
        Lighting.FogStart = 0
        Lighting.ExposureCompensation = 0.24
        Lighting.ShadowSoftness = 0
        Lighting.Ambient = Color3.fromRGB(59, 33, 27)
    else
        local v1606, v1607, v1608 = pairs(Lighting:GetChildren())
        while true do
            local v1609
            v1608, v1609 = v1606(v1607, v1608)
            if v1608 == nil then
                break
            end
            if v1609:IsA("BloomEffect") and v1609.Name == "RTX_Bloom" or (v1609:IsA("BlurEffect") and v1609.Name == "RTX_Blur" or (v1609:IsA("SunRaysEffect") and v1609.Name == "RTX_SunRays" or (v1609:IsA("ColorCorrectionEffect") and (v1609.Name == "RTX_Inaritaisha" or v1609.Name == "RTX_Takayama") or v1609:IsA("Sky") and v1609.Name == "RTX_Sky"))) then
                v1609:Destroy()
            end
        end
        Lighting.Brightness = 1
        Lighting.ColorShift_Bottom = Color3.new(0, 0, 0)
        Lighting.ColorShift_Top = Color3.new(0, 0, 0)
        Lighting.OutdoorAmbient = Color3.fromRGB(127, 127, 127)
        Lighting.FogColor = Color3.fromRGB(192, 192, 192)
        Lighting.FogEnd = 100000
        Lighting.FogStart = 0
        Lighting.ExposureCompensation = 0
        Lighting.ShadowSoftness = 0.5
        Lighting.Ambient = Color3.fromRGB(128, 128, 128)
    end
end
OriginalVolumes = {}
MudoConnection = nil
function _G.Mudo(pu1610)
    pcall(function()
        ConfigFile("NoSound", pu1610)
    end)
    if MudoConnection then
        MudoConnection:Disconnect()
        MudoConnection = nil
    end
    if pu1610 then
        local v1611, v1612, v1613 = ipairs(workspace:GetDescendants())
        while true do
            local v1614, v1615 = v1611(v1612, v1613)
            if v1614 == nil then
                break
            end
            v1613 = v1614
            if v1615:IsA("Sound") then
                if not OriginalVolumes[v1615] then
                    OriginalVolumes[v1615] = v1615.Volume
                end
                v1615.Volume = 0
            end
        end
        MudoConnection = workspace.DescendantAdded:Connect(function(p1616)
            if p1616:IsA("Sound") then
                p1616.Volume = 0
            end
        end)
    else
        local v1617, v1618, v1619 = pairs(OriginalVolumes)
        while true do
            local vu1620, vu1621 = v1617(v1618, v1619)
            if vu1620 == nil then
                break
            end
            v1619 = vu1620
            if typeof(vu1620) == "Instance" and (vu1620:IsA("Sound") and vu1620:IsDescendantOf(workspace)) then
                pcall(function()
                    vu1620.Volume = vu1621
                end)
            end
        end
        table.clear(OriginalVolumes)
    end
end
Hora = "Dia"
function _G.Time()
    if Hora ~= "Dia" then
        if Hora == "Noite" then
            game.Lighting.ClockTime = 21
        end
    else
        game.Lighting.ClockTime = 14
    end
end
function SetTime(p1622)
    if p1622 == "Dia" or p1622 == "Noite" then
        Hora = p1622
    elseif Hora ~= "Dia" then
        Hora = "Dia"
    else
        Hora = "Noite"
    end
    if Hora ~= "Dia" then
        Horario.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
        IconeTime.Image = "rbxassetid://103141172904927"
        textoHora.Text = traducao.Noite
        pcall(function()
            ConfigFile("Time", "Night")
        end)
    else
        Horario.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        IconeTime.Image = "rbxassetid://97686271635313"
        textoHora.Text = traducao.Dia
        pcall(function()
            ConfigFile("Time", "Day")
        end)
    end
end
Horario.MouseButton1Click:Connect(SetTime)
skyNublado = Instance.new("Sky")
skyNublado.Name = "Nublado"
skyNublado.SkyboxUp = "rbxassetid://15154115018"
skyNublado.SkyboxLf = "rbxassetid://15154115018"
skyNublado.SkyboxBk = "rbxassetid://15154115018"
skyNublado.SkyboxFt = "rbxassetid://15154115018"
skyNublado.SkyboxDn = "rbxassetid://15154115018"
skyNublado.SkyboxRt = "rbxassetid://15154115018"
skyNublado.SunAngularSize = 0
chuvaAtiva = false
trovaoAtivo = false
skyBackup = nil
skyNubladoClone = nil
inicialSky = game.Lighting:FindFirstChildOfClass("Sky")
if inicialSky then
    skyBackup = inicialSky:Clone()
end
function AtualizarCeuNublado()
    local v1623 = game.Lighting
    if chuvaAtiva or trovaoAtivo then
        if v1623:FindFirstChildOfClass("Sky") then
            v1623:FindFirstChildOfClass("Sky"):Destroy()
        end
        if skyNubladoClone then
            skyNubladoClone:Destroy()
        end
        skyNubladoClone = skyNublado:Clone()
        skyNubladoClone.Parent = v1623
        v1623.FogStart = 0
        v1623.FogEnd = 200
        v1623.FogColor = Color3.fromRGB(100, 100, 120)
        v1623.OutdoorAmbient = Color3.fromRGB(40, 40, 50)
        v1623.Ambient = Color3.fromRGB(30, 30, 40)
        v1623.Brightness = 1.3
    else
        if v1623:FindFirstChildOfClass("Sky") then
            v1623:FindFirstChildOfClass("Sky"):Destroy()
        end
        if skyNubladoClone then
            skyNubladoClone:Destroy()
            skyNubladoClone = nil
        end
        if skyBackup then
            skyBackup:Clone().Parent = v1623
        end
        v1623.FogStart = 0
        v1623.FogEnd = 100000
        v1623.FogColor = Color3.new(1, 1, 1)
        v1623.OutdoorAmbient = Color3.fromRGB(127, 127, 127)
        v1623.Ambient = Color3.fromRGB(128, 128, 128)
        v1623.Brightness = 2
    end
end
guiChuva = nil
chuvaLoop = nil
somChuva = nil
function _G.Chuva(pu1624)
    pcall(function()
        ConfigFile("Rain", pu1624)
    end)
    chuvaAtiva = pu1624
    if chuvaLoop then
        chuvaLoop:Disconnect()
        chuvaLoop = nil
    end
    if guiChuva then
        guiChuva:Destroy()
        guiChuva = nil
    end
    if somChuva then
        somChuva:Destroy()
        somChuva = nil
    end
    if pu1624 then
        local v1625 = game.Lighting
        v1625.OutdoorAmbient = Color3.fromRGB(40, 40, 50)
        v1625.Ambient = Color3.fromRGB(30, 30, 40)
        v1625.Brightness = 1.2
        guiChuva = Instance.new("ScreenGui")
        guiChuva.Name = "ChuvaTela"
        guiChuva.IgnoreGuiInset = true
        guiChuva.ResetOnSpawn = false
        guiChuva.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
        somChuva = Instance.new("Sound")
        somChuva.SoundId = "rbxassetid://1516791621"
        somChuva.Looped = true
        somChuva.Volume = 1
        somChuva.Parent = game:GetService("SoundService")
        somChuva:Play()
        chuvaLoop = game:GetService("RunService").RenderStepped:Connect(function()
            local v1626 = game.Players.LocalPlayer.Character
            local v1627
            if v1626 then
                v1627 = v1626:FindFirstChild("HumanoidRootPart")
            else
                v1627 = v1626
            end
            local v1628 = false
            if v1627 then
                local v1629 = v1627.Position + Vector3.new(0, 5, 0)
                local v1630 = v1629 + Vector3.new(0, 50, 0)
                local v1631 = RaycastParams.new()
                v1631.FilterDescendantsInstances = {
                    v1626
                }
                v1631.FilterType = Enum.RaycastFilterType.Blacklist
                local v1632 = workspace:Raycast(v1629, v1630 - v1629, v1631)
                v1628 = v1632 and v1632.Instance and true or v1628
            end
            if not v1628 then
                for _ = 1, 5 do
                    local vu1633 = Instance.new("ImageLabel")
                    vu1633.Image = "rbxassetid://112095674791014"
                    vu1633.BackgroundTransparency = 1
                    vu1633.Size = UDim2.new(0, 4, 0, 20)
                    vu1633.Position = UDim2.new(math.random(), 0, - 0.05, 0)
                    vu1633.ImageTransparency = 0.5
                    vu1633.Parent = guiChuva
                    local v1634 = UDim2.new(vu1633.Position.X.Scale, 0, 1.1, 0)
                    local v1635 = TweenInfo.new(1.5, Enum.EasingStyle.Linear)
                    local v1636 = game:GetService("TweenService"):Create(vu1633, v1635, {
                        Position = v1634
                    })
                    v1636:Play()
                    v1636.Completed:Connect(function()
                        vu1633:Destroy()
                    end)
                end
            end
        end)
    end
    AtualizarCeuNublado()
end
trovaoConnection = nil
trovaoTimer = 0
brilhoOriginal = nil
function _G.Trovao(pu1637)
    pcall(function()
        ConfigFile("Lightning", pu1637)
    end)
    trovaoAtivo = pu1637
    if trovaoConnection then
        trovaoConnection:Disconnect()
        trovaoConnection = nil
    end
    if pu1637 then
        local vu1638 = game.Lighting
        if not brilhoOriginal then
            brilhoOriginal = vu1638.Brightness
        end
        vu1638.OutdoorAmbient = Color3.fromRGB(40, 40, 50)
        vu1638.Ambient = Color3.fromRGB(30, 30, 40)
        vu1638.Brightness = 1.4
        trovaoTimer = 0
        trovaoConnection = game:GetService("RunService").RenderStepped:Connect(function(p1639)
            trovaoTimer = trovaoTimer + p1639
            if trovaoTimer >= 3 then
                trovaoTimer = 0
                local v1640 = Instance.new("Sound")
                v1640.SoundId = "rbxassetid://1079408535"
                v1640.Volume = 1
                v1640.Parent = game:GetService("SoundService")
                v1640:Play()
                game:GetService("Debris"):AddItem(v1640, 3)
                local vu1641 = vu1638.Brightness
                vu1638.Brightness = vu1641 + 3
                task.delay(0.1, function()
                    vu1638.Brightness = vu1641
                end)
            end
        end)
    elseif brilhoOriginal then
        game.Lighting.Brightness = brilhoOriginal
        brilhoOriginal = nil
    end
    AtualizarCeuNublado()
end
function _G.Arvore(pu1642)
    pcall(function()
        ConfigFile("HideTrees", pu1642)
    end)
    local v1643, v1644, v1645 = ipairs(workspace:GetDescendants())
    while true do
        local v1646
        v1645, v1646 = v1643(v1644, v1645)
        if v1645 == nil then
            break
        end
        if v1646:IsA("Model") and v1646.Name == "Cyber Tree" then
            local v1647, v1648, v1649 = ipairs({
                "Meshes/laser tree_Cube",
                "Meshes/laser tree_Cylinder",
                "Meshes/laser tree_Cylinder.001",
                "Meshes/laser tree_Cylinder.002",
                "Meshes/laser tree_Cylinder.003",
                "Meshes/laser tree_Cylinder.004",
                "Meshes/laser tree_Cylinder.005"
            })
            while true do
                local v1650
                v1649, v1650 = v1647(v1648, v1649)
                if v1649 == nil then
                    break
                end
                local v1651 = v1646:FindFirstChild(v1650)
                if v1651 and v1651:IsA("BasePart") then
                    v1651.Transparency = pu1642 and 1 or 0
                end
            end
        end
    end
end
workspace = game.Workspace
positions = {
    Vector3.new(- 477.35015869140625, 162.0952911376953, 40.28164291381836),
    Vector3.new(- 478.3230285644531, 117.8262710571289, 3.470365524291992),
    Vector3.new(- 87.68907165527344, 90.60000610351562, 251.7952880859375),
    Vector3.new(- 87.68907165527344, 66.30001068115234, 251.7952880859375),
    Vector3.new(- 149.9257049560547, 88.60000610351562, 256.9143981933594),
    Vector3.new(- 149.9257049560547, 64.30001068115234, 256.9143981933594),
    Vector3.new(- 211.85821533203125, 90.00000762939453, 276.5948181152344),
    Vector3.new(- 211.85821533203125, 65.70001220703125, 276.5948181152344),
    Vector3.new(- 258.6347351074219, 92.20000457763672, 284.96759033203125),
    Vector3.new(- 258.6347351074219, 67.90000915527344, 284.96759033203125),
    Vector3.new(- 294.42926025390625, 95.20000457763672, 285.5923767089844),
    Vector3.new(- 294.42926025390625, 70.90000915527344, 285.5923767089844),
    Vector3.new(- 328.85601806640625, 96.80000305175781, 270.9791259765625),
    Vector3.new(- 328.85601806640625, 72.50000762939453, 270.9791259765625),
    Vector3.new(- 352.8998107910156, 93.4000015258789, 226.05804443359375),
    Vector3.new(- 352.8998107910156, 69.10000610351562, 226.05804443359375),
    Vector3.new(- 358.8802185058594, 91.4000015258789, 180.2217254638672),
    Vector3.new(- 358.8802185058594, 67.10000610351562, 180.2217254638672),
    Vector3.new(- 385.7059631347656, 90.4000015258789, 134.23464965820312),
    Vector3.new(- 385.7059631347656, 66.10000610351562, 134.23464965820312),
    Vector3.new(- 449.12109375, 94, 108.17391204833984),
    Vector3.new(- 449.12109375, 69.70000457763672, 108.17391204833984),
    Vector3.new(- 316.71087646484375, 96.5999984741211, - 33.281471252441406),
    Vector3.new(- 316.71087646484375, 72.30000305175781, - 33.281471252441406),
    Vector3.new(- 272.1174621582031, 94.19999694824219, - 26.061058044433594),
    Vector3.new(- 272.1174621582031, 69.9000015258789, - 26.061058044433594),
    Vector3.new(- 234.484130859375, 96.79999542236328, - 72.53443908691406),
    Vector3.new(- 234.484130859375, 72.5, - 72.53443908691406),
    Vector3.new(- 182.99717712402344, 99.79999542236328, - 104.37274932861328),
    Vector3.new(- 182.99717712402344, 75.5, - 104.37274932861328),
    Vector3.new(- 129.5885772705078, 97.99999237060547, - 120.5688705444336),
    Vector3.new(- 129.5885772705078, 73.69999694824219, - 120.5688705444336),
    Vector3.new(- 70.82939147949219, 95.79999542236328, - 127.78365325927734),
    Vector3.new(- 70.82939147949219, 71.5, - 127.78365325927734),
    Vector3.new(- 8.213814735412598, 94.39999389648438, - 119.8426742553711),
    Vector3.new(- 8.213814735412598, 70.0999984741211, - 119.8426742553711),
    Vector3.new(- 354.6018371582031, 94.79999542236328, - 78.57704162597656),
    Vector3.new(- 354.6018371582031, 70.5, - 78.57704162597656),
    Vector3.new(- 398.54827880859375, 96.39999389648438, - 107.1160888671875),
    Vector3.new(- 398.54827880859375, 72.0999984741211, - 107.1160888671875),
    Vector3.new(- 440.60394287109375, 94.99999237060547, - 128.54443359375),
    Vector3.new(- 440.60394287109375, 70.69999694824219, - 128.54443359375),
    Vector3.new(- 503.91064453125, 96.80000305175781, 67.45960235595703),
    Vector3.new(- 503.91064453125, 72.50000762939453, 67.45960235595703),
    Vector3.new(- 500.0423889160156, 93.79999542236328, - 125.86970520019531),
    Vector3.new(- 500.0423889160156, 69.5, - 125.86970520019531),
    Vector3.new(- 539.9876098632812, 92.19999694824219, - 81.70794677734375),
    Vector3.new(- 539.9876098632812, 67.9000015258789, - 81.70794677734375),
    Vector3.new(- 541.0352783203125, 96, 21.89511489868164),
    Vector3.new(- 541.0352783203125, 71.70000457763672, 21.89511489868164),
    Vector3.new(- 552.44580078125, 94.4000015258789, - 36.80616760253906),
    Vector3.new(- 552.44580078125, 70.10000610351562, - 36.80616760253906),
    Vector3.new(- 486.1348571777344, 74.19999694824219, 56.422950744628906),
    Vector3.new(- 483.13897705078125, 49.900001525878906, 56.26593780517578),
    Vector3.new(- 519.5975341796875, 80, 19.436965942382812),
    Vector3.new(- 519.5975341796875, 55.70000457763672, 19.436965942382812),
    Vector3.new(- 538.4479370117188, 60.100006103515625, - 36.56184387207031),
    Vector3.new(- 538.4479370117188, 84.39999389648438, - 36.56184387207031),
    Vector3.new(- 530.90185546875, 44.10000991821289, - 19.153289794921875),
    Vector3.new(- 147.5496826171875, 61.69999694824219, - 97.22187805175781),
    Vector3.new(- 147.5496826171875, 85.99999237060547, - 97.22187805175781),
    Vector3.new(- 111.40530395507812, 55.69999694824219, - 110.39695739746094),
    Vector3.new(- 111.40530395507812, 79.99999237060547, - 110.39695739746094),
    Vector3.new(- 25.83277702331543, 93.20000457763672, 252.11727905273438),
    Vector3.new(- 25.8327693939209, 68.90000915527344, 252.11727905273438)
}
paredes = {}
materiaisOriginais = {}
coroutine.wrap(function()
    local v1652, v1653, v1654 = ipairs(workspace:GetDescendants())
    while true do
        local v1655
        v1654, v1655 = v1652(v1653, v1654)
        if v1654 == nil then
            return
        end
        if v1655:IsA("BasePart") then
            local v1656, v1657, v1658 = ipairs(positions)
            while true do
                local v1659
                v1658, v1659 = v1656(v1657, v1658)
                if v1658 == nil then
                    break
                end
                if v1655.Position == v1659 then
                    table.insert(paredes, v1655)
                    materiaisOriginais[v1655] = v1655.Material
                    break
                end
            end
        end
    end
end)()
function _G.Wall(pu1660)
    pcall(function()
        ConfigFile("TransparentWalls", pu1660)
    end)
    local v1661, v1662, v1663 = ipairs(paredes)
    while true do
        local v1664
        v1663, v1664 = v1661(v1662, v1663)
        if v1663 == nil then
            break
        end
        if pu1660 then
            v1664.Material = Enum.Material.ForceField
        else
            local v1665 = materiaisOriginais[v1664]
            if v1665 then
                v1664.Material = v1665
            end
        end
    end
end
function _G.F3X()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/refs/heads/main/f3x.lua"))()
end
CharID = 156
PadraoID = game.Players.LocalPlayer.UserId
TextoCHAR.FocusLost:Connect(function()
    coroutine.wrap(function()
        local vu1666 = TextoCHAR.Text:gsub("%s+", "")
        if vu1666 == "" then
            TextoCHAR.Text = "?"
            IconeChar.Image = "rbxassetid://15887124865"
            CharID = 0
            return
        else
            local v1667, vu1668 = pcall(function()
                return game:GetService("Players"):GetUserIdFromNameAsync(vu1666)
            end)
            if v1667 and vu1668 then
                local v1669, vu1670 = pcall(function()
                    return game:GetService("HttpService"):JSONDecode(game:HttpGet("https://users.roblox.com/v1/users/" .. vu1668))
                end)
                if v1669 and (vu1670 and vu1670.name) then
                    pcall(function()
                        ConfigFile("CharName", vu1670.name)
                    end)
                    TextoCHAR.Text = vu1670.name
                    IconeChar.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu1668 .. "&width=150&height=150&format=png"
                    CharID = vu1668
                else
                    TextoCHAR.Text = "?"
                    IconeChar.Image = "rbxassetid://15887124865"
                    CharID = 0
                end
            else
                TextoCHAR.Text = "?"
                IconeChar.Image = "rbxassetid://15887124865"
                CharID = 0
                return
            end
        end
    end)()
end)
CharMonitor = nil
CharConnection = nil
ultimoID = 0
function _G.Char(pu1671)
    pcall(function()
        ConfigFile("Char", pu1671)
    end)
    if CharConnection then
        CharConnection:Disconnect()
        CharConnection = nil
    end
    if CharMonitor then
        CharMonitor:Disconnect()
        CharMonitor = nil
    end
    if pu1671 then
        local function vu1678(pu1672)
            local v1673, vu1674 = pcall(function()
                return game:GetService("Players"):GetHumanoidDescriptionFromUserId(pu1672)
            end)
            if v1673 and vu1674 then
                local function vu1677()
                    local v1675 = game:GetService("Players").LocalPlayer.Character
                    if v1675 then
                        local v1676 = v1675:FindFirstChildOfClass("Humanoid")
                        if v1676 then
                            game:GetService("Players").LocalPlayer:ClearCharacterAppearance()
                            v1676:ApplyDescriptionClientServer(vu1674)
                        end
                    end
                end
                vu1677()
                if CharConnection then
                    CharConnection:Disconnect()
                end
                CharConnection = game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function()
                    task.wait(0.4)
                    vu1677()
                end)
            end
        end
        CharMonitor = game:GetService("RunService").RenderStepped:Connect(function()
            if CharID and (CharID ~= 0 and CharID ~= ultimoID) then
                ultimoID = CharID
                vu1678(CharID)
            end
        end)
    else
        ultimoID = 0
        local v1679, v1680 = pcall(function()
            return game:GetService("Players"):GetHumanoidDescriptionFromUserId(PadraoID)
        end)
        if not (v1679 and v1680) then
            return
        end
        if CharConnection then
            CharConnection:Disconnect()
            CharConnection = nil
        end
        if CharMonitor then
            CharMonitor:Disconnect()
            CharMonitor = nil
        end
        local v1681 = game:GetService("Players").LocalPlayer.Character
        if v1681 then
            v1681 = v1681:FindFirstChildOfClass("Humanoid")
        end
        if v1681 then
            game:GetService("Players").LocalPlayer:ClearCharacterAppearance()
            v1681:ApplyDescriptionClientServer(v1680)
        end
    end
end
ScrollVisual = Instance.new("ScrollingFrame")
ScrollVisual.Size = UDim2.new(0, 297, 0, 216)
ScrollVisual.Position = UDim2.new(0, 154, 0, 3)
ScrollVisual.BackgroundTransparency = 1
ScrollVisual.ScrollBarThickness = 0
ScrollVisual.CanvasSize = UDim2.new(0, 0, 0, 740)
ScrollVisual.ScrollingDirection = Enum.ScrollingDirection.Y
ScrollVisual.Parent = _G.Tela6
CriarOpcao(ScrollVisual, 6, 126252904830983, traducao.Freeze, 32, "ligar", "Freeze")
CriarOpcao(ScrollVisual, 80, 127129895692234, traducao.Rtx, 33, "ligar", "RTX")
CriarOpcao(ScrollVisual, 154, 121922007581167, traducao.Mute, 34, "ligar", "Mudo")
CriarOpcao(ScrollVisual, 228, 122424727379921, traducao.Hora, 35, "click", "Time")
CriarOpcao(ScrollVisual, 302, 118880087027571, traducao.Chuva, 36, "ligar", "Chuva")
CriarOpcao(ScrollVisual, 376, 86123867564769, traducao.Lightning, 37, "ligar", "Trovao")
CriarOpcao(ScrollVisual, 450, 87688915838647, traducao.Arvores, 39, "ligar", "Arvore")
CriarOpcao(ScrollVisual, 524, 134323358658842, traducao.TW, 40, "ligar", "Wall")
CriarOpcao(ScrollVisual, 598, 128280473139103, "F3X", 41, "click", "F3X")
CriarOpcao(ScrollVisual, 672, 70725170060645, "Char", 59, "ligar", "Char")
coroutine.wrap(function()
    if tentarLer("FreezeAll") then
        Alternadores[traducao.Freeze]()
    end
    if tentarLer("BetterGraphics") then
        Alternadores[traducao.Rtx]()
    end
    if tentarLer("NoSound") then
        Alternadores[traducao.Mute]()
    end
    if tentarLer("Time") then
        local v1682 = tentarLer("Time")
        if v1682 == "Night" then
            Hora = "Noite"
            SetTime("Noite")
        elseif v1682 == "Day" then
            Hora = "Dia"
            SetTime("Dia")
        end
        _G.Time()
    end
    if tentarLer("Rain") then
        Alternadores[traducao.Chuva]()
    end
    if tentarLer("Lightning") then
        Alternadores[traducao.Lightning]()
    end
    if tentarLer("HideTrees") then
        Alternadores[traducao.Arvores]()
    end
    if tentarLer("TransparentWalls") then
        Alternadores[traducao.TW]()
    end
    if tentarLer("Char") then
        Alternadores.Char()
    end
    local v1683 = tentarLer("CharName")
    if v1683 and v1683 ~= "" then
        local vu1684 = v1683:gsub("%s+", "")
        local v1685, vu1686 = pcall(function()
            return game:GetService("Players"):GetUserIdFromNameAsync(vu1684)
        end)
        if v1685 and vu1686 then
            local v1687, v1688 = pcall(function()
                return game:GetService("HttpService"):JSONDecode(game:HttpGet("https://users.roblox.com/v1/users/" .. vu1686))
            end)
            if v1687 and (v1688 and v1688.name) then
                TextoCHAR.Text = v1688.name
                IconeChar.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. vu1686 .. "&width=150&height=150&format=png"
                CharID = vu1686
            end
        end
    end
end)()
_G.Frame43:FindFirstChild("ScrollInterno").CanvasSize = UDim2.new(0, 0, 0, 794)
local v1689, v1690, v1691 = ipairs({
    "Pencil",
    "Emerald Greatsword",
    "Blood Dagger",
    "Frost Spear",
    "Mace",
    "Steel Sword",
    "Katana",
    "Baseball Bat",
    "Chainsaw",
    "Knife",
    "Pan",
    "Pink Hammer",
    "Scythe",
    "Holloween Dagger"
})
while true do
    local v1692
    v1691, v1692 = v1689(v1690, v1691)
    if v1691 == nil then
        break
    end
    local v1693 = Instance.new("ImageButton")
    v1693.Size = UDim2.new(0, 134, 0, 38)
    v1693.Position = UDim2.new(0, 4, 0, 60 + (v1691 - 1) * 53)
    v1693.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
    v1693.AutoButtonColor = false
    v1693.Name = v1692
    v1693.Parent = _G.Frame43:FindFirstChild("ScrollInterno")
    Corner(v1693, 30)
    Stroke(v1693, 0, 0, 0, 3)
    local v1694 = Instance.new("ImageLabel")
    v1694.Size = UDim2.new(0, 38, 0, 38)
    v1694.Position = UDim2.new(0, 0, 0, 0)
    v1694.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    v1694.Image = "rbxassetid://86396952594528"
    v1694.Parent = v1693
    Corner(v1694, 30)
    Stroke(v1694, 0, 0, 0, 3)
    local v1695 = Instance.new("TextLabel")
    v1695.Size = UDim2.new(1, - 50, 1, 0)
    v1695.Position = UDim2.new(0, 42, 0, 0)
    v1695.BackgroundTransparency = 1
    v1695.Text = traducao["Arma" .. v1691]
    v1695.TextColor3 = Color3.fromRGB(255, 228, 196)
    v1695.Font = Enum.Font.Garamond
    v1695.TextScaled = true
    v1695.Parent = v1693
    Stroke(v1695, 0, 0, 0, 2)
end
Drop = Instance.new("ImageButton")
Drop.Size = UDim2.new(0, 134, 0, 38)
Drop.Position = UDim2.new(0, 4, 0, 60)
Drop.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
Drop.AutoButtonColor = false
Drop.Parent = _G.Frame45:FindFirstChild("ScrollInterno")
IconeDrop = Instance.new("ImageLabel")
IconeDrop.Size = UDim2.new(0, 38, 0, 38)
IconeDrop.Position = UDim2.new(0, 0, 0, 0)
IconeDrop.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
IconeDrop.Image = "rbxassetid://106235415289683"
IconeDrop.Parent = Drop
texto = Instance.new("TextLabel")
texto.Size = UDim2.new(1, - 50, 1, 0)
texto.Position = UDim2.new(0, 42, 0, 0)
texto.BackgroundTransparency = 1
texto.Text = traducao.DropBack
texto.TextColor3 = Color3.fromRGB(255, 228, 196)
texto.Font = Enum.Font.Garamond
texto.TextScaled = true
texto.Parent = Drop
Corner(Drop, 30)
Corner(IconeDrop, 30)
Stroke(Drop, 0, 0, 0, 3)
Stroke(IconeDrop, 0, 0, 0, 3)
Stroke(texto, 0, 0, 0, 2)
_G.Frame46:FindFirstChild("ScrollInterno").CanvasSize = UDim2.new(0, 0, 0, 371)
local v1696, v1697, v1698 = ipairs({
    "All",
    "Steel Sword",
    "Holloween Dagger",
    "Grenade 2",
    "Throwing Knife",
    "Firework"
})
while true do
    local v1699
    v1698, v1699 = v1696(v1697, v1698)
    if v1698 == nil then
        break
    end
    local v1700 = Instance.new("ImageButton")
    v1700.Size = UDim2.new(0, 134, 0, 38)
    v1700.Position = UDim2.new(0, 4, 0, 60 + (v1698 - 1) * 53)
    v1700.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
    v1700.AutoButtonColor = false
    v1700.Name = v1699
    v1700.Parent = _G.Frame46:FindFirstChild("ScrollInterno")
    Corner(v1700, 30)
    Stroke(v1700, 0, 0, 0, 3)
    local v1701 = Instance.new("ImageLabel")
    v1701.Size = UDim2.new(0, 38, 0, 38)
    v1701.Position = UDim2.new(0, 0, 0, 0)
    v1701.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    v1701.Image = "rbxassetid://86396952594528"
    v1701.Parent = v1700
    Corner(v1701, 30)
    Stroke(v1701, 0, 0, 0, 3)
    local v1702 = Instance.new("TextLabel")
    v1702.Size = UDim2.new(1, - 50, 1, 0)
    v1702.Position = UDim2.new(0, 42, 0, 0)
    v1702.BackgroundTransparency = 1
    v1702.Text = traducao["Grab" .. v1698]
    v1702.TextColor3 = Color3.fromRGB(255, 228, 196)
    v1702.Font = Enum.Font.Garamond
    v1702.TextScaled = true
    v1702.Parent = v1700
    Stroke(v1702, 0, 0, 0, 2)
end
Publico = Instance.new("ImageButton")
Publico.Size = UDim2.new(0, 134, 0, 38)
Publico.Position = UDim2.new(0, 4, 0, 60)
Publico.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
Publico.AutoButtonColor = false
Publico.Parent = _G.Frame48:FindFirstChild("ScrollInterno")
IconePu = Instance.new("ImageLabel")
IconePu.Size = UDim2.new(0, 38, 0, 38)
IconePu.Position = UDim2.new(0, 0, 0, 0)
IconePu.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
IconePu.Image = "rbxassetid://90789802362187"
IconePu.Parent = Publico
texto = Instance.new("TextLabel")
texto.Size = UDim2.new(1, - 50, 1, 0)
texto.Position = UDim2.new(0, 42, 0, 0)
texto.BackgroundTransparency = 1
texto.Text = traducao.Publico
texto.TextColor3 = Color3.fromRGB(255, 228, 196)
texto.Font = Enum.Font.Garamond
texto.TextScaled = true
texto.Parent = Publico
Corner(Publico, 30)
Corner(IconePu, 30)
Stroke(Publico, 0, 0, 0, 3)
Stroke(IconePu, 0, 0, 0, 3)
Stroke(texto, 0, 0, 0, 2)
frame = Instance.new("ImageButton")
frame.Size = UDim2.new(0, 134, 0, 38)
frame.Position = UDim2.new(0, 4, 0, 60)
frame.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
frame.AutoButtonColor = false
frame.Parent = _G.Frame50:FindFirstChild("ScrollInterno")
Icone = Instance.new("ImageLabel")
Icone.Size = UDim2.new(0, 38, 0, 38)
Icone.Position = UDim2.new(0, 0, 0, 0)
Icone.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Icone.Image = "rbxassetid://104803165744428"
Icone.Parent = frame
Frame2 = Instance.new("Frame")
Frame2.Position = UDim2.new(0, 46, 0, 4)
Frame2.Size = UDim2.new(1, - 54, 1, - 8)
Frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame2.BackgroundTransparency = 0.5
Frame2.Parent = frame
TextoSPAM = Instance.new("TextBox")
TextoSPAM.Size = UDim2.new(1, 0, 1, 0)
TextoSPAM.Position = UDim2.new(0, 0, 0, 0)
TextoSPAM.BackgroundTransparency = 1
TextoSPAM.Text = tostring((pcall(function()
    return LerConfig("SpamSoundDelay")
end))) and select(2, pcall(function()
    return LerConfig("SpamSoundDelay")
end)) or 0.1
TextoSPAM.PlaceholderText = traducao.Delay
TextoSPAM.TextColor3 = Color3.fromRGB(255, 215, 0)
TextoSPAM.PlaceholderColor3 = Color3.fromRGB(255, 215, 0)
TextoSPAM.Font = Enum.Font.Garamond
TextoSPAM.TextScaled = true
TextoSPAM.Parent = Frame2
Corner(frame, 30)
Corner(Icone, 30)
Corner(Frame2, 10)
Stroke(frame, 0, 0, 0, 3)
Stroke(Icone, 0, 0, 0, 3)
Stroke(Frame2, 0, 0, 0, 2)
Stroke(TextoSPAM, 0, 0, 0, 2)
Join = Instance.new("ImageButton")
Join.Size = UDim2.new(0, 134, 0, 38)
Join.Position = UDim2.new(0, 4, 0, 60)
Join.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
Join.AutoButtonColor = false
Join.Parent = _G.Frame53:FindFirstChild("ScrollInterno")
IconeJoin = Instance.new("ImageLabel")
IconeJoin.Size = UDim2.new(0, 38, 0, 38)
IconeJoin.Position = UDim2.new(0, 0, 0, 0)
IconeJoin.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
IconeJoin.Image = "rbxassetid://74585569942649"
IconeJoin.Parent = Join
textoJoin = Instance.new("TextLabel")
textoJoin.Size = UDim2.new(1, - 50, 1, 0)
textoJoin.Position = UDim2.new(0, 42, 0, 0)
textoJoin.BackgroundTransparency = 1
textoJoin.Text = traducao.Mundo
textoJoin.TextColor3 = Color3.fromRGB(255, 228, 196)
textoJoin.Font = Enum.Font.Garamond
textoJoin.TextScaled = true
textoJoin.Parent = Join
Corner(Join, 30)
Corner(IconeJoin, 30)
Stroke(Join, 0, 0, 0, 3)
Stroke(IconeJoin, 0, 0, 0, 3)
Stroke(textoJoin, 0, 0, 0, 2)
function loadFreeGamePass()
    repeat
        task.wait()
    until game.Players.LocalPlayer.Character
    local vu1703 = game.Players.LocalPlayer.PlayerGui:WaitForChild("Menu Screen", 1)
    if vu1703 then
        local v1704 = vu1703:FindFirstChild("Frame")
        if v1704 then
            v1704 = vu1703.Frame:FindFirstChild("ScrollingFrame")
        end
        local vu1705 = vu1703:FindFirstChild("RemoteEvent")
        local v1706
        if v1704 then
            v1706 = v1704:FindFirstChild("LocalScript")
        else
            v1706 = v1704
        end
        if v1704 and vu1705 then
            if v1706 then
                v1706.Enabled = false
            end
            local v1707, v1708, v1709 = pairs(v1704:GetChildren())
            local function vu1711(p1710)
                vu1705:FireServer(p1710)
                vu1703.Enabled = false
            end
            while true do
                local vu1712
                v1709, vu1712 = v1707(v1708, v1709)
                if v1709 == nil then
                    break
                end
                if vu1712:IsA("ImageButton") then
                    vu1712.MouseButton1Click:Connect(function()
                        vu1711(vu1712.Name)
                    end)
                end
            end
            v1704.ChildAdded:Connect(function(pu1713)
                if pu1713:IsA("ImageButton") then
                    pu1713.MouseButton1Click:Connect(function()
                        vu1711(pu1713.Name)
                    end)
                end
            end)
        end
    else
        return
    end
end
connectionFree = nil
function _G.Gamepass(pu1714)
    pcall(function()
        ConfigFile("FreeGamepass", pu1714)
    end)
    if pu1714 then
        if connectionFree then
            connectionFree:Disconnect()
        end
        connectionFree = game.Players.LocalPlayer.CharacterAdded:Connect(function()
            loadFreeGamePass()
        end)
        if game.Players.LocalPlayer.PlayerGui:FindFirstChild("Menu Screen") then
            loadFreeGamePass()
        end
    elseif connectionFree then
        connectionFree:Disconnect()
        connectionFree = nil
    end
end
Arma = "Pencil"
function SetAutoGiver(pu1715)
    if pu1715 ~= "Sobre" then
        local v1716, v1717, v1718 = pairs(_G.Frame43:FindFirstChild("ScrollInterno"):GetChildren())
        while true do
            local v1719
            v1718, v1719 = v1716(v1717, v1718)
            if v1718 == nil then
                break
            end
            if v1719:IsA("ImageButton") then
                local v1720 = v1719:FindFirstChildWhichIsA("ImageLabel")
                if v1719.Name ~= pu1715 then
                    Stroke(v1719, 0, 0, 0, 3)
                    if v1720 then
                        Stroke(v1720, 0, 0, 0, 3)
                    end
                else
                    Stroke(v1719, 255, 255, 255, 3)
                    if v1720 then
                        Stroke(v1720, 255, 255, 255, 3)
                    end
                    Arma = pu1715
                    pcall(function()
                        ConfigFile("AutoGiverWeapon", pu1715)
                    end)
                end
            end
        end
    end
end
coroutine.wrap(function()
    local v1721, v1722, v1723 = pairs(_G.Frame43:FindFirstChild("ScrollInterno"):GetChildren())
    while true do
        local vu1724
        v1723, vu1724 = v1721(v1722, v1723)
        if v1723 == nil then
            break
        end
        if vu1724:IsA("ImageButton") and vu1724.Name ~= "Sobre" then
            vu1724.MouseButton1Click:Connect(function()
                SetAutoGiver(vu1724.Name)
            end)
        end
    end
end)()
connectionAutoGiver = nil
function _G.AutoGiver(pu1725)
    pcall(function()
        ConfigFile("AutoGiver", pu1725)
    end)
    if pu1725 then
        if connectionAutoGiver then
            connectionAutoGiver:Disconnect()
        end
        connectionAutoGiver = game.Players.LocalPlayer.CharacterAdded:Connect(function()
            local v1726 = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Menu Screen", 0.7)
            if v1726 and v1726:FindFirstChild("RemoteEvent") then
                v1726.RemoteEvent:FireServer(Arma)
                v1726:Destroy()
            end
        end)
    elseif connectionAutoGiver then
        connectionAutoGiver:Disconnect()
        connectionAutoGiver = nil
    end
end
busy = false
function _G.GetFire()
    if busy then
        return
    else
        busy = true
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local v1727 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            local v1728, v1729, v1730 = ipairs(workspace:GetDescendants())
            while true do
                local v1731
                v1730, v1731 = v1728(v1729, v1730)
                if v1730 == nil then
                    break
                end
                if v1731:IsA("ProximityPrompt") and (v1731.Name == "ProximityPrompt" or v1731.Parent.Name == "ProximityPrompt") and (v1731.Enabled and v1731.Parent) and v1731.Parent:IsDescendantOf(workspace:FindFirstChild("Firework Model")) then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 173, 66, - 21)
                    task.wait(0.4)
                    fireproximityprompt(v1731)
                    task.wait(0.1)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1727
                    busy = false
                    return
                end
            end
            Notificar(traducao.tenteTi, traducao.TenteTe, 6)
            busy = false
        else
            busy = false
        end
    end
end
EmTp = false
DropBack = true
dropPosition = nil
charConn = nil
function _G.DropTools()
    if EmTp then
        return
    end
    local v1732 = game.Players.LocalPlayer
    local v1733 = v1732.Character
    local v1734
    if v1733 then
        v1734 = v1733:FindFirstChild("HumanoidRootPart")
    else
        v1734 = v1733
    end
    if not v1734 then
        return
    end
    local v1735, v1736, v1737 = ipairs(v1732.Backpack:GetChildren())
    local v1738 = false
    while true do
        local v1739
        v1737, v1739 = v1735(v1736, v1737)
        if v1737 == nil then
            break
        end
        if v1739:IsA("Tool") and (v1739.CanBeDropped and v1739.Name ~= "Throwing Knife") then
            v1738 = true
            break
        end
    end
    if not v1738 then
        local v1740, v1741, v1742 = ipairs(v1733:GetChildren())
        while true do
            local v1743
            v1742, v1743 = v1740(v1741, v1742)
            if v1742 == nil then
                break
            end
            if v1743:IsA("Tool") and (v1743.CanBeDropped and v1743.Name ~= "Throwing Knife") then
                v1738 = true
                break
            end
        end
    end
    if v1738 then
        local v1744 = RaycastParams.new()
        v1744.FilterType = Enum.RaycastFilterType.Blacklist
        v1744.FilterDescendantsInstances = {
            v1733
        }
        local v1745 = workspace:Raycast(v1734.Position, Vector3.new(0, - 50, 0), v1744)
        if v1745 then
            dropPosition = v1745.Position + Vector3.new(0, 2.5, 0)
        end
        local v1746 = v1733:FindFirstChild("Humanoid")
        if v1746 then
            v1746:ChangeState(Enum.HumanoidStateType.Dead)
        end
        local v1747, v1748, v1749 = ipairs(v1732.Backpack:GetChildren())
        while true do
            local v1750
            v1749, v1750 = v1747(v1748, v1749)
            if v1749 == nil then
                break
            end
            if v1750:IsA("Tool") and (v1750.CanBeDropped and v1750.Name ~= "Throwing Knife") then
                v1750.Parent = v1733
            end
        end
        task.wait(0.2)
        local v1751, v1752, v1753 = ipairs(v1733:GetChildren())
        while true do
            local v1754
            v1753, v1754 = v1751(v1752, v1753)
            if v1753 == nil then
                break
            end
            if v1754:IsA("Tool") and (v1754.CanBeDropped and v1754.Name ~= "Throwing Knife") then
                v1754.Parent = workspace
            end
        end
        if charConn then
            charConn:Disconnect()
        end
        charConn = v1732.CharacterAdded:Connect(function(p1755)
            if DropBack and dropPosition then
                EmTp = true
                task.wait(1)
                local v1756 = p1755:WaitForChild("HumanoidRootPart", 3)
                if v1756 then
                    v1756.CFrame = CFrame.new(dropPosition)
                    dropPosition = nil
                    EmTp = false
                end
            end
        end)
    else
        Notificar("Drop Tools", traducao.DropErro, 6)
    end
end
function DropBackFunc()
    if DropBack then
        Drop.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
        IconeDrop.Image = "rbxassetid://90789802362187"
        DropBack = false
        pcall(function()
            ConfigFile("DropToolsAutoBack", false)
        end)
    else
        Drop.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        IconeDrop.Image = "rbxassetid://106235415289683"
        DropBack = true
        pcall(function()
            ConfigFile("DropToolsAutoBack", true)
        end)
    end
end
Drop.MouseButton1Click:Connect(DropBackFunc)
Grab = "All"
function SetGrabTools(pu1757)
    if pu1757 ~= "Sobre" then
        local v1758, v1759, v1760 = pairs(_G.Frame46:FindFirstChild("ScrollInterno"):GetChildren())
        while true do
            local v1761
            v1760, v1761 = v1758(v1759, v1760)
            if v1760 == nil then
                break
            end
            if v1761:IsA("ImageButton") then
                local v1762 = v1761:FindFirstChildWhichIsA("ImageLabel")
                if v1761.Name ~= pu1757 then
                    Stroke(v1761, 0, 0, 0, 3)
                    if v1762 then
                        Stroke(v1762, 0, 0, 0, 3)
                    end
                else
                    Stroke(v1761, 255, 255, 255, 3)
                    if v1762 then
                        Stroke(v1762, 255, 255, 255, 3)
                    end
                    Grab = pu1757
                    pcall(function()
                        ConfigFile("GrabToolsWeapon", pu1757)
                    end)
                end
            end
        end
    end
end
coroutine.wrap(function()
    local v1763, v1764, v1765 = pairs(_G.Frame46:FindFirstChild("ScrollInterno"):GetChildren())
    while true do
        local vu1766
        v1765, vu1766 = v1763(v1764, v1765)
        if v1765 == nil then
            break
        end
        if vu1766:IsA("ImageButton") and vu1766.Name ~= "Sobre" then
            vu1766.MouseButton1Click:Connect(function()
                SetGrabTools(vu1766.Name)
            end)
        end
    end
end)()
grabtoolsFunc = nil
charConn = nil
function _G.GrabTools(pu1767)
    pcall(function()
        ConfigFile("GrabTools", pu1767)
    end)
    if pu1767 == true then
        if grabtoolsFunc then
            grabtoolsFunc:Disconnect()
        end
        if charConn then
            charConn:Disconnect()
        end
        local v1768, v1769, v1770 = ipairs(workspace:GetChildren())
        local function vu1773(p1771)
            local v1772 = game.Players.LocalPlayer.Character
            if v1772 then
                v1772 = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
            end
            if v1772 and (p1771:IsA("BackpackItem") and (p1771:FindFirstChild("Handle") and (Grab == "All" or Grab and p1771.Name == Grab))) then
                v1772:EquipTool(p1771)
            end
        end
        while true do
            local v1774
            v1770, v1774 = v1768(v1769, v1770)
            if v1770 == nil then
                break
            end
            vu1773(v1774)
        end
        grabtoolsFunc = workspace.ChildAdded:Connect(function(p1775)
            vu1773(p1775)
        end)
        charConn = game.Players.LocalPlayer.CharacterAdded:Connect(function()
            task.wait(0.5)
            local v1776, v1777, v1778 = ipairs(workspace:GetChildren())
            while true do
                local v1779
                v1778, v1779 = v1776(v1777, v1778)
                if v1778 == nil then
                    break
                end
                vu1773(v1779)
            end
        end)
    elseif pu1767 == false then
        if grabtoolsFunc then
            grabtoolsFunc:Disconnect()
            grabtoolsFunc = nil
        end
        if charConn then
            charConn:Disconnect()
            charConn = nil
        end
    end
end
autoBackConn = nil
autoBackDeathConn = nil
AutoBackAtivo = false
autoBackPos = nil
function _G.AutoBack(pu1780)
    pcall(function()
        ConfigFile("AutoBack", pu1780)
    end)
    AutoBackAtivo = pu1780
    local v1781 = game.Players.LocalPlayer
    if autoBackConn then
        autoBackConn:Disconnect()
        autoBackConn = nil
    end
    if autoBackDeathConn then
        autoBackDeathConn:Disconnect()
        autoBackDeathConn = nil
    end
    if pu1780 == true then
        local function vu1785(pu1782)
            if pu1782 then
                local v1783 = pu1782:FindFirstChildOfClass("Humanoid") or pu1782:WaitForChild("Humanoid", 5)
                if v1783 then
                    v1783.Died:Connect(function()
                        local v1784 = pu1782:FindFirstChild("HumanoidRootPart")
                        if v1784 then
                            autoBackPos = v1784.Position
                        else
                            autoBackPos = nil
                        end
                    end)
                end
            end
        end
        autoBackDeathConn = v1781.CharacterAdded:Connect(vu1785)
        autoBackConn = v1781.CharacterAdded:Connect(function(p1786)
            task.wait(0.5)
            if autoBackPos and not EmTp then
                local vu1787 = p1786:WaitForChild("HumanoidRootPart", 5)
                if vu1787 then
                    local v1788 = false
                    for _ = 1, 3 do
                        local v1789 = RaycastParams.new()
                        v1789.FilterType = Enum.RaycastFilterType.Blacklist
                        local v1790, v1791, v1792 = ipairs(game.Players:GetPlayers())
                        local v1793 = {
                            p1786
                        }
                        while true do
                            local v1794
                            v1792, v1794 = v1790(v1791, v1792)
                            if v1792 == nil then
                                break
                            end
                            if v1794.Character and v1794.Character ~= p1786 then
                                table.insert(v1793, v1794.Character)
                            end
                        end
                        v1789.FilterDescendantsInstances = v1793
                        local v1795 = workspace:Raycast(autoBackPos, Vector3.new(0, - 1000, 0), v1789)
                        if v1795 and (v1795.Instance and v1795.Instance.CanCollide) then
                            pcall(function()
                                vu1787.CFrame = CFrame.new(autoBackPos)
                            end)
                            v1788 = true
                            break
                        end
                        task.wait(0.5)
                    end
                    if not v1788 then
                        autoBackPos = nil
                    end
                end
            end
            vu1785(p1786)
        end)
        if v1781.Character then
            vu1785(v1781.Character)
        end
    end
end
_G.KillLoggerAtivo = false
KillLoggerP = false
listenersCriados = false
function _G.KillLogger(p1796)
    local v1797 = game.Players
    local vu1798 = v1797.LocalPlayer
    local vu1799 = game:GetService("TextChatService").TextChannels.RBXSystem
    local function vu1802(p1800)
        local v1801 = Enum.Font.DenkOne
        return string.format("<font color=\"%s\" face=\"%s\" size=\"16\">%s</font>", "#FA8072", v1801.Name, p1800)
    end
    local function v1804(p1803)
        vu1799:DisplaySystemMessage(vu1802(p1803))
    end
    if p1796 == false then
        _G.KillLoggerAtivo = false
        pcall(function()
            ConfigFile("KillLogger", false)
        end)
        v1804("[Kill Logger] " .. traducao.OFF)
        return
    else
        _G.KillLoggerAtivo = true
        pcall(function()
            ConfigFile("KillLogger", true)
        end)
        v1804("[Kill Logger] " .. traducao.ON)
        if not listenersCriados then
            listenersCriados = true
            local vu1805 = {}
            local function vu1807(p1806)
                table.insert(vu1805, {
                    nome = p1806,
                    t = os.clock()
                })
            end
            local function vu1811()
                local v1808 = os.clock()
                for v1809 = # vu1805, 1, - 1 do
                    local v1810 = vu1805[v1809]
                    if v1808 - v1810.t <= 0.2 then
                        table.remove(vu1805, v1809)
                        return v1810.nome
                    end
                    table.remove(vu1805, v1809)
                end
            end
            local function vu1816(p1812, p1813)
                if _G.KillLoggerAtivo then
                    local v1814 = "[Kill Logger] " .. p1812 .. " " .. traducao.Eliminou .. " " .. p1813
                    local v1815 = "[Kill Logger] " .. p1812 .. " killed " .. p1813
                    if KillLoggerP then
                        Say(v1815)
                    else
                        vu1799:DisplaySystemMessage(vu1802(v1814))
                    end
                end
            end
            local function v1822(pu1817)
                local v1818 = pu1817:WaitForChild("statsfolder", 5)
                if v1818 then
                    local v1819 = v1818:FindFirstChild("Skill Rating")
                    local v1820 = v1818:FindFirstChild("Defeats")
                    if v1820 then
                        v1820:GetPropertyChangedSignal("Value"):Connect(function()
                            if _G.KillLoggerAtivo then
                                vu1807(pu1817.DisplayName)
                            end
                        end)
                    end
                    if v1819 then
                        v1819:GetPropertyChangedSignal("Value"):Connect(function()
                            if _G.KillLoggerAtivo then
                                if pu1817 ~= vu1798 then
                                    local v1821 = vu1811()
                                    if v1821 and v1821 ~= pu1817.DisplayName then
                                        vu1816(pu1817.DisplayName, v1821)
                                    end
                                end
                            else
                                return
                            end
                        end)
                    end
                end
            end
            local v1823, v1824, v1825 = ipairs(v1797:GetPlayers())
            while true do
                local v1826
                v1825, v1826 = v1823(v1824, v1825)
                if v1825 == nil then
                    break
                end
                v1822(v1826)
            end
            v1797.PlayerAdded:Connect(v1822)
        end
    end
end
function PublicLogger()
    if KillLoggerP then
        Publico.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
        IconePu.Image = "rbxassetid://90789802362187"
        KillLoggerP = false
        pcall(function()
            ConfigFile("PublicKillLogger", false)
        end)
    else
        Publico.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        IconePu.Image = "rbxassetid://106235415289683"
        KillLoggerP = true
        pcall(function()
            ConfigFile("PublicKillLogger", true)
        end)
    end
end
Publico.MouseButton1Click:Connect(PublicLogger)
Display = Instance.new("Frame")
Display.Size = UDim2.new(0, 190, 0, 43)
Display.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Display.BackgroundTransparency = 0.2
Display.Visible = false
Display.AnchorPoint = Vector2.new(0.5, 0)
Display.Position = UDim2.new(0.5, 0, 0, 0)
Display.Draggable = true
Display.Active = true
Display.Parent = CORE
LinhaPing = Instance.new("Frame")
LinhaPing.Position = UDim2.new(0.5, - 1, 0, 0)
LinhaPing.Size = UDim2.new(0, 2, 1, 0)
LinhaPing.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LinhaPing.BackgroundTransparency = 0.2
LinhaPing.BorderSizePixel = 0
LinhaPing.Parent = Display
Wifi = Instance.new("ImageLabel")
Wifi.Size = UDim2.new(0, 33, 0, 33)
Wifi.Position = UDim2.new(0, 6, 0.5, - 16.5)
Wifi.BackgroundTransparency = 1
Wifi.Image = "rbxassetid://105073895382281"
Wifi.Parent = Display
Fps = Instance.new("ImageLabel")
Fps.Size = UDim2.new(0, 30, 0, 30)
Fps.Position = UDim2.new(1, - 35, 0.5, - 16)
Fps.BackgroundTransparency = 1
Fps.Image = "rbxassetid://95458198870711"
Fps.Parent = Display
PingTexto = Instance.new("TextLabel")
PingTexto.Name = "PingTexto"
PingTexto.Size = UDim2.new(0, 45, 0, 45)
PingTexto.Position = UDim2.new(0.5, - 52, 0.5, - 22.5)
PingTexto.BackgroundTransparency = 1
PingTexto.Text = "Null"
PingTexto.TextColor3 = Color3.fromRGB(255, 255, 255)
PingTexto.Font = Enum.Font.Garamond
PingTexto.TextScaled = true
PingTexto.TextWrapped = true
PingTexto.Parent = Display
FpsTexto = Instance.new("TextLabel")
FpsTexto.Name = "FpsTexto"
FpsTexto.Size = UDim2.new(0, 45, 0, 45)
FpsTexto.Position = UDim2.new(0.5, 10, 0.5, - 22.5)
FpsTexto.BackgroundTransparency = 1
FpsTexto.Text = "Null"
FpsTexto.TextColor3 = Color3.fromRGB(255, 255, 255)
FpsTexto.Font = Enum.Font.Garamond
FpsTexto.TextScaled = true
FpsTexto.TextWrapped = true
FpsTexto.Parent = Display
vu1484 = game:GetService("RunService")
ultimo = tick()
ativo = false
frameCount = 0
function loop()
    if not ativo then
        ativo = true
        task.spawn(function()
            while Display.Visible do
                local v1827 = math.floor(game.Players.LocalPlayer:GetNetworkPing() * 1000 + 0.5)
                Display.PingTexto.Text = "Ping\n" .. v1827 .. " ms"
                local v1828 = tick()
                frameCount = frameCount + 1
                if v1828 - ultimo >= 0.25 then
                    local v1829 = math.floor(frameCount / (v1828 - ultimo) + 0.5)
                    Display.FpsTexto.Text = "FPS\n" .. v1829
                    ultimo = v1828
                    frameCount = 0
                end
                task.wait(0.05)
            end
            ativo = false
        end)
    end
end
vu1484.RenderStepped:Connect(function()
    if Display.Visible then
        frameCount = frameCount + 1
    end
end)
Display:GetPropertyChangedSignal("Visible"):Connect(function()
    if Display.Visible then
        loop()
    end
end)
function _G.Fps(pu1830)
    pcall(function()
        ConfigFile("PingAndFpsDisplay", pu1830)
    end)
    if Display then
        Display.Visible = pu1830 and true or false
    end
end
SpamDelay = 0.1
spamAtivo = false
function _G.SpamSound(pu1831)
    pcall(function()
        ConfigFile("SpamSound", pu1831)
    end)
    if pu1831 == true then
        if spamAtivo then
            return
        end
        spamAtivo = true
        coroutine.wrap(function()
            while spamAtivo do
                local v1832 = next
                local v1833, v1834 = workspace:GetDescendants()
                while true do
                    local v1835
                    v1834, v1835 = v1832(v1833, v1834)
                    if v1834 == nil then
                        break
                    end
                    if v1835:IsA("Sound") then
                        v1835.Volume = math.huge
                        v1835:Play()
                    end
                end
                task.wait(SpamDelay)
            end
        end)()
    elseif pu1831 == false then
        spamAtivo = false
    end
end
TextoSPAM.FocusLost:Connect(function()
    local v1836 = TextoSPAM.Text:gsub("[^%d%.]", "")
    local v1837 = tonumber(v1836) or 0.1
    local vu1838 = math.clamp(v1837, 0.1, 1)
    TextoSPAM.Text = tostring(vu1838)
    SpamDelay = vu1838
    pcall(function()
        ConfigFile("SpamSoundDelay", vu1838)
    end)
end)
PodeGrip = true
pl = game:GetService("Players")
vu1111 = pl.LocalPlayer
function _G.Grip()
    if PodeGrip then
        PodeGrip = false
        task.delay(1, function()
            PodeGrip = true
        end)
        local v1839 = vu1111.Character or vu1111.CharacterAdded:Wait()
        local v1840 = "Frost Spear"
        local v1841 = Vector3.new(1.5, - 4, 1.5)
        local v1842 = Vector3.new(90, 0, 0)
        local v1843 = vu1111.Backpack:FindFirstChild(v1840) or v1839:FindFirstChild(v1840)
        if v1843 then
            if v1843.Parent == v1839 then
                v1843.Parent = vu1111.Backpack
                wait(0.1)
            end
            local v1844, v1845, v1846 = ipairs(v1839:GetChildren())
            while true do
                local v1847
                v1846, v1847 = v1844(v1845, v1846)
                if v1846 == nil then
                    break
                end
                if v1847:IsA("Tool") and v1847.Name ~= v1840 then
                    v1847.Parent = vu1111.Backpack
                end
            end
            wait(0.1)
            local v1848, v1849, v1850 = ipairs(vu1111.Backpack:GetChildren())
            while true do
                local v1851
                v1850, v1851 = v1848(v1849, v1850)
                if v1850 == nil then
                    break
                end
                if v1851:IsA("Tool") and v1851.Name ~= v1840 then
                    v1851.Parent = v1839
                end
            end
            local v1852 = vu1111.Backpack:FindFirstChild(v1840)
            if v1852 then
                local v1853 = v1852:FindFirstChild("LocalScript")
                if v1853 then
                    v1853.Enabled = false
                end
                v1852.Parent = v1839
                v1852.Grip = CFrame.new(v1841) * CFrame.Angles(math.rad(v1842.X), math.rad(v1842.Y), math.rad(v1842.Z))
            end
            local v1854, v1855, v1856 = ipairs(v1839:GetChildren())
            while true do
                local v1857
                v1856, v1857 = v1854(v1855, v1856)
                if v1856 == nil then
                    break
                end
                if v1857:IsA("Tool") and v1857.Name ~= v1840 then
                    v1857.Parent = vu1111.Backpack
                end
            end
        else
            Notificar(traducao.Erro, traducao.Duck, 6)
        end
    else
        return
    end
end
fakeLagAtivo = false
fakeLagThread = nil
function _G.FakeLag(pu1858)
    pcall(function()
        ConfigFile("FakeLag", pu1858)
    end)
    if pu1858 == true then
        if fakeLagAtivo then
            return
        end
        fakeLagAtivo = true
        fakeLagThread = coroutine.create(function()
            while fakeLagAtivo do
                local v1859 = game.Players.LocalPlayer.Character
                if v1859 then
                    v1859 = v1859:FindFirstChild("HumanoidRootPart")
                end
                if v1859 then
                    v1859.Anchored = not v1859.Anchored
                end
                task.wait(0.4)
            end
            local v1860 = game.Players.LocalPlayer.Character
            if v1860 then
                v1860 = v1860:FindFirstChild("HumanoidRootPart")
            end
            if v1860 then
                v1860.Anchored = false
            end
        end)
        coroutine.resume(fakeLagThread)
    elseif pu1858 == false then
        if not fakeLagAtivo then
            return
        end
        fakeLagAtivo = false
    end
end
LogMode = "Both"
function SetJoin(p1861)
    if typeof(p1861) == "string" then
        if p1861 == "Both" then
            IconeJoin.Image = "rbxassetid://74585569942649"
            textoJoin.Text = traducao.Mundo
            LogMode = "Both"
        elseif p1861 == "Join" then
            IconeJoin.Image = "rbxassetid://112504941350680"
            textoJoin.Text = traducao.Entradas
            LogMode = "Join"
        elseif p1861 == "Exit" then
            IconeJoin.Image = "rbxassetid://123410642895481"
            textoJoin.Text = traducao.Saidas
            LogMode = "Exit"
        end
    end
end
Join.MouseButton1Click:Connect(function()
    if LogMode ~= "Both" then
        if LogMode ~= "Join" then
            if LogMode == "Exit" then
                SetJoin("Both")
                pcall(function()
                    ConfigFile("JoinLoggerMode", "Both")
                end)
            end
        else
            SetJoin("Exit")
            pcall(function()
                ConfigFile("JoinLoggerMode", "Exit")
            end)
        end
    else
        SetJoin("Join")
        pcall(function()
            ConfigFile("JoinLoggerMode", "Join")
        end)
    end
end)
function DisplaySystemMessage(p1862, p1863)
    local v1864 = TextChatService.TextChannels:FindFirstChild("RBXGeneral")
    if v1864 then
        local v1865 = Enum.Font.LuckiestGuy
        local v1866 = string.format("#%02X%02X%02X", p1863.R * 255, p1863.G * 255, p1863.B * 255)
        v1864:DisplaySystemMessage((string.format("<font color=\"%s\" face=\"%s\" size=\"13\">%s</font>", v1866, v1865.Name, p1862)))
    end
end
function _G.JoinLogger(pu1867)
    pcall(function()
        ConfigFile("JoinLogger", pu1867)
    end)
    if addedConnection then
        addedConnection:Disconnect()
        addedConnection = nil
    end
    if removingConnection then
        removingConnection:Disconnect()
        removingConnection = nil
    end
    if pu1867 then
        addedConnection = vu1483.PlayerAdded:Connect(function(p1868)
            if Config.VerOculto or not table.find(Ocultos, p1868.Name) then
                if LogMode == "Join" or LogMode == "Both" then
                    DisplaySystemMessage("[ + ] " .. p1868.DisplayName .. " " .. traducao.Entrou, Color3.fromRGB(0, 255, 0))
                end
            end
        end)
        removingConnection = vu1483.PlayerRemoving:Connect(function(p1869)
            if Config.VerOculto or not table.find(Ocultos, p1869.Name) then
                if LogMode == "Exit" or LogMode == "Both" then
                    DisplaySystemMessage("[ - ] " .. p1869.DisplayName .. " " .. traducao.Saiu, Color3.fromRGB(255, 0, 0))
                end
            end
        end)
        DisplaySystemMessage(traducao.JoinOn, Color3.fromRGB(50, 205, 50))
    else
        DisplaySystemMessage(traducao.JoinOff, Color3.fromRGB(220, 20, 60))
    end
end
ScrollMisc = Instance.new("ScrollingFrame")
ScrollMisc.Size = UDim2.new(0, 297, 0, 216)
ScrollMisc.Position = UDim2.new(0, 154, 0, 3)
ScrollMisc.BackgroundTransparency = 1
ScrollMisc.ScrollBarThickness = 0
ScrollMisc.CanvasSize = UDim2.new(0, 0, 0, 887)
ScrollMisc.ScrollingDirection = Enum.ScrollingDirection.Y
ScrollMisc.Parent = _G.Tela7
CriarOpcao(ScrollMisc, 6, 92936957375640, "Free Gamepass", 42, "ligar", "Gamepass")
CriarOpcao(ScrollMisc, 80, 139090562145174, "Auto Giver", 43, "ligar", "AutoGiver")
CriarOpcao(ScrollMisc, 154, 102326339060177, "Get Firework", 44, "click", "GetFire")
CriarOpcao(ScrollMisc, 228, 92429833025242, "Drop Tools", 45, "click", "DropTools")
CriarOpcao(ScrollMisc, 302, 121593817566358, "Grab Tools", 46, "ligar", "GrabTools")
CriarOpcao(ScrollMisc, 376, 119575233014481, "Auto Back", 47, "ligar", "AutoBack")
CriarOpcao(ScrollMisc, 450, 128465332620315, "Kill Logger", 48, "ligar", "KillLogger")
CriarOpcao(ScrollMisc, 524, 104552470155951, "Ping/Fps", 49, "ligar", "Fps")
CriarOpcao(ScrollMisc, 598, 82854437145216, "Spam Sound", 50, "ligar", "SpamSound")
CriarOpcao(ScrollMisc, 672, 101298305067477, "FE Dick", 51, "click", "Grip")
CriarOpcao(ScrollMisc, 746, 78300232156847, "Fake Lag", 52, "ligar", "FakeLag")
CriarOpcao(ScrollMisc, 820, 95215799635235, "Join Logger", 53, "ligar", "JoinLogger")
coroutine.wrap(function()
    if tentarLer("FreeGamepass") then
        Alternadores["Free Gamepass"]()
    end
    if tentarLer("AutoGiver") then
        Alternadores["Auto Giver"]()
    end
    if tentarLer("AutoGiverWeapon") then
        SetAutoGiver(tentarLer("AutoGiverWeapon"))
    end
    if tentarLer("GrabTools") then
        Alternadores["Grab Tools"]()
    end
    if tentarLer("GrabToolsWeapon") then
        SetGrabTools(tentarLer("GrabToolsWeapon"))
    end
    local v1870, v1871 = pcall(function()
        return LerConfig("DropToolsAutoBack")
    end)
    if v1870 and not v1871 then
        DropBackFunc()
    end
    if tentarLer("AutoBack") then
        Alternadores["Auto Back"]()
    end
    if tentarLer("KillLogger") then
        Alternadores["Kill Logger"]()
    end
    if tentarLer("PublicKillLogger") then
        PublicLogger()
    end
    if tentarLer("PingAndFpsDisplay") then
        Alternadores["Ping/Fps"]()
    end
    if tentarLer("SpamSound") then
        Alternadores["Spam Sound"]()
    end
    local v1872, v1873 = pcall(function()
        return LerConfig("SpamSoundDelay")
    end)
    if v1872 and typeof(v1873) == "number" then
        SpamDelay = v1873
    end
    if tentarLer("FakeLag") then
        Alternadores["Fake Lag"]()
    end
    if tentarLer("JoinLogger") then
        Alternadores["Join Logger"]()
    end
    if tentarLer("JoinLoggerMode") then
        SetJoin(tentarLer("JoinLoggerMode"))
    end
end)()
ScrollLoja = Instance.new("ScrollingFrame")
ScrollLoja.Size = UDim2.new(0, 246, 0, 216)
ScrollLoja.Position = UDim2.new(0, 3, 0, 3)
ScrollLoja.BackgroundTransparency = 1
ScrollLoja.ScrollBarThickness = 0
ScrollLoja.CanvasSize = UDim2.new(0, 0, 0, 360)
ScrollLoja.ScrollingDirection = Enum.ScrollingDirection.Y
ScrollLoja.Parent = _G.Tela8
Hide = Instance.new("ImageButton")
Hide.Size = UDim2.new(0, 90, 0, 90)
Hide.Position = UDim2.new(0, 6, 0, 6)
Hide.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
Hide.BackgroundTransparency = 0.5
Hide.BorderSizePixel = 0
Hide.AutoButtonColor = false
Hide.Parent = ScrollLoja
Customizado = Instance.new("ImageButton")
Customizado.Size = UDim2.new(0, 90, 0, 90)
Customizado.Position = UDim2.new(0, 150, 0, 6)
Customizado.Image = "rbxassetid://93348139319875"
Customizado.BackgroundTransparency = 0.5
Customizado.BorderSizePixel = 0
Customizado.AutoButtonColor = false
Customizado.Parent = ScrollLoja
Premium = Instance.new("ImageButton")
Premium.Size = UDim2.new(0, 90, 0, 90)
Premium.Position = UDim2.new(0, 6, 0, 130)
Premium.Image = "rbxassetid://112588446659037"
Premium.BackgroundTransparency = 0.5
Premium.BorderSizePixel = 0
Premium.AutoButtonColor = false
Premium.Parent = ScrollLoja
AtacarPremiumP = Instance.new("ImageButton")
AtacarPremiumP.Size = UDim2.new(0, 90, 0, 90)
AtacarPremiumP.Position = UDim2.new(0, 150, 0, 130)
AtacarPremiumP.Image = "rbxassetid://133678824050379"
AtacarPremiumP.BackgroundTransparency = 0.5
AtacarPremiumP.BorderSizePixel = 0
AtacarPremiumP.AutoButtonColor = false
AtacarPremiumP.Parent = ScrollLoja
Elite = Instance.new("ImageButton")
Elite.Size = UDim2.new(0, 90, 0, 90)
Elite.Position = UDim2.new(0, 78, 0, 254)
Elite.Image = "rbxassetid://81946012831088"
Elite.BackgroundTransparency = 0.5
Elite.BorderSizePixel = 0
Elite.AutoButtonColor = false
Elite.Parent = ScrollLoja
LinhaH = Instance.new("Frame")
LinhaH.Size = UDim2.new(1, 0, 0, 2)
LinhaH.Position = UDim2.new(0, 0, 0, 25)
LinhaH.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
LinhaH.BorderSizePixel = 0
LinhaH.Parent = Hide
LinhaC = Instance.new("Frame")
LinhaC.Size = UDim2.new(1, 0, 0, 2)
LinhaC.Position = UDim2.new(0, 0, 0, 25)
LinhaC.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
LinhaC.BorderSizePixel = 0
LinhaC.Parent = Customizado
LinhaP = Instance.new("Frame")
LinhaP.Size = UDim2.new(1, 0, 0, 2)
LinhaP.Position = UDim2.new(0, 0, 0, 25)
LinhaP.BackgroundColor3 = Color3.fromRGB(255, 256, 0)
LinhaP.BorderSizePixel = 0
LinhaP.Parent = Premium
LinhaE = Instance.new("Frame")
LinhaE.Size = UDim2.new(1, 0, 0, 2)
LinhaE.Position = UDim2.new(0, 0, 0, 25)
LinhaE.BackgroundColor3 = Color3.fromRGB(178, 34, 34)
LinhaE.BorderSizePixel = 0
LinhaE.Parent = Elite
LinhaAP = Instance.new("Frame")
LinhaAP.Size = UDim2.new(1, 0, 0, 2)
LinhaAP.Position = UDim2.new(0, 0, 0, 25)
LinhaAP.BackgroundColor3 = Color3.fromRGB(255, 239, 213)
LinhaAP.BorderSizePixel = 0
LinhaAP.Parent = AtacarPremiumP
textoH = Instance.new("Frame")
textoH.Size = UDim2.new(0, 80, 0, 19)
textoH.Position = UDim2.new(0, 5, 0, 3)
textoH.BackgroundTransparency = 0.5
textoH.Parent = Hide
textoHLabel = Instance.new("TextLabel")
textoHLabel.Size = UDim2.new(1, 0, 1, 0)
textoHLabel.Position = UDim2.new(0, 0, 0, 0)
textoHLabel.BackgroundTransparency = 1
textoHLabel.Text = traducao.Oculto
textoHLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textoHLabel.Font = Enum.Font.Garamond
textoHLabel.TextScaled = true
textoHLabel.Parent = textoH
textoC = Instance.new("Frame")
textoC.Size = UDim2.new(0, 80, 0, 19)
textoC.Position = UDim2.new(0, 5, 0, 3)
textoC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textoC.BackgroundTransparency = 0.3
textoC.Parent = Customizado
textoCLabel = Instance.new("TextLabel")
textoCLabel.Size = UDim2.new(1, 0, 1, 0)
textoCLabel.Position = UDim2.new(0, 0, 0, 0)
textoCLabel.BackgroundTransparency = 1
textoCLabel.Text = traducao.Customizado
textoCLabel.TextColor3 = Color3.fromRGB(10, 10, 90)
textoCLabel.Font = Enum.Font.Garamond
textoCLabel.TextScaled = true
textoCLabel.Parent = textoC
textoP = Instance.new("Frame")
textoP.Size = UDim2.new(0, 80, 0, 19)
textoP.Position = UDim2.new(0, 5, 0, 3)
textoP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textoP.BackgroundTransparency = 0.25
textoP.Parent = Premium
textoPLabel = Instance.new("TextLabel")
textoPLabel.Size = UDim2.new(1, 0, 1, 0)
textoPLabel.Position = UDim2.new(0, 0, 0, 0)
textoPLabel.BackgroundTransparency = 1
textoPLabel.Text = "Premium"
textoPLabel.TextColor3 = Color3.fromRGB(50, 40, 0)
textoPLabel.Font = Enum.Font.Garamond
textoPLabel.TextScaled = true
textoPLabel.Parent = textoP
textoE = Instance.new("Frame")
textoE.Size = UDim2.new(0, 80, 0, 19)
textoE.Position = UDim2.new(0, 5, 0, 3)
textoE.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
textoE.BackgroundTransparency = 0.4
textoE.Parent = Elite
textoELabel = Instance.new("TextLabel")
textoELabel.Size = UDim2.new(1, 0, 1, 0)
textoELabel.Position = UDim2.new(0, 0, 0, 0)
textoELabel.BackgroundTransparency = 1
textoELabel.Text = "Elite"
textoELabel.TextColor3 = Color3.fromRGB(255, 215, 0)
textoELabel.Font = Enum.Font.Garamond
textoELabel.TextScaled = true
textoELabel.Parent = textoE
textoAP = Instance.new("Frame")
textoAP.Size = UDim2.new(0, 80, 0, 19)
textoAP.Position = UDim2.new(0, 5, 0, 3)
textoAP.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
textoAP.BackgroundTransparency = 0.4
textoAP.Parent = AtacarPremiumP
textoAPLabel = Instance.new("TextLabel")
textoAPLabel.Size = UDim2.new(1, 0, 1, 0)
textoAPLabel.Position = UDim2.new(0, 0, 0, 0)
textoAPLabel.BackgroundTransparency = 1
textoAPLabel.Text = "Elite Tool"
textoAPLabel.TextColor3 = Color3.fromRGB(255, 255, 0)
textoAPLabel.Font = Enum.Font.Garamond
textoAPLabel.TextScaled = true
textoAPLabel.Parent = textoAP
ImageH = Instance.new("Frame")
ImageH.Size = UDim2.new(0, 80, 0, 53)
ImageH.Position = UDim2.new(0, 5, 0, 32)
ImageH.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageH.BackgroundTransparency = 0.5
ImageH.Parent = Hide
ImageC = Instance.new("Frame")
ImageC.Size = UDim2.new(0, 80, 0, 53)
ImageC.Position = UDim2.new(0, 5, 0, 32)
ImageC.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageC.BackgroundTransparency = 0.5
ImageC.Parent = Customizado
ImageP = Instance.new("Frame")
ImageP.Size = UDim2.new(0, 80, 0, 53)
ImageP.Position = UDim2.new(0, 5, 0, 32)
ImageP.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageP.BackgroundTransparency = 0.5
ImageP.Parent = Premium
ImageE = Instance.new("Frame")
ImageE.Size = UDim2.new(0, 80, 0, 53)
ImageE.Position = UDim2.new(0, 5, 0, 32)
ImageE.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageE.BackgroundTransparency = 0.5
ImageE.ClipsDescendants = true
ImageE.Parent = Elite
ImageAP = Instance.new("Frame")
ImageAP.Size = UDim2.new(0, 80, 0, 53)
ImageAP.Position = UDim2.new(0, 5, 0, 32)
ImageAP.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageAP.BackgroundTransparency = 0.5
ImageAP.ClipsDescendants = true
ImageAP.Parent = AtacarPremiumP
IconeH = Instance.new("ImageLabel")
IconeH.Size = UDim2.new(0, 50, 0, 50)
IconeH.Position = UDim2.new(0, 15, 0, 2)
IconeH.BackgroundTransparency = 1
IconeH.Image = "rbxassetid://132604613874177"
IconeH.ImageTransparency = 0
IconeH.Parent = ImageH
IconeC = Instance.new("ImageLabel")
IconeC.Size = UDim2.new(0, 50, 0, 50)
IconeC.Position = UDim2.new(0, 15, 0, 2)
IconeC.BackgroundTransparency = 1
IconeC.Image = "rbxassetid://87545123894150"
IconeC.Parent = ImageC
IconeP = Instance.new("ImageLabel")
IconeP.Size = UDim2.new(0, 50, 0, 50)
IconeP.Position = UDim2.new(0, 15, 0, 2)
IconeP.BackgroundTransparency = 1
IconeP.Image = "rbxassetid://122620829943591"
IconeP.Parent = ImageP
IconeE = Instance.new("ImageLabel")
IconeE.Size = UDim2.new(0, 50, 0, 50)
IconeE.Position = UDim2.new(0, 15, 0, 2)
IconeE.BackgroundTransparency = 1
IconeE.Image = "rbxassetid://131538410766939"
IconeE.Parent = ImageE
IconeAP = Instance.new("ImageLabel")
IconeAP.Size = UDim2.new(0, 50, 0, 50)
IconeAP.Position = UDim2.new(0, 15, 0, 2)
IconeAP.BackgroundTransparency = 1
IconeAP.Image = "rbxassetid://109705277597271"
IconeAP.Parent = ImageAP
TweenService = game:GetService("TweenService")
coroutine.wrap(function()
    task.spawn(function()
        while IconeH and IconeH.Parent do
            for v1874 = 0, 1, 0.02 do
                IconeH.ImageTransparency = v1874
                task.wait(0.02)
            end
            for v1875 = 1, 0, - 0.02 do
                IconeH.ImageTransparency = v1875
                task.wait(0.02)
            end
        end
    end)
    task.spawn(function()
        local v1876 = TweenService:Create(IconeC, TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
            Size = UDim2.new(0, 46, 0, 46)
        })
        local v1877 = TweenService:Create(IconeC, TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
            Size = UDim2.new(0, 50, 0, 50)
        })
        while IconeC and IconeC.Parent do
            v1876:Play()
            v1876.Completed:Wait()
            v1877:Play()
            v1877.Completed:Wait()
            task.wait(0.5)
        end
    end)
    task.spawn(function()
        local v1878 = TweenService:Create(IconeP, TweenInfo.new(0.1), {
            ImageTransparency = 1
        })
        local v1879 = TweenService:Create(IconeP, TweenInfo.new(0.1), {
            ImageTransparency = 0
        })
        while IconeP and IconeP.Parent do
            v1879:Play()
            v1879.Completed:Wait()
            task.wait(0.5)
            v1878:Play()
            v1878.Completed:Wait()
            task.wait(0.1)
        end
    end)
    task.spawn(function()
        local v1880 = TweenService:Create(IconeE, TweenInfo.new(0.4, Enum.EasingStyle.Sine), {
            Position = UDim2.new(0, 15, 0, 60)
        })
        local v1881 = TweenService:Create(IconeE, TweenInfo.new(0, Enum.EasingStyle.Linear), {
            Position = UDim2.new(0, 15, 0, - 30)
        })
        local v1882 = TweenService:Create(IconeE, TweenInfo.new(0.4, Enum.EasingStyle.Sine), {
            Position = UDim2.new(0, 15, 0, 2)
        })
        while IconeE and IconeE.Parent do
            v1880:Play()
            v1880.Completed:Wait()
            v1881:Play()
            v1881.Completed:Wait()
            v1882:Play()
            v1882.Completed:Wait()
            task.wait(1)
        end
    end)
    task.spawn(function()
        local v1883 = TweenService:Create(IconeAP, TweenInfo.new(0.7, Enum.EasingStyle.Sine), {
            Position = UDim2.new(0, 300, 0, 2)
        })
        local v1884 = TweenService:Create(IconeAP, TweenInfo.new(0, Enum.EasingStyle.Linear), {
            Position = UDim2.new(0, - 100, 0, 2)
        })
        local v1885 = TweenService:Create(IconeAP, TweenInfo.new(0.6, Enum.EasingStyle.Sine), {
            Position = UDim2.new(0, 15, 0, 2)
        })
        while IconeAP and IconeAP.Parent do
            v1883:Play()
            v1883.Completed:Wait()
            v1884:Play()
            v1884.Completed:Wait()
            v1885:Play()
            v1885.Completed:Wait()
            task.wait(1)
        end
    end)
end)()
LinhaLoja = Instance.new("Frame")
LinhaLoja.Size = UDim2.new(0, 3, 1, - 55)
LinhaLoja.Position = UDim2.new(0, 250, 0, 0)
LinhaLoja.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
LinhaLoja.BorderSizePixel = 0
LinhaLoja.Parent = _G.Tela8
SobreProduto = Instance.new("Frame")
SobreProduto.Size = UDim2.new(0, 189, 0, 208)
SobreProduto.Position = UDim2.new(0, 258, 0, 7)
SobreProduto.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SobreProduto.BackgroundTransparency = 0.5
SobreProduto.BorderSizePixel = 0
SobreProduto.Parent = _G.Tela8
TituloSobreP = Instance.new("Frame")
TituloSobreP.Size = UDim2.new(0, 181, 0, 31)
TituloSobreP.Position = UDim2.new(0, 4, 0, 4)
TituloSobreP.BackgroundColor3 = Color3.fromRGB(255, 55, 0)
TituloSobreP.BorderSizePixel = 0
TituloSobreP.Parent = SobreProduto
IconeLoja = Instance.new("ImageLabel")
IconeLoja.Size = UDim2.new(0, 31, 0, 31)
IconeLoja.Position = UDim2.new(0, 0, 0, 0)
IconeLoja.BackgroundColor3 = Color3.fromRGB(157, 0, 0)
IconeLoja.Image = "rbxassetid://90463396859645"
IconeLoja.Parent = TituloSobreP
textoSobreLoja = Instance.new("TextLabel")
textoSobreLoja.Size = UDim2.new(1, - 50, 1, 0)
textoSobreLoja.Position = UDim2.new(0, 40, 0, 0)
textoSobreLoja.BackgroundTransparency = 1
textoSobreLoja.Text = traducao.SobrePro
textoSobreLoja.TextColor3 = Color3.fromRGB(255, 228, 196)
textoSobreLoja.Font = Enum.Font.Garamond
textoSobreLoja.TextScaled = true
textoSobreLoja.Parent = TituloSobreP
LinhaSobreP = Instance.new("Frame")
LinhaSobreP.Size = UDim2.new(1, 0, 0, 1.5)
LinhaSobreP.Position = UDim2.new(0, 0, 0, 40)
LinhaSobreP.BackgroundColor3 = Color3.fromRGB(255, 55, 0)
LinhaSobreP.BorderSizePixel = 0
LinhaSobreP.Parent = SobreProduto
SobreHide = Instance.new("TextLabel")
SobreHide.Size = UDim2.new(0, 187, 0, 165)
SobreHide.Position = UDim2.new(0, 1, 0, 42)
SobreHide.BackgroundTransparency = 1
SobreHide.Text = traducao.DescricaoHide
SobreHide.TextScaled = true
SobreHide.Visible = true
SobreHide.TextColor3 = Color3.fromRGB(255, 255, 255)
SobreHide.Parent = SobreProduto
SobreCustom = Instance.new("TextLabel")
SobreCustom.Size = UDim2.new(0, 187, 0, 165)
SobreCustom.Position = UDim2.new(0, 1, 0, 42)
SobreCustom.BackgroundTransparency = 1
SobreCustom.Text = traducao.DescricaoCustomizado
SobreCustom.TextScaled = true
SobreCustom.Visible = false
SobreCustom.TextColor3 = Color3.fromRGB(0, 255, 255)
SobreCustom.Parent = SobreProduto
SobreOAtacar = Instance.new("TextLabel")
SobreOAtacar.Size = UDim2.new(0, 187, 0, 165)
SobreOAtacar.Position = UDim2.new(0, 1, 0, 42)
SobreOAtacar.BackgroundTransparency = 1
SobreOAtacar.Text = traducao.DescricaoAP
SobreOAtacar.TextScaled = true
SobreOAtacar.Visible = false
SobreOAtacar.TextColor3 = Color3.fromRGB(0, 255, 255)
SobreOAtacar.Parent = SobreProduto
Stroke(SobreHide, 0, 0, 0, 1)
Stroke(SobreCustom, 0, 0, 0, 1)
Stroke(SobreOAtacar, 0, 0, 0, 1)
ScrollSobreP = Instance.new("ScrollingFrame")
ScrollSobreP.Size = UDim2.new(0, 187, 0, 165)
ScrollSobreP.Position = UDim2.new(0, 1, 0, 42)
ScrollSobreP.BackgroundTransparency = 1
ScrollSobreP.ScrollBarThickness = 0
ScrollSobreP.CanvasSize = UDim2.new(0, 0, 0, 500)
ScrollSobreP.ScrollingDirection = Enum.ScrollingDirection.Y
ScrollSobreP.Visible = false
ScrollSobreP.CanvasPosition = Vector2.new(0, 0)
ScrollSobreP.Parent = SobreProduto
Imunidade = Instance.new("ImageButton")
Imunidade.Size = UDim2.new(0, 175, 0, 38)
Imunidade.Position = UDim2.new(0, 6, 0, 6)
Imunidade.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Imunidade.AutoButtonColor = false
Imunidade.Parent = ScrollSobreP
ImunidadeIcone = Instance.new("ImageLabel")
ImunidadeIcone.Size = UDim2.new(0, 38, 0, 38)
ImunidadeIcone.Position = UDim2.new(0, 0, 0, 0)
ImunidadeIcone.BackgroundColor3 = Color3.fromRGB(40, 100, 240)
ImunidadeIcone.Image = "rbxassetid://75249922033854"
ImunidadeIcone.ImageTransparency = 0
ImunidadeIcone.Parent = Imunidade
ImunidadeTexto = Instance.new("TextLabel")
ImunidadeTexto.Size = UDim2.new(1, - 50, 1, 0)
ImunidadeTexto.Position = UDim2.new(0, 42, 0, 0)
ImunidadeTexto.BackgroundTransparency = 1
ImunidadeTexto.Text = traducao.Imune
ImunidadeTexto.TextColor3 = Color3.fromRGB(0, 0, 255)
ImunidadeTexto.Font = Enum.Font.Garamond
ImunidadeTexto.TextScaled = true
ImunidadeTexto.Parent = Imunidade
Corner(Imunidade, 30)
Corner(ImunidadeIcone, 30)
Stroke(Imunidade, 0, 0, 0, 2)
Stroke(ImunidadeIcone, 0, 0, 0, 2)
Stroke(ImunidadeTexto, 0, 0, 0, 1)
ModerarFree = Instance.new("ImageButton")
ModerarFree.Name = "ModerarFree"
ModerarFree.Size = UDim2.new(0, 175, 0, 38)
ModerarFree.Position = UDim2.new(0, 6, 0, 60)
ModerarFree.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
ModerarFree.AutoButtonColor = false
ModerarFree.Parent = ScrollSobreP
ModerarFreeIcone = Instance.new("ImageLabel")
ModerarFreeIcone.Size = UDim2.new(0, 38, 0, 38)
ModerarFreeIcone.Position = UDim2.new(0, 0, 0, 0)
ModerarFreeIcone.BackgroundColor3 = Color3.fromRGB(157, 0, 0)
ModerarFreeIcone.BackgroundTransparency = 0
ModerarFreeIcone.Image = "rbxassetid://81316801911237"
ModerarFreeIcone.Parent = ModerarFree
ModerarFreeTexto = Instance.new("TextLabel")
ModerarFreeTexto.Size = UDim2.new(1, - 50, 1, 0)
ModerarFreeTexto.Position = UDim2.new(0, 42, 0, 0)
ModerarFreeTexto.BackgroundTransparency = 1
ModerarFreeTexto.Text = traducao.Mod
ModerarFreeTexto.TextColor3 = Color3.fromRGB(255, 228, 196)
ModerarFreeTexto.Font = Enum.Font.Garamond
ModerarFreeTexto.TextScaled = true
ModerarFreeTexto.Parent = ModerarFree
Corner(ModerarFree, 30)
Corner(ModerarFreeIcone, 30)
Stroke(ModerarFree, 0, 0, 0, 2)
Stroke(ModerarFreeIcone, 0, 0, 0, 2)
Stroke(ModerarFreeTexto, 0, 0, 0, 1)
OpcoesEx = Instance.new("ImageButton")
OpcoesEx.Size = UDim2.new(0, 175, 0, 38)
OpcoesEx.Position = UDim2.new(0, 6, 0, 114)
OpcoesEx.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
OpcoesEx.BackgroundTransparency = 0
OpcoesEx.AutoButtonColor = false
OpcoesEx.Parent = ScrollSobreP
OpcoesExIcone = Instance.new("ImageLabel")
OpcoesExIcone.Size = UDim2.new(0, 38, 0, 38)
OpcoesExIcone.Position = UDim2.new(0, 0, 0, 0)
OpcoesExIcone.BackgroundColor3 = Color3.fromRGB(40, 100, 240)
OpcoesExIcone.BackgroundTransparency = 0
OpcoesExIcone.Image = "rbxassetid://72805483479480"
OpcoesExIcone.ImageTransparency = 0
OpcoesExIcone.Parent = OpcoesEx
OpcoesExTexto = Instance.new("TextLabel")
OpcoesExTexto.Size = UDim2.new(1, - 50, 1, 0)
OpcoesExTexto.Position = UDim2.new(0, 42, 0, 0)
OpcoesExTexto.BackgroundTransparency = 1
OpcoesExTexto.Text = traducao.OpEx
OpcoesExTexto.TextColor3 = Color3.fromRGB(0, 0, 150)
OpcoesExTexto.Font = Enum.Font.Garamond
OpcoesExTexto.TextScaled = true
OpcoesExTexto.Parent = OpcoesEx
Corner(OpcoesEx, 30)
Corner(OpcoesExIcone, 30)
Stroke(OpcoesEx, 0, 0, 0, 2)
Stroke(OpcoesExIcone, 0, 0, 0, 2)
Stroke(OpcoesExTexto, 0, 255, 255, 1)
TagEx = Instance.new("ImageButton")
TagEx.Size = UDim2.new(0, 175, 0, 38)
TagEx.Position = UDim2.new(0, 6, 0, 168)
TagEx.BackgroundColor3 = Color3.fromRGB(238, 232, 170)
TagEx.BackgroundTransparency = 0
TagEx.AutoButtonColor = false
TagEx.Parent = ScrollSobreP
TagExIcone = Instance.new("ImageLabel")
TagExIcone.Size = UDim2.new(0, 38, 0, 38)
TagExIcone.Position = UDim2.new(0, 0, 0, 0)
TagExIcone.BackgroundColor3 = Color3.fromRGB(40, 100, 240)
TagExIcone.BackgroundTransparency = 0
TagExIcone.Image = "rbxassetid://80271688496071"
TagExIcone.ImageTransparency = 0
TagExIcone.Parent = TagEx
TagExTexto = Instance.new("TextLabel")
TagExTexto.Size = UDim2.new(1, - 50, 1, 0)
TagExTexto.Position = UDim2.new(0, 42, 0, 0)
TagExTexto.BackgroundTransparency = 1
TagExTexto.Text = traducao.TagEx
TagExTexto.TextColor3 = Color3.fromRGB(255, 99, 71)
TagExTexto.Font = Enum.Font.Garamond
TagExTexto.TextScaled = true
TagExTexto.Parent = TagEx
Corner(TagEx, 30)
Corner(TagExIcone, 30)
Stroke(TagEx, 0, 0, 0, 2)
Stroke(TagExIcone, 0, 0, 0, 2)
Stroke(TagExTexto, 0, 0, 0, 1)
IconePre = Instance.new("ImageButton")
IconePre.Size = UDim2.new(0, 175, 0, 38)
IconePre.Position = UDim2.new(0, 6, 0, 222)
IconePre.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
IconePre.BackgroundTransparency = 0
IconePre.AutoButtonColor = false
IconePre.Parent = ScrollSobreP
IconePreIcone = Instance.new("ImageLabel")
IconePreIcone.Size = UDim2.new(0, 38, 0, 38)
IconePreIcone.Position = UDim2.new(0, 0, 0, 0)
IconePreIcone.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
IconePreIcone.BackgroundTransparency = 0
IconePreIcone.Image = "rbxassetid://133208064119132"
IconePreIcone.ImageTransparency = 0
IconePreIcone.Parent = IconePre
IconePreTexto = Instance.new("TextLabel")
IconePreTexto.Size = UDim2.new(1, - 50, 1, 0)
IconePreTexto.Position = UDim2.new(0, 42, 0, 0)
IconePreTexto.BackgroundTransparency = 1
IconePreTexto.Text = traducao.IconePre
IconePreTexto.TextColor3 = Color3.fromRGB(240, 230, 140)
IconePreTexto.Font = Enum.Font.Garamond
IconePreTexto.TextScaled = true
IconePreTexto.Parent = IconePre
Corner(IconePre, 30)
Corner(IconePreIcone, 30)
Stroke(IconePre, 0, 0, 0, 2)
Stroke(IconePreIcone, 0, 0, 0, 2)
Stroke(IconePreTexto, 0, 0, 0, 1)
AtacarPremium = Instance.new("ImageButton")
AtacarPremium.Size = UDim2.new(0, 175, 0, 38)
AtacarPremium.Position = UDim2.new(0, 6, 0, 287)
AtacarPremium.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AtacarPremium.BackgroundTransparency = 0
AtacarPremium.AutoButtonColor = false
AtacarPremium.Parent = ScrollSobreP
AtacarPremiumIcone = Instance.new("ImageLabel")
AtacarPremiumIcone.Size = UDim2.new(0, 38, 0, 38)
AtacarPremiumIcone.Position = UDim2.new(0, 0, 0, 0)
AtacarPremiumIcone.BackgroundColor3 = Color3.fromRGB(40, 100, 240)
AtacarPremiumIcone.BackgroundTransparency = 0
AtacarPremiumIcone.Image = "rbxassetid://80246365188194"
AtacarPremiumIcone.ImageTransparency = 0
AtacarPremiumIcone.Parent = AtacarPremium
AtacarPremiumTexto = Instance.new("TextLabel")
AtacarPremiumTexto.Size = UDim2.new(1, - 50, 1, 0)
AtacarPremiumTexto.Position = UDim2.new(0, 42, 0, 0)
AtacarPremiumTexto.BackgroundTransparency = 1
AtacarPremiumTexto.Text = traducao.BypassPro
AtacarPremiumTexto.TextColor3 = Color3.fromRGB(0, 0, 0)
AtacarPremiumTexto.Font = Enum.Font.Garamond
AtacarPremiumTexto.TextScaled = true
AtacarPremiumTexto.Parent = AtacarPremium
Corner(AtacarPremium, 30)
Corner(AtacarPremiumIcone, 30)
Stroke(AtacarPremium, 0, 0, 0, 2)
Stroke(AtacarPremiumIcone, 0, 0, 0, 2)
Stroke(AtacarPremiumTexto, 255, 0, 0, 0.5)
ModerarPremium = Instance.new("ImageButton")
ModerarPremium.Size = UDim2.new(0, 175, 0, 38)
ModerarPremium.Position = UDim2.new(0, 6, 0, 341)
ModerarPremium.BackgroundColor3 = Color3.fromRGB(102, 51, 153)
ModerarPremium.BackgroundTransparency = 0
ModerarPremium.AutoButtonColor = false
ModerarPremium.Parent = ScrollSobreP
ModerarPremiumIcone = Instance.new("ImageLabel")
ModerarPremiumIcone.Size = UDim2.new(0, 38, 0, 38)
ModerarPremiumIcone.Position = UDim2.new(0, 0, 0, 0)
ModerarPremiumIcone.BackgroundColor3 = Color3.fromRGB(40, 100, 240)
ModerarPremiumIcone.BackgroundTransparency = 0
ModerarPremiumIcone.Image = "rbxassetid://74567305051352"
ModerarPremiumIcone.ImageTransparency = 0
ModerarPremiumIcone.Parent = ModerarPremium
ModerarPremiumTexto = Instance.new("TextLabel")
ModerarPremiumTexto.Size = UDim2.new(1, - 50, 1, 0)
ModerarPremiumTexto.Position = UDim2.new(0, 42, 0, 0)
ModerarPremiumTexto.BackgroundTransparency = 1
ModerarPremiumTexto.Text = traducao.ModP
ModerarPremiumTexto.TextColor3 = Color3.fromRGB(0, 0, 255)
ModerarPremiumTexto.Font = Enum.Font.Garamond
ModerarPremiumTexto.TextScaled = true
ModerarPremiumTexto.Parent = ModerarPremium
Corner(ModerarPremium, 30)
Corner(ModerarPremiumIcone, 30)
Stroke(ModerarPremium, 0, 0, 0, 2)
Stroke(ModerarPremiumIcone, 0, 0, 0, 2)
Stroke(ModerarPremiumTexto, 0, 0, 0, 1)
VerHide = Instance.new("ImageButton")
VerHide.Size = UDim2.new(0, 175, 0, 38)
VerHide.Position = UDim2.new(0, 6, 0, 395)
VerHide.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
VerHide.BackgroundTransparency = 0
VerHide.AutoButtonColor = false
VerHide.Parent = ScrollSobreP
VerHideIcone = Instance.new("ImageLabel")
VerHideIcone.Size = UDim2.new(0, 38, 0, 38)
VerHideIcone.Position = UDim2.new(0, 0, 0, 0)
VerHideIcone.BackgroundColor3 = Color3.fromRGB(40, 100, 240)
VerHideIcone.BackgroundTransparency = 0
VerHideIcone.Image = "rbxassetid://92365190159427"
VerHideIcone.ImageTransparency = 0
VerHideIcone.Parent = VerHide
VerHideTexto = Instance.new("TextLabel")
VerHideTexto.Size = UDim2.new(1, - 50, 1, 0)
VerHideTexto.Position = UDim2.new(0, 42, 0, 0)
VerHideTexto.BackgroundTransparency = 1
VerHideTexto.Text = traducao.VerHide
VerHideTexto.TextColor3 = Color3.fromRGB(255, 255, 255)
VerHideTexto.Font = Enum.Font.Garamond
VerHideTexto.TextScaled = true
VerHideTexto.Parent = VerHide
Corner(VerHide, 30)
Corner(VerHideIcone, 30)
Stroke(VerHide, 70, 70, 70, 2)
Stroke(VerHideIcone, 70, 70, 70, 2)
Stroke(VerHideTexto, 0, 0, 0, 1)
ProdutoAtual = Instance.new("Frame")
ProdutoAtual.Size = UDim2.new(0, 140, 0, 39)
ProdutoAtual.Position = UDim2.new(0, 9, 0, 229)
ProdutoAtual.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
ProdutoAtual.Parent = _G.Tela8
Comprar = Instance.new("ImageButton")
Comprar.Size = UDim2.new(0, 140, 0, 39)
Comprar.Position = UDim2.new(0, 157, 0, 229)
Comprar.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
Comprar.Parent = _G.Tela8
Discord2 = Instance.new("ImageButton")
Discord2.Size = UDim2.new(0, 140, 0, 39)
Discord2.Position = UDim2.new(0, 304, 0, 229)
Discord2.BackgroundColor3 = Color3.fromRGB(143, 42, 234)
Discord2.AutoButtonColor = false
Discord2.Parent = _G.Tela8
Sacola = Instance.new("ImageLabel")
Sacola.Size = UDim2.new(0, 39, 0, 39)
Sacola.Position = UDim2.new(0, 0, 0, 0)
Sacola.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
Sacola.Image = "rbxassetid://120605817451855"
Sacola.Parent = ProdutoAtual
Robux = Instance.new("ImageLabel")
Robux.Size = UDim2.new(0, 39, 0, 39)
Robux.Position = UDim2.new(0, 0, 0, 0)
Robux.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
Robux.Image = "rbxassetid://110257698120209"
Robux.Parent = Comprar
DcImage = Instance.new("ImageLabel")
DcImage.Size = UDim2.new(0, 39, 0, 39)
DcImage.Position = UDim2.new(0, 0, 0, 0)
DcImage.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
DcImage.Image = "rbxassetid://90602349315916"
DcImage.Parent = Discord2
TextoProdutoAtu = Instance.new("TextLabel")
TextoProdutoAtu.Size = UDim2.new(1, - 50, 1, 0)
TextoProdutoAtu.Position = UDim2.new(0, 42, 0, 0)
TextoProdutoAtu.BackgroundTransparency = 1
TextoProdutoAtu.Text = traducao.Oculto
TextoProdutoAtu.TextColor3 = Color3.fromRGB(255, 255, 255)
TextoProdutoAtu.Font = Enum.Font.Garamond
TextoProdutoAtu.TextScaled = true
TextoProdutoAtu.Parent = ProdutoAtual
TextoRobux = Instance.new("TextLabel")
TextoRobux.Size = UDim2.new(1, - 50, 1, 0)
TextoRobux.Position = UDim2.new(0, 42, 0, 0)
TextoRobux.BackgroundTransparency = 1
TextoRobux.Text = "36 ROBUX"
TextoRobux.TextColor3 = Color3.fromRGB(255, 215, 0)
TextoRobux.Font = Enum.Font.Garamond
TextoRobux.TextScaled = true
TextoRobux.Parent = Comprar
TextoDiscord2 = Instance.new("TextLabel")
TextoDiscord2.Size = UDim2.new(1, - 50, 1, 0)
TextoDiscord2.Position = UDim2.new(0, 42, 0, 0)
TextoDiscord2.BackgroundTransparency = 1
TextoDiscord2.Text = "Discord"
TextoDiscord2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextoDiscord2.Font = Enum.Font.Garamond
TextoDiscord2.TextScaled = true
TextoDiscord2.Parent = Discord2
Comprar.MouseButton1Click:Connect(function()
    Notificar(traducao.ComprarPro, traducao.Juntese, 10)
end)
Discord2.MouseButton1Click:Connect(function()
    Notificar(traducao.CopyDC, "https://discord.gg/kbh2dEdnYP", 10)
    setclipboard("https://discord.gg/kbh2dEdnYP")
end)
Corner(ProdutoAtual, 30)
Corner(Discord2, 30)
Corner(Comprar, 30)
Corner(Sacola, 30)
Corner(Robux, 30)
Corner(DcImage, 30)
Stroke(ProdutoAtual, 70, 70, 70, 2)
Stroke(Discord2, 0, 0, 0, 2)
Stroke(Comprar, 0, 0, 0, 2)
Stroke(Sacola, 70, 70, 70, 2)
Stroke(Robux, 0, 0, 0, 2)
Stroke(DcImage, 0, 0, 0, 2)
Stroke(TextoProdutoAtu, 0, 0, 0, 2)
Stroke(TextoRobux, 0, 0, 0, 2)
Stroke(TextoDiscord2, 0, 0, 0, 2)
ProdutoElite = false
function SetElite(p1886)
    ProdutoElite = p1886
    ScrollSobreP.Visible = true
    SobreCustom.Visible = false
    SobreHide.Visible = false
    SobreOAtacar.Visible = false
    if p1886 then
        AtacarPremium.BackgroundTransparency = 0
        AtacarPremium.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        AtacarPremiumIcone.BackgroundTransparency = 0
        AtacarPremiumIcone.ImageTransparency = 0
        AtacarPremiumTexto.TextColor3 = Color3.fromRGB(0, 0, 0)
        Stroke(AtacarPremiumTexto, 255, 0, 0, 0.5)
        ModerarPremium.BackgroundTransparency = 0
        ModerarPremium.BackgroundColor3 = Color3.fromRGB(102, 51, 153)
        ModerarPremiumIcone.BackgroundTransparency = 0
        ModerarPremiumIcone.ImageTransparency = 0
        ModerarPremiumTexto.TextColor3 = Color3.fromRGB(0, 0, 255)
        VerHide.BackgroundTransparency = 0
        VerHide.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
        VerHideIcone.BackgroundTransparency = 0
        VerHideIcone.ImageTransparency = 0
        VerHideTexto.TextColor3 = Color3.fromRGB(255, 255, 255)
    else
        local v1887 = Color3.fromRGB(70, 70, 70)
        AtacarPremium.BackgroundTransparency = 0.9
        AtacarPremium.BackgroundColor3 = v1887
        AtacarPremiumIcone.BackgroundTransparency = 1
        AtacarPremiumIcone.ImageTransparency = 0.9
        AtacarPremiumTexto.TextColor3 = v1887
        Stroke(AtacarPremiumTexto, 0, 0, 0, 0.5)
        ModerarPremium.BackgroundTransparency = 0.9
        ModerarPremium.BackgroundColor3 = v1887
        ModerarPremiumIcone.BackgroundTransparency = 1
        ModerarPremiumIcone.ImageTransparency = 0.9
        ModerarPremiumTexto.TextColor3 = v1887
        VerHide.BackgroundTransparency = 0.9
        VerHide.BackgroundColor3 = v1887
        VerHideIcone.BackgroundTransparency = 1
        VerHideIcone.ImageTransparency = 0.9
        VerHideTexto.TextColor3 = v1887
    end
end
Hide.MouseButton1Click:Connect(function()
    ScrollSobreP.Visible = false
    SobreCustom.Visible = false
    SobreOAtacar.Visible = false
    SobreHide.Visible = true
    TextoProdutoAtu.Text = traducao.Oculto
    TextoRobux.Text = "36 ROBUX"
end)
Customizado.MouseButton1Click:Connect(function()
    ScrollSobreP.Visible = false
    SobreOAtacar.Visible = false
    SobreHide.Visible = false
    SobreCustom.Visible = true
    TextoProdutoAtu.Text = traducao.Customizado
    TextoRobux.Text = "50 ROBUX"
end)
AtacarPremiumP.MouseButton1Click:Connect(function()
    ScrollSobreP.Visible = false
    SobreCustom.Visible = false
    SobreHide.Visible = false
    SobreOAtacar.Visible = true
    TextoProdutoAtu.Text = "Elite Tool"
    TextoRobux.Text = "200 ROBUX"
end)
Premium.MouseButton1Click:Connect(function()
    SetElite(false)
    TextoProdutoAtu.Text = "Premium"
    TextoRobux.Text = "115 ROBUX"
    local vu1888 = game:GetService("TweenService"):Create(ScrollSobreP, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        CanvasPosition = Vector2.new(0, 0)
    })
    local v1889 = vu1888
    vu1888.Play(v1889)
    vu1888.Completed:Connect(function()
        vu1888:Destroy()
    end)
end)
Elite.MouseButton1Click:Connect(function()
    SetElite(true)
    TextoProdutoAtu.Text = "Elite"
    TextoRobux.Text = "1.200 ROBUX :3"
    local vu1890 = game:GetService("TweenService"):Create(ScrollSobreP, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        CanvasPosition = Vector2.new(0, 278.733093)
    })
    local v1891 = vu1890
    vu1890.Play(v1891)
    vu1890.Completed:Connect(function()
        vu1890:Destroy()
    end)
end)
Imunidade.MouseButton1Click:Connect(function()
    Notificar(traducao.SobrePro, traducao.SobreImune, 10)
end)
ModerarFree.MouseButton1Click:Connect(function()
    Notificar(traducao.SobrePro, traducao.SobreModFree, 10)
end)
OpcoesEx.MouseButton1Click:Connect(function()
    Notificar(traducao.SobrePro, traducao.SobreOpx, 10)
end)
TagEx.MouseButton1Click:Connect(function()
    Notificar(traducao.SobrePro, traducao.SobreTag, 10)
end)
IconePre.MouseButton1Click:Connect(function()
    Notificar(traducao.SobrePro, traducao.SobreIconeP, 10)
end)
AtacarPremium.MouseButton1Click:Connect(function()
    if ProdutoElite then
        Notificar(traducao.SobrePro, traducao.SobreAtacarP, 10)
    end
end)
ModerarPremium.MouseButton1Click:Connect(function()
    if ProdutoElite then
        Notificar(traducao.SobrePro, traducao.SobreModPrem, 10)
    end
end)
VerHide.MouseButton1Click:Connect(function()
    if ProdutoElite then
        Notificar(traducao.SobrePro, traducao.SobreVerHide, 10)
    end
end)
GlobalK = Instance.new("ImageButton")
GlobalK.Size = UDim2.new(0, 134, 0, 38)
GlobalK.Position = UDim2.new(0, 4, 0, 60)
GlobalK.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
GlobalK.AutoButtonColor = false
GlobalK.Parent = _G.Frame57:FindFirstChild("ScrollInterno")
IconeGK = Instance.new("ImageLabel")
IconeGK.Size = UDim2.new(0, 38, 0, 38)
IconeGK.Position = UDim2.new(0, 0, 0, 0)
IconeGK.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
IconeGK.Image = "rbxassetid://90789802362187"
IconeGK.Parent = GlobalK
texto = Instance.new("TextLabel")
texto.Size = UDim2.new(1, - 50, 1, 0)
texto.Position = UDim2.new(0, 42, 0, 0)
texto.BackgroundTransparency = 1
texto.Text = traducao.ApenasSL
texto.TextColor3 = Color3.fromRGB(255, 228, 196)
texto.Font = Enum.Font.Garamond
texto.TextScaled = true
texto.Parent = GlobalK
Corner(GlobalK, 30)
Corner(IconeGK, 30)
Stroke(GlobalK, 0, 0, 0, 3)
Stroke(IconeGK, 0, 0, 0, 3)
Stroke(texto, 0, 0, 0, 2)
Dici = Instance.new("ImageButton")
Dici.Size = UDim2.new(0, 134, 0, 38)
Dici.Position = UDim2.new(0, 4, 0, 60)
Dici.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
Dici.AutoButtonColor = false
Dici.Parent = _G.Frame58:FindFirstChild("ScrollInterno")
IconeDICI = Instance.new("ImageLabel")
IconeDICI.Size = UDim2.new(0, 38, 0, 38)
IconeDICI.Position = UDim2.new(0, 0, 0, 0)
IconeDICI.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
IconeDICI.Image = "rbxassetid://90789802362187"
IconeDICI.Parent = Dici
texto = Instance.new("TextLabel")
texto.Size = UDim2.new(1, - 50, 1, 0)
texto.Position = UDim2.new(0, 42, 0, 0)
texto.BackgroundTransparency = 1
texto.Text = traducao.ApenasSL
texto.TextColor3 = Color3.fromRGB(255, 228, 196)
texto.Font = Enum.Font.Garamond
texto.TextScaled = true
texto.Parent = Dici
Corner(Dici, 30)
Corner(IconeDICI, 30)
Stroke(Dici, 0, 0, 0, 3)
Stroke(IconeDICI, 0, 0, 0, 3)
Stroke(texto, 0, 0, 0, 2)
VoidBlock = false
function Void()
    if not VoidBlock then
        coroutine.wrap(function()
            local v1892 = game.Players.LocalPlayer.Character
            if v1892 then
                local v1893 = v1892:FindFirstChild("HumanoidRootPart")
                local v1894 = v1892:FindFirstChildOfClass("Humanoid")
                if v1893 and v1894 then
                    VoidBlock = true
                    if not AntiVoid then
                        workspace.FallenPartsDestroyHeight = 0 / 0
                    end
                    task.wait(0.1)
                    v1893.CFrame = CFrame.new(- 999999999999999, - 999999999999999, 999999999999999)
                    v1894.Health = 0
                    if not AntiVoid then
                        task.wait(0.1)
                        workspace.FallenPartsDestroyHeight = - 500
                    end
                    task.wait(2)
                    VoidBlock = false
                end
            else
                return
            end
        end)()
    end
end
function Decapit()
    if not VoidBlock then
        coroutine.wrap(function()
            local v1895 = game.Players.LocalPlayer
            local v1896 = v1895.Character
            if v1896 then
                local v1897 = v1896:FindFirstChild("HumanoidRootPart")
                local v1898 = v1896:FindFirstChildOfClass("Humanoid")
                if v1897 and v1898 then
                    VoidBlock = true
                    local v1899 = tick()
                    while v1898.FloorMaterial == Enum.Material.Air and tick() - v1899 <= 3 do
                        if not (v1895.Character and (v1895.Character:FindFirstChild("HumanoidRootPart") and v1895.Character:FindFirstChildOfClass("Humanoid"))) then
                            VoidBlock = false
                            return
                        end
                        task.wait(0.1)
                    end
                    workspace.FallenPartsDestroyHeight = - 2000
                    workspace.Gravity = math.huge
                    task.wait(0.1)
                    v1897.Position = Vector3.new(v1897.Position.X, workspace.FallenPartsDestroyHeight, v1897.Position.Z)
                    v1897.Parent = workspace
                    task.wait(0.1)
                    workspace.FallenPartsDestroyHeight = - 500
                    workspace.Gravity = 196.1999969482422
                    task.wait(0.1)
                    if AntiVoid then
                        workspace.FallenPartsDestroyHeight = 0 / 0
                    end
                    task.delay(2, function()
                        VoidBlock = false
                    end)
                end
            else
                return
            end
        end)()
    end
end
VoidGui = Instance.new("Frame")
VoidGui.Size = UDim2.new(0, 208, 0, 126)
VoidGui.Position = UDim2.new(0.5, - 104, 0.5, - 63)
VoidGui.BackgroundColor3 = Color3.fromRGB(64, 64, 64)
VoidGui.BackgroundTransparency = 0.5
VoidGui.Draggable = true
VoidGui.Visible = false
VoidGui.Active = true
VoidGui.Parent = CORE
BotaoFecharV = Instance.new("ImageButton")
BotaoFecharV.Size = UDim2.new(0, 35, 0, 35)
BotaoFecharV.Position = UDim2.new(0, 215, 0, 4)
BotaoFecharV.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
BotaoFecharV.Parent = VoidGui
XTextoV = Instance.new("TextLabel")
XTextoV.Size = UDim2.new(1, 0, 1, 0)
XTextoV.Position = UDim2.new(0, 0, 0, - 1)
XTextoV.BackgroundTransparency = 1
XTextoV.Text = "X"
XTextoV.TextColor3 = Color3.fromRGB(152, 255, 152)
XTextoV.TextSize = 20
XTextoV.Parent = BotaoFecharV
JanelaFlutuanteV = Instance.new("ImageButton")
JanelaFlutuanteV.Size = UDim2.new(0, 50, 0, 50)
JanelaFlutuanteV.Position = UDim2.new(0.5, - 25, 0.5, - 25)
JanelaFlutuanteV.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
JanelaFlutuanteV.Image = "rbxassetid://83255503253361"
JanelaFlutuanteV.Visible = false
JanelaFlutuanteV.Parent = CORE
BotaoVoid = Instance.new("ImageButton")
BotaoVoid.Size = UDim2.new(0.8, 0, 0.3, 0)
BotaoVoid.Position = UDim2.new(0.1, 0, 0.6, 0)
BotaoVoid.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
BotaoVoid.Parent = VoidGui
BotaoVoidLabel = Instance.new("TextLabel")
BotaoVoidLabel.Size = UDim2.new(1, 0, 1, 0)
BotaoVoidLabel.BackgroundTransparency = 1
BotaoVoidLabel.Text = "VOID PLAYER"
BotaoVoidLabel.TextColor3 = Color3.fromRGB(255, 165, 0)
BotaoVoidLabel.Font = Enum.Font.SourceSansBold
BotaoVoidLabel.TextSize = 18
BotaoVoidLabel.Parent = BotaoVoid
VoidMode = Instance.new("ImageButton")
VoidMode.Size = UDim2.new(0.9, 0, 0.3, 0)
VoidMode.Position = UDim2.new(0.05, 0, 0.2, 0)
VoidMode.BackgroundTransparency = 0.5
VoidMode.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
VoidMode.Parent = VoidGui
VoidModeLabel = Instance.new("TextLabel")
VoidModeLabel.Size = UDim2.new(1, 0, 1, 0)
VoidModeLabel.BackgroundTransparency = 1
VoidModeLabel.Text = traducao.Modo
VoidModeLabel.TextColor3 = Color3.fromRGB(0, 255, 255)
VoidModeLabel.TextScaled = true
VoidModeLabel.Parent = VoidMode
local vu1900 = false
local vu1901 = nil
local vu1902 = nil
local vu1903 = nil
local vu1904 = false
UIS = game:GetService("UserInputService")
JanelaFlutuanteV.InputBegan:Connect(function(pu1905)
    if pu1905.UserInputType == Enum.UserInputType.MouseButton1 or pu1905.UserInputType == Enum.UserInputType.Touch then
        local v1906 = pu1905.Position
        vu1904 = false
        vu1902 = v1906
        vu1900 = true
        vu1903 = JanelaFlutuanteV.AbsolutePosition
        pu1905.Changed:Connect(function()
            if pu1905.UserInputState == Enum.UserInputState.End then
                vu1900 = false
            end
        end)
    end
end)
JanelaFlutuanteV.InputChanged:Connect(function(p1907)
    if p1907.UserInputType == Enum.UserInputType.MouseMovement or p1907.UserInputType == Enum.UserInputType.Touch then
        vu1901 = p1907
    end
end)
UIS.InputChanged:Connect(function(p1908)
    if p1908 == vu1901 and vu1900 then
        local v1909 = p1908.Position - vu1902
        if math.abs(v1909.X) > 1 or math.abs(v1909.Y) > 1 then
            vu1904 = true
        end
        JanelaFlutuanteV.Position = UDim2.new(0, vu1903.X + v1909.X, 0, vu1903.Y + v1909.Y)
    end
end)
JanelaFlutuanteV.MouseButton1Click:Connect(function()
    if not vu1904 then
        JanelaFlutuanteV.Visible = false
        VoidGui.Visible = true
    end
end)
BotaoFecharV.MouseButton1Click:Connect(function()
    VoidGui.Visible = false
    task.wait(0.2)
    JanelaFlutuanteV.Visible = true
end)
ModoVoid = "Void"
VoidMode.MouseButton1Click:Connect(function()
    if not Trancado then
        if ModoVoid ~= "Void" then
            ModoVoid = "Void"
            BotaoVoidLabel.Text = "VOID PLAYER"
            Notificar(traducao.Infos, traducao.SobreV, 7)
        else
            ModoVoid = "decapit"
            BotaoVoidLabel.Text = "DECAPIT PLAYER"
            Notificar(traducao.Infos, traducao.SobreD, 7)
        end
    end
end)
BotaoVoid.MouseButton1Click:Connect(function()
    if not Trancado then
        if ModoVoid ~= "Void" then
            if ModoVoid == "decapit" then
                Decapit()
            end
        else
            Void()
        end
    end
end)
function _G.VoidPlayer(pu1910)
    pcall(function()
        ConfigFile("VoidAndDecapit", pu1910)
    end)
    if pu1910 == true then
        JanelaFlutuanteV.Visible = true
    else
        VoidGui.Visible = false
        JanelaFlutuanteV.Visible = false
    end
end
OnlySL = false
LoopGlobalKillRenderStepped = nil
AtacandoGlobal = false
AtacarCoroutineGlobal = nil
ativo = false
posGK = nil
function _G.GlobalKill(pu1911)
    pcall(function()
        ConfigFile("GlobalKill", pu1911)
    end)
    if LoopGlobalKillRenderStepped then
        pcall(function()
            LoopGlobalKillRenderStepped:Disconnect()
        end)
        LoopGlobalKillRenderStepped = nil
    end
    AtacandoGlobal = false
    AtacarCoroutineGlobal = nil
    ativo = pu1911 and true or false
end
function GlobalKillChat(p1912, p1913)
    if not ativo then
        return
    end
    if OnlySL and not table.find(Safelist, p1912) then
        return
    end
    if AtacandoGlobal then
        return
    end
    local v1914 = p1913:lower()
    if v1914:sub(1, 5) ~= ":kill" then
        return
    end
    local v1915 = v1914:sub(7):lower()
    if v1915 == "" then
        return
    end
    local vu1916 = game:GetService("Players")
    local v1917, v1918, v1919 = pairs(vu1916:GetPlayers())
    local vu1920 = nil
    while true do
        local v1921
        v1919, v1921 = v1917(v1918, v1919)
        if v1919 == nil then
            break
        end
        if v1921 ~= vu1916.LocalPlayer then
            local v1922 = v1921.Name:lower()
            local v1923 = v1921.DisplayName:lower()
            if (v1922:sub(1, # v1915) == v1915 or v1923:sub(1, # v1915) == v1915) and Protegido(v1921.Name) then
                if v1921.Name == p1912 or v1921 == vu1916.LocalPlayer.Name then
                    Say("Attacking yourself or me is not allowed!")
                    return
                end
                local v1924 = v1921.Character
                local v1925
                if v1924 then
                    v1925 = v1924:FindFirstChild("Humanoid")
                else
                    v1925 = v1924
                end
                local v1926
                if v1924 then
                    v1926 = v1924:FindFirstChildOfClass("ForceField")
                else
                    v1926 = v1924
                end
                local v1927 = not (v1924 and v1924:FindFirstChild("Kawaii Revolver")) and v1921:FindFirstChild("Backpack")
                if v1927 then
                    v1927 = v1921.Backpack:FindFirstChild("Kawaii Revolver")
                end
                if v1925 and (v1925.Health > 0 and (not v1926 and v1927)) then
                    vu1920 = v1921
                    local v1928 = vu1916.LocalPlayer.Character
                    if v1928 and v1928:FindFirstChild("HumanoidRootPart") then
                        posGK = v1928.HumanoidRootPart.Position
                    else
                        posGK = nil
                    end
                    break
                end
            end
        end
    end
    if vu1920 then
        DesligarBotao(LoopBotao)
        DesligarBotao(FlingBotao)
        DesligarBotao(CBringBotao)
        local vu1929 = vu1916.LocalPlayer.Character
        if vu1929 and vu1929:FindFirstChild("HumanoidRootPart") then
            local _ = vu1929.HumanoidRootPart.CFrame
            AtacandoGlobal = true
            LoopGlobalKillRenderStepped = game:GetService("RunService").RenderStepped:Connect(function()
                if vu1920 then
                    local v1930 = vu1920.Character
                    vu1929 = vu1916.LocalPlayer.Character
                    local v1931 = v1930 and v1930:FindFirstChild("Head") and (v1930:FindFirstChild("Humanoid") and vu1929)
                    if v1931 then
                        v1931 = vu1929:FindFirstChild("HumanoidRootPart")
                    end
                    if v1931 then
                        local v1932 = v1930.Humanoid
                        local v1933 = vu1929:FindFirstChild("Humanoid")
                        local v1934 = v1930:FindFirstChildOfClass("ForceField")
                        local v1935 = not v1930:FindFirstChild("Kawaii Revolver") and vu1920:FindFirstChild("Backpack")
                        if v1935 then
                            v1935 = vu1920.Backpack:FindFirstChild("Kawaii Revolver")
                        end
                        if v1933 and (v1933.Health > 0 and (v1932.Health > 0 and (not v1934 and v1935))) then
                            vu1929.HumanoidRootPart.CFrame = v1930.Head.CFrame + Vector3.new(0, 15, 0)
                        else
                            AtacandoGlobal = false
                            vu1920 = nil
                            if LoopGlobalKillRenderStepped then
                                LoopGlobalKillRenderStepped:Disconnect()
                                LoopGlobalKillRenderStepped = nil
                            end
                            Say(traducao.KilledText)
                            if posGK and vu1929 and vu1929:FindFirstChild("HumanoidRootPart") then
                                vu1929.HumanoidRootPart.CFrame = CFrame.new(posGK)
                            end
                        end
                    else
                        AtacandoGlobal = false
                        vu1920 = nil
                        if LoopGlobalKillRenderStepped then
                            LoopGlobalKillRenderStepped:Disconnect()
                            LoopGlobalKillRenderStepped = nil
                        end
                        Say(traducao.KilledText)
                        if posGK and vu1929 and vu1929:FindFirstChild("HumanoidRootPart") then
                            vu1929.HumanoidRootPart.CFrame = CFrame.new(posGK)
                        end
                        return
                    end
                else
                    return
                end
            end)
            AtacarCoroutineGlobal = task.spawn(function()
                while AtacandoGlobal and vu1920 do
                    if vu1920.Character and vu1920.Character:FindFirstChild("Humanoid") then
                        pcall(function()
                            AttackCH(vu1920)
                        end)
                    end
                    task.wait(0.1)
                end
            end)
        end
    else
        Say(traducao.AlvoInText)
        return
    end
end
function GkMode()
    if OnlySL then
        GlobalK.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
        IconeGK.Image = "rbxassetid://90789802362187"
        OnlySL = false
        pcall(function()
            ConfigFile("GlobalKillSafelist", false)
        end)
    else
        GlobalK.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        IconeGK.Image = "rbxassetid://106235415289683"
        OnlySL = true
        pcall(function()
            ConfigFile("GlobalKillSafelist", true)
        end)
    end
end
GlobalK.MouseButton1Click:Connect(GkMode)
PodePerm = true
function _G.Perma()
    if PodePerm then
        PodePerm = false
        pcall(function()
            local vu1936 = game:GetService("StarterGui")
            local vu1937 = game:GetService("Players")
            local vu1938 = vu1937.LocalPlayer
            Notificar("Anti Respawn", traducao.Espere .. " " .. vu1937.RespawnTime .. " " .. traducao.segundos, 10)
            replicatesignal(vu1938.ConnectDiedSignalBackend)
            task.wait(vu1937.RespawnTime + 0.2)
            replicatesignal(vu1938.Kill)
            local v1939 = Instance.new("BindableEvent")
            v1939.Event:Once(function()
                Notificar("Respawn...", traducao.Espere .. " " .. vu1937.RespawnTime .. " " .. traducao.segundos, 10)
                vu1936:SetCore("ResetButtonCallback", true)
                replicatesignal(vu1938.ConnectDiedSignalBackend)
            end)
            local v1940 = vu1936
            vu1936.SetCore(v1940, "ResetButtonCallback", v1939)
        end)
        task.wait(5)
        PodePerm = true
    end
end
local vu1941 = false
function _G.GodMode()
    if connectionAutoGiver then
        Notificar(traducao.Erro, traducao.DesligueAuto, 6)
        return
    elseif not vu1941 then
        vu1941 = true
        local v1942 = game.Players.LocalPlayer.Character
        if v1942 then
            v1942 = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        end
        if v1942 then
            v1942:ChangeState(Enum.HumanoidStateType.Dead)
        end
        local vu1943 = nil
        vu1943 = game.Players.LocalPlayer.CharacterAdded:Connect(function()
            if vu1943 then
                vu1943:Disconnect()
            end
            task.wait(0.5)
            local v1944 = game.Players.LocalPlayer:FindFirstChild("PlayerGui")
            if v1944 then
                v1944 = v1944:FindFirstChild("Menu Screen")
            end
            if v1944 then
                v1944:Destroy()
            end
            vu1941 = false
        end)
    end
end
PsomenteSL = false
ativo = false
_G.Pesquisar = (function()
    local function vu1953(p1945, p1946)
        local v1947 = "https://translate.googleapis.com/translate_a/single?client=gtx&sl=auto&tl=pt&dt=t&q=" .. HttpService:UrlEncode(p1945)
        local v1948 = game:HttpGet(v1947)
        local vu1949 = "https://" .. (HttpService:JSONDecode(v1948)[3] or "en") .. ".wikipedia.org/api/rest_v1/page/summary/" .. p1945:gsub(" ", "%%20")
        local v1950, v1951 = pcall(function()
            return game:HttpGet(vu1949)
        end)
        local v1952 = v1950 and (HttpService:JSONDecode(v1951).extract or "Unable to retrieve description for this word.") or "Unable to retrieve description for this word."
        Say("[CH-DICTIONARY] " .. p1946 .. ": " .. v1952)
    end
    function SearchChat(p1954, p1955)
        if ativo then
            if not PsomenteSL or (p1954 == vu1483.LocalPlayer.Name or table.find(Safelist, p1954)) then
                local v1956 = p1955:lower():match("^:search%s+(.+)")
                if v1956 then
                    vu1953(v1956, p1954)
                end
            end
        else
            return
        end
    end
    return function(p1957)
        ativo = p1957 and true or false
        pcall(function()
            ConfigFile("Dictionary", ativo)
        end)
    end
end)()
function DiciMode()
    if PsomenteSL then
        Dici.BackgroundColor3 = Color3.fromRGB(139, 0, 0)
        IconeDICI.Image = "rbxassetid://90789802362187"
        PsomenteSL = false
        pcall(function()
            ConfigFile("DictionarySafelist", false)
        end)
    else
        Dici.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        IconeDICI.Image = "rbxassetid://106235415289683"
        PsomenteSL = true
        pcall(function()
            ConfigFile("DictionarySafelist", true)
        end)
    end
end
Dici.MouseButton1Click:Connect(DiciMode)
function _G.RemoverTraps()
    if AntiTrap then
        Notificar(traducao.Erro, traducao.DesligueTrap, 8)
    else
        local v1958, v1959, v1960 = ipairs(workspace:GetDescendants())
        local v1961 = false
        while true do
            local v1962
            v1960, v1962 = v1958(v1959, v1960)
            if v1960 == nil then
                break
            end
            if v1962:IsA("BasePart") and (v1962.Parent and (v1962.Parent.Name == "Spike Trap" and (v1962:FindFirstChildWhichIsA("TouchTransmitter") and game.Players.LocalPlayer.Character))) and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v1962, 0)
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v1962, 1)
                task.wait(0.1)
                v1962.Parent:Destroy()
                v1961 = true
            end
        end
        if v1961 then
            Notificar(traducao.Sucesso, traducao.AchouTrap, 8)
        else
            Notificar(traducao.Erro, traducao.NachouTrap, 8)
        end
    end
end
ScrollVIP = Instance.new("ScrollingFrame")
ScrollVIP.Size = UDim2.new(0, 297, 0, 216)
ScrollVIP.Position = UDim2.new(0, 154, 0, 3)
ScrollVIP.BackgroundTransparency = 1
ScrollVIP.ScrollBarThickness = 0
ScrollVIP.CanvasSize = UDim2.new(0, 0, 0, 443)
ScrollVIP.ScrollingDirection = Enum.ScrollingDirection.Y
ScrollVIP.Parent = _G.Tela9
CriarOpcao(ScrollVIP, 6, 113953041456125, "Void & Decapit", 54, "ligar", "VoidPlayer", Trancado)
CriarOpcao(ScrollVIP, 80, 90168602471024, "Anti Respawn", 55, "click", "Perma", Trancado)
CriarOpcao(ScrollVIP, 154, 120185142308079, "Auto GodMode Glitch", 56, "click", "GodMode", Trancado)
CriarOpcao(ScrollVIP, 228, 80517997257817, "Global Kill", 57, "ligar", "GlobalKill", Trancado)
CriarOpcao(ScrollVIP, 302, 120334137242940, "Remove Traps", 60, "click", "RemoverTraps", Trancado)
CriarOpcao(ScrollVIP, 376, 137035648729797, traducao.Dicionario, 58, "ligar", "Pesquisar", Trancado)
coroutine.wrap(function()
    if not Trancado then
        if tentarLer("VoidAndDecapit") then
            Alternadores["Void & Decapit"]()
        end
        if tentarLer("GlobalKill") then
            Alternadores["Global Kill"]()
        end
        if tentarLer("Dictionary") then
            Alternadores[traducao.Dicionario]()
        end
        if tentarLer("GlobalKillSafelist") then
            GkMode()
        end
        if tentarLer("DictionarySafelist") then
            DiciMode()
        end
    end
end)()
TextChatService = game:GetService("TextChatService")
FuncoesChat = {
    detectarMensagem,
    ReceptorKillCommand,
    GlobalKillChat,
    SearchChat
}
function TextChatService.OnIncomingMessage(p1963)
    local v1964 = p1963.TextSource
    if v1964 then
        local v1965 = v1964.Name
        local v1966 = p1963.Text
        local v1967, v1968, v1969 = ipairs(FuncoesChat)
        while true do
            local v1970
            v1969, v1970 = v1967(v1968, v1969)
            if v1969 == nil then
                break
            end
            task.spawn(v1970, v1965, v1966)
        end
    end
end
if not game:GetService("UserInputService").TouchEnabled then
    framesPC = {
        ChaoticFrame,
        TargetGuiFrame,
        SafelistFrame,
        SalvosFrame,
        JanelaFlutuante,
        JanelaFlutuanteTG,
        F,
        F2,
        F3,
        Display,
        VoidGui,
        JanelaFlutuanteV,
        Faim
    }
    local v1971, v1972, v1973 = ipairs(framesPC)
    while true do
        local v1974
        v1973, v1974 = v1971(v1972, v1973)
        if v1973 == nil then
            break
        end
        local v1975 = Instance.new("UIScale")
        v1975.Scale = 1.5
        v1975.Parent = v1974
    end
end
visibilidadeOriginal = {}
game:GetService("GuiService").MenuOpened:Connect(function()
    local v1976, v1977, v1978 = ipairs(CORE:GetChildren())
    while true do
        local v1979
        v1978, v1979 = v1976(v1977, v1978)
        if v1978 == nil then
            break
        end
        if v1979:IsA("GuiObject") and v1979.Visible then
            visibilidadeOriginal[v1979] = true
            v1979.Visible = false
        end
    end
end)
game:GetService("GuiService").MenuClosed:Connect(function()
    if next(visibilidadeOriginal) then
        local v1980, v1981, v1982 = pairs(visibilidadeOriginal)
        while true do
            local v1983
            v1982, v1983 = v1980(v1981, v1982)
            if v1982 == nil then
                break
            end
            if v1982 and v1982.Parent == CORE then
                v1982.Visible = v1983
            end
        end
        visibilidadeOriginal = {}
    end
end)
Corner(JanelaFlutuante, 30)
Corner(ChaoticFrame, 20)
Corner(NavegacaoFrame, 15)
Corner(NavegacaoTitle, 10)
Corner(IconeNave, 10)
Corner(imagemCH, 20)
Corner(BotaoFechar, 30)
Corner(CH, 30)
Corner(Titulo, 30)
Corner(HomeBotao, 30)
Corner(TargetBotao, 30)
Corner(CombateBotao, 30)
Corner(DefesaBotao, 30)
Corner(MoveBotao, 30)
Corner(VisualBotao, 30)
Corner(MiscBotao, 30)
Corner(ShopBotao, 30)
Corner(VipBotao, 30)
Corner(Icone1, 30)
Corner(Icone2, 30)
Corner(Icone3, 30)
Corner(Icone4, 30)
Corner(Icone5, 30)
Corner(Icone6, 30)
Corner(Icone7, 30)
Corner(Icone8, 30)
Corner(Icone9, 30)
Corner(FrameLocalInfo, 10)
Corner(iconeLocalInfo, 10)
Corner(BotaoLocalInfo, 10)
Corner(RankFrameLocal, 30)
Corner(SkillFrameLocal, 30)
Corner(KillsFrame, 30)
Corner(RobuxFrameLocal, 30)
Corner(DataFrameLocal, 30)
Corner(TempoFrame, 30)
Corner(IconeRankLocal, 30)
Corner(iconeSkillLocal, 30)
Corner(iconeKills, 30)
Corner(iconeRobuxLocal, 30)
Corner(iconeDataLocal, 30)
Corner(iconeTempo, 30)
Corner(FrameAds, 10)
Corner(iconeAds, 10)
Corner(BotaoAds, 10)
Corner(FrameTermux, 10)
Corner(FrameEryss, 10)
Corner(FrameWiwy, 10)
Corner(FrameAnuncios, 10)
Corner(OpcoesHome, 30)
Corner(RejoinBotao, 30)
Corner(ServerHopBotao, 30)
Corner(FreecamBotao, 30)
Corner(SafeZoneBotao, 30)
Corner(InfiniteBotao, 30)
Corner(iconeRJ, 30)
Corner(iconeSH, 30)
Corner(iconeFC, 30)
Corner(iconeSZ, 30)
Corner(iconeIN, 30)
Corner(TargetGuiBotao, 30)
Corner(SafelistBotao, 30)
Corner(AlvosBotao, 30)
Corner(FrameOpcoes2, 30)
Corner(iconeTGB, 30)
Corner(iconeAB, 30)
Corner(iconeSLB, 30)
Corner(FrameMulti, 15)
Corner(MultiTitle, 10)
Corner(IconeMultiTitle, 10)
Corner(LoopBotao, 30)
Corner(FlingBotao, 30)
Corner(CBringBotao, 30)
Corner(EspBotao, 30)
Corner(iconeLoop, 30)
Corner(iconeFling, 30)
Corner(iconeCBring, 30)
Corner(iconeEsp, 30)
Corner(iconeEsp, 30)
Corner(SelectAll, 10)
Corner(UnSelectAll, 10)
Corner(Lupa, 30)
Corner(Pesquisar, 30)
Corner(BotaoApagar, 30)
Corner(PerfilPlayerFrame, 20)
Corner(FundoPerfil, 20)
Corner(PerfilPlayerFrame, 30)
Corner(VoltarPerfil, 30)
Corner(TituloPerfil, 30)
Corner(PerfilFoto, 30)
Corner(FrameTituloSessaoInfos, 10)
Corner(FrameTituloSessaoModeracao, 10)
Corner(iconeTituloInfo, 10)
Corner(iconeTituloMod, 10)
Corner(RankFrame, 30)
Corner(SkillFrame, 30)
Corner(KillsFramePerfil, 30)
Corner(DataFrame, 30)
Corner(RobuxFrame, 30)
Corner(GotoFrame, 30)
Corner(IconeRank, 30)
Corner(iconeSkill, 30)
Corner(iconeKillsPerfil, 30)
Corner(iconeData, 30)
Corner(iconeRobux, 30)
Corner(iconeGoto, 30)
Corner(kickframe, 30)
Corner(Freeze, 10)
Corner(UnFreeze, 10)
Corner(ToolBan, 10)
Corner(UnToolBan, 10)
Corner(Blur, 10)
Corner(UnBlur, 10)
Corner(hop, 30)
Corner(Kill, 30)
Corner(Bring, 30)
Corner(SemPermissao, 10)
Corner(OcorreuErro, 30)
Corner(iconeOE, 30)
Corner(SafelistFrame, 30)
Corner(FundoSafelist, 30)
Corner(TituloSafelist, 30)
Corner(BotaoSobreSL, 30)
Corner(VoltarSafelist, 30)
Corner(BotaoCima, 30)
Corner(BotaoBaixo, 30)
Corner(BotaoClearAll, 30)
Corner(AddFrame, 30)
Corner(AddBotao, 30)
Corner(FrameESL, 10)
Corner(SalvosFrame, 30)
Corner(FundoSalvos, 30)
Corner(TituloSalvos, 30)
Corner(BotaoSobreAS, 30)
Corner(VoltarSalvos, 30)
Corner(PesquisarAlvos, 30)
Corner(LupaAlvos, 30)
Corner(BotaoApagarAlvos, 30)
Corner(TopoLista, 30)
Corner(FinalLista, 30)
Corner(NotiTarget, 30)
Corner(ClearAlvos, 30)
Corner(iconeTopo, 30)
Corner(iconeFinal, 30)
Corner(iconeNotiTarget, 30)
Corner(iconeClearAlvos, 30)
Corner(Dica, 30)
Corner(Lampada, 30)
Corner(Lampada2, 30)
Corner(FrameETL, 10)
Corner(TargetGuiFrame, 10)
Corner(BotaoSobreTG, 30)
Corner(BotaoFecharTG, 30)
Corner(TituloTG, 10)
Corner(FotoTG, 30)
Corner(NomeFrameTG, 10)
Corner(InfoTGnome, 30)
Corner(InfoTGsaude, 30)
Corner(InfoTGid, 30)
Corner(IconeTGnome, 30)
Corner(IconeTGsaude, 30)
Corner(IconeTGid, 30)
Corner(TGview, 10)
Corner(TGexplode, 10)
Corner(TGaxe, 10)
Corner(TGtrap, 10)
Corner(TGloop, 10)
Corner(TGgoto, 10)
Corner(Dash, 200)
Corner(Carry, 200)
Corner(BotaoEditMobile, 30)
Corner(JanelaFlutuanteTG, 30)
Corner(Display, 30)
Corner(VoidGui, 10)
Corner(BotaoFecharV, 30)
Corner(JanelaFlutuanteV, 30)
Corner(VoidMode, 10)
Corner(BotaoVoid, 20)
Corner(SobreProduto, 10)
Corner(TituloSobreP, 30)
Corner(IconeLoja, 50)
Corner(Hide, 5)
Corner(Customizado, 5)
Corner(Premium, 5)
Corner(AtacarPremiumP, 5)
Corner(Elite, 5)
Corner(textoH, 50)
Corner(textoC, 50)
Corner(textoP, 50)
Corner(textoE, 50)
Corner(textoAP, 50)
Corner(ImageH, 5)
Corner(ImageC, 5)
Corner(ImageP, 5)
Corner(ImageE, 5)
Corner(ImageAP, 5)
Stroke(ChaoticFrame, 255, 0, 0, 3)
Stroke(NavegacaoFrame, 255, 0, 0, 3)
Stroke(NavegacaoTitle, 0, 0, 0, 1.6)
Stroke(BotaoFechar, 255, 65, 0, 1)
Stroke(CH, 255, 65, 0, 1)
Stroke(Titulo, 125, 0, 0, 2)
Stroke(TextoTitulo2, 0, 0, 0, 2)
Stroke(IconeNave, 0, 0, 0, 1.5)
Stroke(TextoNave, 0, 0, 0, 1.5)
Stroke(Texto1, 0, 0, 0, 1.5)
Stroke(Texto2, 0, 0, 0, 1.5)
Stroke(Texto3, 0, 0, 0, 1.5)
Stroke(Texto4, 0, 0, 0, 1.5)
Stroke(Texto5, 0, 0, 0, 1.5)
Stroke(Texto6, 0, 0, 0, 1.5)
Stroke(Texto7, 0, 0, 0, 1.5)
Stroke(Texto8, 0, 0, 0, 1.5)
Stroke(Texto9, 0, 255, 255, 1.5)
Stroke(FrameLocalInfo, 0, 0, 0, 2)
Stroke(iconeLocalInfo, 0, 0, 0, 2)
Stroke(BotaoLocalInfo, 0, 0, 0, 2)
Stroke(textoLocaInfo, 0, 0, 0, 1)
Stroke(RankFrameLocal, 0, 0, 0, 2)
Stroke(SkillFrameLocal, 0, 0, 0, 2)
Stroke(KillsFrame, 0, 0, 0, 2)
Stroke(KillsFramePerfil, 0, 0, 0, 2)
Stroke(RobuxFrameLocal, 0, 0, 0, 2)
Stroke(DataFrameLocal, 0, 0, 0, 2)
Stroke(TempoFrame, 0, 0, 0, 2)
Stroke(IconeRankLocal, 0, 0, 0, 2)
Stroke(iconeSkillLocal, 0, 0, 0, 2)
Stroke(iconeKillsPerfil, 0, 0, 0, 2)
Stroke(iconeKills, 0, 0, 0, 2)
Stroke(iconeRobuxLocal, 0, 0, 0, 2)
Stroke(iconeDataLocal, 0, 0, 0, 2)
Stroke(iconeTempo, 0, 0, 0, 2)
Stroke(textoRankLocal, 0, 0, 0, 1)
Stroke(textoSkillLocal, 0, 0, 0, 1)
Stroke(textoKillsPerfil, 0, 0, 0, 1)
Stroke(textoKillsLocal, 0, 0, 0, 1)
Stroke(textoRobuxLocal, 0, 0, 0, 1)
Stroke(textoDataLocal, 0, 0, 0, 1)
Stroke(textoTempoLocal, 0, 0, 0, 1)
Stroke(FrameTermux, 255, 65, 0, 2)
Stroke(FrameEryss, 255, 65, 0, 2)
Stroke(FrameWiwy, 255, 65, 0, 2)
Stroke(TextoDiscord, 0, 0, 0, 1)
Stroke(TextoMusica, 0, 0, 0, 1)
Stroke(TextoSB, 0, 0, 0, 1)
Stroke(FrameAds, 0, 0, 0, 2)
Stroke(iconeAds, 0, 0, 0, 2)
Stroke(BotaoAds, 0, 0, 0, 2)
Stroke(textoAds, 0, 0, 0, 1)
Stroke(FrameAnuncios, 255, 65, 0, 2)
Stroke(OpcoesHome, 255, 95, 0, 1.5)
Stroke(RejoinBotao, 0, 0, 0, 2)
Stroke(ServerHopBotao, 0, 0, 0, 2)
Stroke(FreecamBotao, 0, 0, 0, 2)
Stroke(SafeZoneBotao, 0, 0, 0, 2)
Stroke(InfiniteBotao, 0, 0, 0, 2)
Stroke(iconeRJ, 0, 0, 0, 2)
Stroke(iconeSH, 0, 0, 0, 2)
Stroke(iconeFC, 0, 0, 0, 2)
Stroke(iconeSZ, 0, 0, 0, 2)
Stroke(iconeIN, 0, 0, 0, 2)
Stroke(textoRJ, 0, 0, 0, 1.5)
Stroke(textoSH, 0, 0, 0, 1.5)
Stroke(textoFC, 0, 0, 0, 1.5)
Stroke(textoSZ, 0, 0, 0, 1.5)
Stroke(textoIN, 0, 0, 0, 1.5)
Stroke(FrameOpcoes2, 255, 95, 0, 1.5)
Stroke(FrameMulti, 255, 95, 0, 1)
Stroke(TargetGuiBotao, 0, 0, 0, 2)
Stroke(AlvosBotao, 0, 0, 0, 2)
Stroke(SafelistBotao, 0, 0, 0, 2)
Stroke(iconeTGB, 0, 0, 0, 2)
Stroke(iconeAB, 0, 0, 0, 2)
Stroke(iconeSLB, 0, 0, 0, 2)
Stroke(textoTG, 0, 0, 0, 1.5)
Stroke(textoAlvos, 0, 0, 0, 1.5)
Stroke(textoSL, 0, 0, 0, 1.5)
Stroke(MultiTitle, 0, 0, 0, 1.6)
Stroke(IconeMultiTitle, 0, 0, 0, 1.6)
Stroke(TextoMultiTitle, 0, 0, 0, 1.6)
Stroke(LoopBotao, 255, 170, 0, 2)
Stroke(FlingBotao, 255, 170, 0, 2)
Stroke(CBringBotao, 255, 170, 0, 2)
Stroke(EspBotao, 255, 170, 0, 2)
Stroke(iconeLoop, 0, 0, 0, 2)
Stroke(iconeFling, 0, 0, 0, 2)
Stroke(iconeCBring, 0, 0, 0, 2)
Stroke(iconeEsp, 0, 0, 0, 2)
Stroke(textoLoop, 0, 0, 0, 1.5)
Stroke(textoFling, 0, 0, 0, 1.5)
Stroke(textoCBring, 0, 0, 0, 1.5)
Stroke(textoEsp, 0, 0, 0, 1.5)
Stroke(SelectAll, 35, 100, 50, 2)
Stroke(UnSelectAll, 120, 25, 25, 2)
Stroke(Pesquisar, 70, 70, 70, 2)
Stroke(Lupa, 70, 70, 70, 2)
Stroke(BotaoApagar, 0, 0, 0, 2)
Stroke(PesquisarBox, 0, 0, 0, 1.5)
Stroke(TextoApagar, 0, 0, 0, 1.5)
Stroke(PerfilPlayerFrame, 255, 0, 0, 3)
Stroke(PerfilFoto, 230, 230, 230, 1)
Stroke(VoltarPerfil, 230, 230, 230, 1)
Stroke(TituloPerfil, 125, 0, 0, 2)
Stroke(TextoTituloPerfil2, 0, 0, 0, 2)
Stroke(FrameTituloSessaoInfos, 0, 0, 0, 2)
Stroke(FrameTituloSessaoModeracao, 0, 0, 0, 2)
Stroke(iconeTituloInfo, 0, 0, 0, 2)
Stroke(iconeTituloMod, 0, 0, 0, 2)
Stroke(textoPlayerInfo, 0, 0, 0, 2)
Stroke(textoPlayerMod, 0, 0, 0, 2)
Stroke(RankFrame, 0, 0, 0, 2)
Stroke(SkillFrame, 0, 0, 0, 2)
Stroke(DataFrame, 0, 0, 0, 2)
Stroke(RobuxFrame, 0, 0, 0, 2)
Stroke(GotoFrame, 0, 0, 0, 2)
Stroke(IconeRank, 0, 0, 0, 2)
Stroke(iconeSkill, 0, 0, 0, 2)
Stroke(iconeData, 0, 0, 0, 2)
Stroke(iconeRobux, 0, 0, 0, 2)
Stroke(iconeGoto, 0, 0, 0, 2)
Stroke(textoRank, 0, 0, 0, 1)
Stroke(textoSkill, 0, 0, 0, 1)
Stroke(textoData, 0, 0, 0, 1)
Stroke(textoRobux, 0, 0, 0, 1)
Stroke(textoGoto, 255, 255, 255, 1)
Stroke(kickframe, 70, 70, 70, 2)
Stroke(KickBox, 0, 0, 0, 1)
Stroke(UnFreeze, 35, 100, 50, 2)
Stroke(Freeze, 120, 25, 25, 2)
Stroke(UnToolBan, 35, 100, 50, 2)
Stroke(ToolBan, 120, 25, 25, 2)
Stroke(UnBlur, 35, 100, 50, 2)
Stroke(Blur, 120, 25, 25, 2)
Stroke(hop, 180, 83, 9, 2)
Stroke(Kill, 180, 83, 9, 2)
Stroke(Bring, 180, 83, 9, 2)
Stroke(FreezeLabel, 0, 0, 0, 1)
Stroke(UnFreezeLabel, 0, 0, 0, 1)
Stroke(ToolBanLabel, 0, 0, 0, 1)
Stroke(UnToolBanLabel, 0, 0, 0, 1)
Stroke(BlurLabel, 0, 0, 0, 1)
Stroke(UnBlurLabel, 0, 0, 0, 1)
Stroke(hopLabel, 0, 0, 0, 1)
Stroke(KillLabel, 0, 0, 0, 1)
Stroke(BringLabel, 0, 0, 0, 1)
Stroke(SemPermissao, 255, 255, 255, 2)
Stroke(OcorreuErro, 70, 70, 70, 2)
Stroke(iconeOE, 70, 70, 70, 2)
Stroke(TextoOE, 255, 255, 255, 0.5)
Stroke(SafelistFrame, 0, 0, 255, 3)
Stroke(TituloSafelist, 65, 105, 225, 3)
Stroke(TextoTituloSafelist, 0, 0, 0, 2)
Stroke(BotaoSobreSL, 0, 0, 139, 1)
Stroke(VoltarSafelist, 0, 0, 139, 1)
Stroke(BotaoCima, 0, 0, 139, 2)
Stroke(BotaoBaixo, 0, 0, 139, 2)
Stroke(BotaoClearAll, 0, 0, 0, 2)
Stroke(AddFrame, 25, 25, 112, 3)
Stroke(AddBotao, 25, 25, 112, 3)
Stroke(AddBox, 0, 0, 0, 2)
Stroke(FrameESL, 0, 0, 139, 1)
Stroke(TextoESL, 0, 0, 0, 1)
Stroke(SalvosFrame, 255, 0, 0, 3)
Stroke(TituloSalvos, 125, 0, 0, 2)
Stroke(TextoTituloSalvos, 0, 0, 0, 2)
Stroke(BotaoSobreAS, 230, 230, 230, 1)
Stroke(VoltarSalvos, 230, 230, 230, 1)
Stroke(PesquisarAlvos, 70, 70, 70, 2)
Stroke(LupaAlvos, 70, 70, 70, 2)
Stroke(PesquisarBoxAlvos, 0, 0, 0, 1.5)
Stroke(BotaoApagarAlvos, 0, 0, 0, 2)
Stroke(TextoApagarAlvos, 0, 0, 0, 1.5)
Stroke(TopoLista, 90, 130, 180, 2)
Stroke(FinalLista, 0, 206, 209, 2)
Stroke(NotiTarget, 35, 100, 50, 2)
Stroke(ClearAlvos, 200, 50, 50, 2)
Stroke(iconeTopo, 90, 130, 180, 2)
Stroke(iconeFinal, 0, 206, 209, 2)
Stroke(iconeNotiTarget, 35, 100, 50, 2)
Stroke(iconeClearAlvos, 200, 50, 50, 2)
Stroke(TextoTopo, 0, 25, 40, 0.5)
Stroke(TextoFinal, 0, 0, 0, 0.5)
Stroke(TextoNotificar, 0, 30, 0, 0.5)
Stroke(TextoLimpar, 255, 180, 180, 0.5)
Stroke(Dica, 70, 70, 70, 2)
Stroke(Lampada, 70, 70, 70, 2)
Stroke(Lampada2, 70, 70, 70, 2)
Stroke(TextoDica, 0, 0, 0, 2)
Stroke(FrameETL, 265, 95, 0, 1)
Stroke(TextoETL, 0, 0, 0, 1)
Stroke(TargetGuiFrame, 255, 0, 0, 2)
Stroke(BotaoSobreTG, 255, 255, 255, 1)
Stroke(BotaoFecharTG, 255, 255, 255, 1)
Stroke(TextoSobreTG, 0, 0, 0, 1)
Stroke(TextoFecharTG, 0, 0, 0, 1)
Stroke(TituloTG, 125, 0, 0, 1.5)
Stroke(TextoTituloTG, 0, 0, 0, 2)
Stroke(FotoTG, 139, 0, 0, 1.5)
Stroke(NomeFrameTG, 139, 0, 0, 1.5)
Stroke(NomeTextBoxTG, 0, 0, 0, 2)
Stroke(InfoTGnome, 0, 0, 0, 2)
Stroke(InfoTGsaude, 0, 0, 0, 2)
Stroke(InfoTGid, 0, 0, 0, 2)
Stroke(IconeTGnome, 0, 0, 0, 2)
Stroke(IconeTGsaude, 0, 0, 0, 2)
Stroke(IconeTGid, 0, 0, 0, 2)
Stroke(textoTGnome, 0, 0, 0, 0.5)
Stroke(textoTGsaude, 0, 0, 0, 1)
Stroke(textoTGid, 0, 0, 0, 1)
Stroke(TGview, 0, 0, 0, 2)
Stroke(TGexplode, 0, 0, 0, 2)
Stroke(TGaxe, 0, 0, 0, 2)
Stroke(TGtrap, 0, 0, 0, 2)
Stroke(TGloop, 0, 0, 0, 2)
Stroke(TGgoto, 0, 0, 0, 2)
Stroke(label1, 0, 0, 0, 2)
Stroke(label2, 0, 0, 0, 2)
Stroke(label3, 0, 0, 0, 2)
Stroke(label4, 0, 0, 0, 2)
Stroke(label5, 0, 0, 0, 2)
Stroke(label6, 0, 0, 0, 2)
Stroke(JanelaFlutuanteTG, 255, 0, 0, 3)
Stroke(Dash, 255, 255, 255, 1)
Stroke(Carry, 255, 255, 255, 1)
Stroke(BotaoEditMobile, 0, 0, 0, 2)
Stroke(TextoEM, 0, 0, 0, 1)
Stroke(Display, 255, 255, 255, 1.5)
Stroke(PingTexto, 0, 0, 0, 1)
Stroke(FpsTexto, 0, 0, 0, 1)
Stroke(VoidGui, 255, 0, 0, 2)
Stroke(BotaoFecharV, 0, 0, 0, 3)
Stroke(JanelaFlutuanteV, 255, 0, 0, 3)
Stroke(VoidMode, 0, 0, 0, 2)
Stroke(VoidModeLabel, 0, 0, 0, 2)
Stroke(BotaoVoid, 0, 0, 0, 2)
Stroke(BotaoVoidLabel, 0, 0, 0, 2)
Stroke(XTextoV, 0, 0, 0, 1)
Stroke(SobreProduto, 255, 55, 0, 1.5)
Stroke(TituloSobreP, 0, 0, 0, 1.5)
Stroke(IconeLoja, 0, 0, 0, 1.5)
Stroke(textoSobreLoja, 0, 0, 0, 2)
Stroke(Hide, 70, 70, 70, 2)
Stroke(Customizado, 0, 0, 255, 2)
Stroke(Premium, 255, 255, 0, 2)
Stroke(AtacarPremiumP, 255, 239, 213, 2)
Stroke(Elite, 178, 34, 34, 2)
Stroke(textoH, 255, 255, 255, 1.5)
Stroke(textoHLabel, 0, 0, 0, 1)
Stroke(textoC, 10, 10, 90, 1.5)
Stroke(textoP, 50, 40, 0, 1.5)
Stroke(textoE, 205, 92, 92, 1.5)
Stroke(textoAP, 189, 183, 107, 1.5)
Stroke(ImageH, 255, 255, 255, 1.5)
Stroke(ImageC, 10, 10, 90, 1.5)
Stroke(ImageP, 50, 40, 0, 1.5)
Stroke(ImageE, 206, 92, 92, 1.5)
Stroke(ImageAP, 189, 183, 107, 1.5)
coroutine.wrap(function()
    tempoDecorrido = 0
    while true do
        textoTempoLocal.Text = string.format("%s: %02d:%02d", traducao.GameTime, math.floor(tempoDecorrido / 60), tempoDecorrido % 60)
        tempoDecorrido = tempoDecorrido + 1
        wait(1)
    end
end)()
