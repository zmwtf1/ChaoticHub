-- Cracked by Nivalos
pcall(function()
    if not isfolder("[CHAOS] ANTI-ORION") then
        makefolder("[CHAOS] ANTI-ORION")
    end
end)
local vu1 = game:GetService("Players")
local v2 = game:GetService("ReplicatedStorage")
local vu3 = vu1.LocalPlayer
local vu4 = v2:WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
local vu5 = "[CHAOS] ANTI-ORION/Orions IDS.txt"
pcall(function()
    if isfolder("[CHAOS] ANTI-ORION") and not isfile(vu5) then
        writefile(vu5, "")
    end
end)
function Block(p6)
    local v7 = vu1:FindFirstChild(p6)
    if v7 then
        game:GetService("StarterGui"):SetCore("PromptBlockPlayer", v7)
        local vu8 = game:GetService("CoreGui"):WaitForChild("RobloxGui"):WaitForChild("PromptDialog"):WaitForChild("ContainerFrame")
        task.spawn(function()
            repeat
                task.wait()
            until vu8.Visible
            repeat
                local v9 = vu8:FindFirstChild("ConfirmButton")
                task.wait()
            until v9 and v9.Visible
            local v10, v11, v12 = ipairs(getconnections(v9.MouseButton1Click))
            while true do
                local vu13
                v12, vu13 = v10(v11, v12)
                if v12 == nil then
                    break
                end
                pcall(function()
                    vu13:Fire()
                end)
            end
        end)
    end
end
function lerLista()
    local v14 = {}
    local v15, v16 = pcall(function()
        return readfile(vu5)
    end)
    if v15 and v16 ~= "" then
        local v17, v18, v19 = string.gmatch(v16, "([^,]+)")
        while true do
            v19 = v17(v18, v19)
            if v19 == nil then
                break
            end
            table.insert(v14, v19)
        end
    end
    return v14
end
function salvarLista(pu20)
    pcall(function()
        writefile(vu5, table.concat(pu20, ","))
    end)
end
function nomeComecaComOrion(p21)
    return p21:upper():sub(1, 5) == "ORION"
end
mensagens = {
    "[ ANTI-ORI0N ] ORION DETECTED \226\128\148 CREATING NEW SERVER.",
    "[ ANTI-0RION ] MALICIOUS BOT ORION FOUND \226\128\148 CREATING  NEW SERVER.",
    "[ ANTI-ORION ] UNSAFE SERVER DETECTED \226\128\148 CREATING NEW  SERVER.",
    "[ ANTI-ORION ] BOT PRESENCE CONFIRMED \226\128\148 CREATING NEW SERVER .",
    "[ ANTI-0RION ] ORION BOT IDENTIFIED \226\128\148 CREATING NEW SERVER. ",
    "[ ANTI-ORION ] SECURITY BREACH \226\128\148 CREATlNG NEW SERVER.",
    "[ ANTI-ORION ] HOSTILE USER DETECTED \226\128\148 CREATING NEW SERV\196\146R.",
    "[ ANTI-ORION ] ORION IN SERVER \226\128\148 CREATING N\206\149W SERVER.",
    "[ A.NTI-ORION ] SERVER COMPROMISED \226\128\148 \208\161REATING NEW SERVER.",
    "[ ANTI-ORION. ] DANGER DETECTED \226\128\148 CREATING \206\157EW SERVER."
}
function avisarEFechar()
    vu4:FireServer(mensagens[math.random(1, # mensagens)], "All")
    task.delay(2, function()
        game:Shutdown()
    end)
end
function detectarEBloquear()
    local v22 = lerLista()
    local v23 = vu1
    local v24, v25, v26 = ipairs(v23:GetPlayers())
    while true do
        local v27
        v26, v27 = v24(v25, v26)
        if v26 == nil then
            break
        end
        if v27 ~= vu3 and table.find(v22, v27.Name) then
            avisarEFechar()
            return
        end
    end
    local v28 = vu1
    local v29, v30, v31 = ipairs(v28:GetPlayers())
    local v32 = false
    while true do
        local v33
        v31, v33 = v29(v30, v31)
        if v31 == nil then
            break
        end
        if v33 ~= vu3 and (nomeComecaComOrion(v33.Name) and not table.find(v22, v33.Name)) then
            table.insert(v22, v33.Name)
            Block(v33.Name)
            v32 = true
        end
    end
    if v32 then
        salvarLista(v22)
        avisarEFechar()
    end
end
detectarEBloquear()
vu1.PlayerAdded:Connect(function()
    detectarEBloquear()
end)