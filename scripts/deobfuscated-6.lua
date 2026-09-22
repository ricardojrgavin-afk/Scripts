-- This file was generated at discord.gg/syncrypt

local t1 = {}
local ok, result = pcall(function()
    assert(getgc, "executor missing required function getgc")
    assert(debug.info, "executor missing required function debug.info")
    assert(hookfunction, "executor missing required function hookfunction")
    assert(getconnections, "executor missing required function getconnections")
    for v22, v23 in getgc() do

        local v24 = typeof(v23) == "function"

        if v24 then
            v24 = string.find(debug.info(v23, "s"), "AnalyticsPipelineController")
        end

        if v24 then
            print("Hanging Anticheat script...")
            hookfunction(v23, function()
                return task.wait(9000000000)
            end)
        end
    end
    for _, v26 in getconnections(game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AnalyticsPipeline"):WaitForChild("RemoteEvent").OnClientEvent) do
        print("Hooking Anticheat client event...")
        hookfunction(v26.Function, function()
        end)
    end
end)

if not ok then
    print("Failed (Ass Executor): " .. result)
else
    print("Finished (Bypassed)")
end
t1.value1 = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local v4 = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local v5 = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local value1 = t1.value1
local CreateWindow = value1.CreateWindow
local uDim2 = UDim2.fromOffset(580, 500)
local RightControl = Enum.KeyCode.RightControl
t1.value2 = CreateWindow(value1, {
	Title = "Vylera Hub | RIVALS",
	SubTitle = "Premium Aimbot, ESP & AntiCheat Bypass",
	TabWidth = 160,
	Size = uDim2,
	Acrylic = true,
	Theme = "Dark",
	MinimizeKey = RightControl
})
t1.value3 = game:GetService("Players")

local RunService = game:GetService("RunService")

t1.value4 = game:GetService("UserInputService")
t1.value5 = game:GetService("Workspace")

local CoreGui = game:GetService("CoreGui")

t1.value6 = game:GetService("Lighting")
t1.value7 = t1.value3.LocalPlayer
t1.value8 = t1.value5.CurrentCamera
t1.value9 = false
t1.value10 = false
t1.value11 = false
t1.value12 = false
t1.value13 = true
t1.value14 = true
t1.value15 = true
t1.value16 = "Head"
t1.value17 = 100
t1.value18 = 0.2
t1.value19 = false
t1.value20 = false
t1.value21 = Instance.new("Folder")
t1.value21.Name = "VyleraESPFolder"
t1.value21.Parent = CoreGui
t1.value22 = {}
t1.value23 = {}
t1.value24 = {}
local v12 = t1.value2:AddTab({
	Title = "Main",
	Icon = "home"
})
local v13 = t1.value2:AddTab({
	Title = "Aimbot",
	Icon = "target"
})
local v14 = t1.value2:AddTab({
	Title = "ESP",
	Icon = "eye"
})
local v15 = t1.value2:AddTab({
	Title = "Visuals",
	Icon = "monitor"
})
local v16 = t1.value2:AddTab({
	Title = "Settings",
	Icon = "settings"
})
local t2 = {
	Main = v12,
	Aimbot = v13,
	ESP = v14,
	Visuals = v15,
	Settings = v16
}
function GetClosestPlayer()
    local v27
    local value17 = t1.value17
    local MouseLocation = t1.value4:GetMouseLocation()
    for _, player in pairs(t1.value3:GetPlayers()) do
        if player ~= t1.value7 and player.Character then
            local Humanoid = player.Character:FindFirstChild("Humanoid")
            local HumanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
            local v34 = not Humanoid

            if not v34 then
                v34 = not HumanoidRootPart
            end

            if not v34 and not (Humanoid.Health <= 0) then
                local value14 = t1.value14

                if value14 then
                    value14 = player.Team

                    if value14 then
                        value14 = t1.value7.Team

                        if value14 then
                            value14 = player.Team == t1.value7.Team
                        end
                    end
                end

                if not value14 then
                    local t1value16 = player.Character:FindFirstChild(t1.value16)

                    if t1value16 then
                        local v37, v38 = t1.value8:WorldToViewportPoint(t1value16.Position)

                        if v38 then
                            local Magnitude = (Vector2.new(MouseLocation.X, MouseLocation.Y) - Vector2.new(v37.X, v37.Y)).Magnitude

                            if Magnitude < value17 then
                                value17 = Magnitude
                                v27 = player
                            end
                        end
                    end
                end
            end
        end
    end

    return v27
end
t1.value25 = RunService.RenderStepped:Connect(function()
    local value9 = t1.value9

    if value9 then
        value9 = t1.value7.Character

        if value9 then
            value9 = t1.value7.Character:FindFirstChild("HumanoidRootPart")
        end
    end

    if value9 and t1.value4:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) then
        local v41 = GetClosestPlayer()
        local v42 = v41

        if v41 then
            v42 = v41.Character

            if v42 then
                v42 = v41.Character:FindFirstChild(t1.value16)
            end
        end

        if v42 then
            local Position = v41.Character[t1.value16].Position

            if t1.value15 then
                local value8CFrame = t1.value8.CFrame
                local Unit = (Position - value8CFrame.Position).Unit
                local cFrame = CFrame.new(value8CFrame.Position, value8CFrame.Position + Unit)

                t1.value8.CFrame = value8CFrame:Lerp(cFrame, t1.value18)

                return
            end

            t1.value8.CFrame = CFrame.new(t1.value8.CFrame.Position, Position)
        end
    end
end)
t1.value26 = RunService.RenderStepped:Connect(function()
    local value19 = t1.value19

    if value19 then
        value19 = t1.value7.Character
    end

    if value19 then
        local v56 = GetClosestPlayer()

        if v56 then
            local Character = v56.Character

            if Character then
                Character = v56.Character:FindFirstChild("Head")
            end

            v56 = Character
        end

        if v56 then
            t1.value7:GetMouse()
            mouse1click()
        end
    end
end)

function t1.value27(p1)
    if t1.value23[p1] then
        return
    end

    local drawing = Drawing.new("Line")

    drawing.Visible = false
    drawing.Color = Color3.fromRGB(255, 255, 0)
    drawing.Thickness = 1
    drawing.Transparency = 1
    t1.value23[p1] = drawing
end
function t1.value28()
    if not t1.value11 then
        return
    end

    local Character = t1.value7.Character

    if Character then
        Character = t1.value7.Character:FindFirstChild("HumanoidRootPart")
    end

    if not Character then
        return
    end

    for k, v in pairs(t1.value23) do
        local v63 = k
        local Character2 = v63.Character

        if Character2 then
            Character2 = v63.Character:FindFirstChild("HumanoidRootPart")
        end

        if Character2 then
            local Humanoid = v63.Character:FindFirstChild("Humanoid")

            if Humanoid and Humanoid.Health > 0 then
                local HumanoidRootPart = v63.Character.HumanoidRootPart
                local v67, v68 = t1.value8:WorldToViewportPoint(HumanoidRootPart.Position)

                if v68 then
                    local v69 = t1.value8:WorldToViewportPoint(Character.Position)

                    v.From = Vector2.new(v69.X, v69.Y)
                    v.To = Vector2.new(v67.X, v67.Y)
                    v.Visible = true
                else
                    v.Visible = false
                end
            else
                v.Visible = false
            end
        else
            v.Visible = false
        end
    end
end
function t1.value29(p2)
    if t1.value24[p2] then
        return
    end

    local drawing = Drawing.new("Square")

    drawing.Visible = false
    drawing.Color = Color3.fromRGB(255, 0, 0)
    drawing.Thickness = 2
    drawing.Filled = false
    drawing.Transparency = 1
    t1.value24[p2] = drawing
end
function t1.value30()
    if not t1.value12 then
        return
    end

    for k, v in pairs(t1.value24) do
        local v74 = k
        local Character = v74.Character

        if Character then
            Character = v74.Character:FindFirstChild("HumanoidRootPart")
        end

        if Character then
            local Humanoid = v74.Character:FindFirstChild("Humanoid")

            if Humanoid and Humanoid.Health > 0 then
                local HumanoidRootPart = v74.Character.HumanoidRootPart
                local v79, t3Result = t1.value8:WorldToViewportPoint(HumanoidRootPart.Position)
                if t3Result then
                    local vector2 = Vector2.new(2000 / v79.Z, 3000 / v79.Z)

                    v.Size = vector2
                    v.Position = Vector2.new(v79.X - vector2.X / 2, v79.Y - vector2.Y / 2)
                    v.Visible = true

                    local value14 = t1.value14

                    if value14 then
                        value14 = v74.Team

                        if value14 then
                            value14 = t1.value7.Team

                            if value14 then
                                value14 = v74.Team == t1.value7.Team
                            end
                        end
                    end

                    if value14 then
                        v.Color = Color3.fromRGB(0, 255, 0)
                    else
                        v.Color = Color3.fromRGB(255, 0, 0)
                    end
                else
                    v.Visible = false
                end
            else
                v.Visible = false
            end
        else
            v.Visible = false
        end
    end
end
t1.value31 = nil
function t1.value31(p3)
    local Highlight = Instance.new("Highlight")

    Highlight.Name = "VyleraESP_" .. p3.Name

    local value14 = t1.value14

    if value14 then
        value14 = p3.Team

        if value14 then
            value14 = t1.value7.Team

            if value14 then
                value14 = p3.Team == t1.value7.Team
            end
        end
    end

    if value14 then
        Highlight.FillColor = Color3.fromRGB(0, 255, 0)
        Highlight.OutlineColor = Color3.fromRGB(0, 200, 0)
    else
        Highlight.FillColor = Color3.fromRGB(255, 0, 0)
        Highlight.OutlineColor = Color3.fromRGB(200, 0, 0)
    end

    Highlight.FillTransparency = 0.5
    Highlight.OutlineTransparency = 0
    Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    Highlight.Parent = t1.value21

    local BillboardGui = Instance.new("BillboardGui")

    BillboardGui.Name = "VyleraBillboard_" .. p3.Name
    BillboardGui.Size = UDim2.new(0, 200, 0, 50)
    BillboardGui.StudsOffset = Vector3.new(0, 3, 0)
    BillboardGui.AlwaysOnTop = true
    BillboardGui.Parent = t1.value21

    local TextLabel = Instance.new("TextLabel")

    TextLabel.Size = UDim2.new(1, 0, 1, 0)
    TextLabel.BackgroundTransparency = 1
    TextLabel.TextSize = 14
    TextLabel.Font = Enum.Font.GothamBold
    TextLabel.Visible = t1.value13
    TextLabel.Parent = BillboardGui

    return {
		Highlight = Highlight,
		Billboard = BillboardGui,
		TextLabel = TextLabel
	}
end
function t1.value32()
    for _, player in pairs(t1.value3:GetPlayers()) do
        if player ~= t1.value7 then
            if not t1.value22[player] then
                t1.value22[player] = {}
            end

            local Character = player.Character
            local v85 = Character and Character:FindFirstChild("HumanoidRootPart")
            local v86 = Character

            if Character then
                v86 = Character:FindFirstChild("Humanoid")
            end

            local value10 = t1.value10

            if value10 then
                value10 = Character

                if Character then
                    value10 = v85

                    if v85 then
                        value10 = v86 and v86.Health > 0
                    end
                end
            end

            if value10 then
                if not t1.value22[player].Highlight then
                    local v88 = t1.value31(player)

                    t1.value22[player].Highlight = v88.Highlight
                    t1.value22[player].Billboard = v88.Billboard
                    t1.value22[player].TextLabel = v88.TextLabel
                end

                if t1.value22[player].Highlight then
                    t1.value22[player].Highlight.Adornee = Character
                    t1.value22[player].Highlight.Enabled = true

                    local value14 = t1.value14

                    if value14 then
                        value14 = player.Team

                        if value14 then
                            value14 = t1.value7.Team

                            if value14 then
                                value14 = player.Team == t1.value7.Team
                            end
                        end
                    end

                    if value14 then
                        t1.value22[player].Highlight.FillColor = Color3.fromRGB(0, 255, 0)
                        t1.value22[player].Highlight.OutlineColor = Color3.fromRGB(0, 200, 0)
                    else
                        t1.value22[player].Highlight.FillColor = Color3.fromRGB(255, 0, 0)
                        t1.value22[player].Highlight.OutlineColor = Color3.fromRGB(200, 0, 0)
                    end
                end

                if t1.value22[player].Billboard then
                    t1.value22[player].Billboard.Adornee = v85
                    t1.value22[player].Billboard.Enabled = true

                    if t1.value22[player].TextLabel then
                        t1.value22[player].TextLabel.Visible = t1.value13

                        if t1.value13 then
                            local value14 = t1.value14

                            if value14 then
                                value14 = player.Team

                                if value14 then
                                    value14 = t1.value7.Team

                                    if value14 then
                                        value14 = player.Team == t1.value7.Team
                                    end
                                end
                            end

                            if value14 then
                                t1.value22[player].TextLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
                                t1.value22[player].TextLabel.Text = player.Name .. " (Team)"
                            else
                                t1.value22[player].TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
                                t1.value22[player].TextLabel.Text = player.Name .. " (Enemy)"
                            end
                        end
                    end
                end
            else
                if t1.value22[player].Highlight then
                    t1.value22[player].Highlight.Enabled = false
                end

                if t1.value22[player].Billboard then
                    t1.value22[player].Billboard.Enabled = false
                end
            end
        end
    end
end
function t1.value33()
    if not t1.value20 then
        return
    end

    for _, descendant in pairs(t1.value5:GetDescendants()) do
        local v49 = descendant:IsA("Part")

        if not v49 then
            v49 = descendant:IsA("MeshPart") or descendant:IsA("UnionOperation")
        end

        if v49 and descendant.Transparency < 0.5 then
            descendant.LocalTransparencyModifier = 0.5
        end
    end
end
t1.value34 = RunService.Heartbeat:Connect(function()
    t1.value32()
    t1.value28()
    t1.value30()
    t1.value33()
end)
t2.Main:AddParagraph({
	Title = "Vylera Hub | RIVALS",
	Content = "Premium Aimbot, ESP & AntiCheat Bypass"
})
t2.Main:AddToggle("AimbotToggle", {
	Title = "Enable Aimbot",
	Description = "Right click to lock onto closest player",
	Default = false,
	Callback = function(p4)
    t1.value9 = p4

    if p4 then
        t1.value1:Notify({
				Title = "Aimbot Enabled",
				Content = "Right click to use aimbot",
				Duration = 3
			})
    end
end
})
t2.Main:AddToggle("ESPToggle", {
	Title = "Enable ESP",
	Description = "Show player highlights and names",
	Default = false,
	Callback = function(p5)
    t1.value10 = p5

    if p5 then
        t1.value1:Notify({
				Title = "ESP Enabled",
				Content = "Player highlights activated",
				Duration = 3
			})
        t1.value32()

        return
    end

    for _, player in pairs(t1.value3:GetPlayers()) do
        if t1.value22[player] then
            if t1.value22[player].Highlight then
                t1.value22[player].Highlight.Enabled = false
            end

            if t1.value22[player].Billboard then
                t1.value22[player].Billboard.Enabled = false
            end
        end
    end
end
})
t2.Main:AddToggle("TracersToggle", {
	Title = "Enable Tracers",
	Description = "Show yellow lines to players",
	Default = false,
	Callback = function(p6)
    t1.value11 = p6

    if p6 then
        t1.value1:Notify({
				Title = "Tracers Enabled",
				Content = "Yellow tracers activated",
				Duration = 3
			})

        for _, player in pairs(t1.value3:GetPlayers()) do
            if player ~= t1.value7 then
                t1.value27(player)
            end
        end

        return
    end

    for k, v in pairs(t1.value23) do
        v:Remove()
        t1.value23[k] = nil
    end
end
})
t2.Main:AddToggle("TriggerBotToggle", {
	Title = "Enable Trigger Bot",
	Description = "Auto shoot when target is in sight",
	Default = false,
	Callback = function(p7)
    t1.value19 = p7

    if p7 then
        t1.value1:Notify({
				Title = "Trigger Bot Enabled",
				Content = "Auto shooting activated",
				Duration = 3
			})
    end
end
})
t2.Aimbot:AddParagraph({
	Title = "Aimbot Settings",
	Content = "Configure your aiming preferences"
})
t2.Aimbot:AddToggle("TeamCheck", {
	Title = "Team Check",
	Description = "Ignore teammates",
	Default = true,
	Callback = function(p8)
    t1.value14 = p8
    t1.value32()
end
})
t2.Aimbot:AddToggle("SmoothAim", {
	Title = "Smooth Aim",
	Description = "Smooth camera movement",
	Default = true,
	Callback = function(p9)
    t1.value15 = p9
end
})
t2.Aimbot:AddSlider("AimbotFOV", {
	Title = "Aimbot FOV",
	Description = "Field of view for target detection",
	Default = 100,
	Min = 10,
	Max = 300,
	Rounding = 1,
	Callback = function(p10)
    t1.value17 = p10
end
})
t2.Aimbot:AddSlider("Smoothness", {
	Title = "Smoothness",
	Description = "Aimbot smoothness level",
	Default = 20,
	Min = 1,
	Max = 50,
	Rounding = 1,
	Callback = function(p11)
    t1.value18 = p11 / 100
end
})
t2.Aimbot:AddDropdown("AimPart", {
	Title = "Aim Part",
	Description = "Choose which part to aim at",
	Values = {
		"Head",
		"HumanoidRootPart",
		"UpperTorso"
	},
	Default = "Head",
	Callback = function(p12)
    t1.value16 = p12
end
})
t2.ESP:AddParagraph({
	Title = "ESP Settings",
	Content = "Configure player visualization"
})
t2.ESP:AddToggle("ESPTeamCheck", {
	Title = "Team Colors",
	Description = "Show team colors in ESP",
	Default = true,
	Callback = function(p13)
    t1.value14 = p13
    t1.value32()
end
})
t2.ESP:AddToggle("ShowNames", {
	Title = "Show Player Names",
	Description = "Display player names in ESP",
	Default = true,
	Callback = function(p14)
    t1.value13 = p14
    t1.value32()
end
})
t2.ESP:AddToggle("BoxESP", {
	Title = "Box ESP",
	Description = "Show boxes around players",
	Default = false,
	Callback = function(p15)
    t1.value12 = p15

    if p15 then
        for _, player in pairs(t1.value3:GetPlayers()) do
            if player ~= t1.value7 then
                t1.value29(player)
            end
        end

        return
    end

    for k, v in pairs(t1.value24) do
        v:Remove()
        t1.value24[k] = nil
    end
end
})
t2.Visuals:AddParagraph({
	Title = "Visual Enhancements",
	Content = "Game visual modifications"
})
t2.Visuals:AddToggle("Wallhack", {
	Title = "Wallhack",
	Description = "See through walls",
	Default = false,
	Callback = function(p16)
    t1.value20 = p16

    if not p16 then
        for _, descendant in pairs(t1.value5:GetDescendants()) do
            local v116 = descendant:IsA("Part")

            if not v116 then
                v116 = descendant:IsA("MeshPart") or descendant:IsA("UnionOperation")
            end

            if v116 then
                descendant.LocalTransparencyModifier = 0
            end
        end
    end
end
})
t2.Visuals:AddButton({
	Title = "Full Bright",
	Description = "Remove darkness from the game",
	Callback = function()
    t1.value6.Ambient = Color3.new(1, 1, 1)
    t1.value6.Brightness = 2
    t1.value6.GlobalShadows = false
    t1.value1:Notify({
			Title = "Full Bright",
			Content = "Game brightness enhanced",
			Duration = 3
		})
end
})
t2.Settings:AddParagraph({
	Title = "Settings",
	Content = "Hub configuration and information"
})
t2.Settings:AddLabel("Vylera Hub Information:")
t2.Settings:AddLabel("Game: RIVALS")
t2.Settings:AddLabel("Features: Aimbot, ESP, Tracers, TriggerBot, Wallhack")
t2.Settings:AddLabel("Aimbot Key: Right Click")
t2.Settings:AddLabel("Team Check: " .. (not t1.value14 and "Disabled" or "Enabled"))
t2.Settings:AddLabel("AntiCheat: Bypassed")
t2.Settings:AddButton({
	Title = "Destroy GUI",
	Description = "Close the menu and clean up",
	Callback = function()
    if t1.value25 then
        t1.value25:Disconnect()
    end
    if t1.value26 then
        t1.value26:Disconnect()
    end
    if t1.value34 then
        t1.value34:Disconnect()
    end
    if t1.value21 then
        t1.value21:Destroy()
    end
    for v119, v120 in pairs(t1.value22) do

        if v120.Highlight then
            v120.Highlight:Destroy()
        end

        if v120.Billboard then
            v120.Billboard:Destroy()
        end
    end
    for v123, v124 in pairs(t1.value23) do

        v124:Remove()
    end
    for v127, v128 in pairs(t1.value24) do

        v128:Remove()
    end
    for _, descendant in pairs(t1.value5:GetDescendants()) do
        local v131 = descendant:IsA("Part")

        if not v131 then
            v131 = descendant:IsA("MeshPart")

            if not v131 then
                v131 = descendant:IsA("UnionOperation")
            end
        end

        if v131 then
            descendant.LocalTransparencyModifier = 0
        end
    end
    t1.value2:Destroy()
    t1.value1:Notify({
			Title = "Vylera Hub",
			Content = "Thank you for using Vylera Hub!",
			Duration = 3
		})
end
})
t1.value3.PlayerAdded:Connect(function(player)
    task.wait(1)
    t1.value32()

    if t1.value11 then
        t1.value27(player)
    end

    if t1.value12 then
        t1.value29(player)
    end
end)
t1.value3.PlayerRemoving:Connect(function(player)
    if t1.value22[player] then
        if t1.value22[player].Highlight then
            t1.value22[player].Highlight:Destroy()
        end

        if t1.value22[player].Billboard then
            t1.value22[player].Billboard:Destroy()
        end

        t1.value22[player] = nil
    end

    if t1.value23[player] then
        t1.value23[player]:Remove()
        t1.value23[player] = nil
    end

    if t1.value24[player] then
        t1.value24[player]:Remove()
        t1.value24[player] = nil
    end
end)

for _, player in pairs(t1.value3:GetPlayers()) do
    if player ~= t1.value7 then
        t1.value31(player)
        t1.value27(player)
        t1.value29(player)
    end
end
v4:SetLibrary(t1.value1)
v5:SetLibrary(t1.value1)
v4:IgnoreThemeSettings()
v4:SetIgnoreIndexes({})
v5:BuildInterfaceSection(t2.Settings)
t1.value2:SelectTab(1)
t1.value1:Notify({
	Title = "Vylera Hub Loaded",
	Content = "Premium Aimbot, ESP & AntiCheat Bypass activated for RIVALS!",
	Duration = 5
})
t1.value1:Notify({
	Title = "Controls",
	Content = "Press RightControl to hide/show interface",
	Duration = 8
})
print("Vylera Hub | RIVALS - Premium Loaded Successfully!")
print("AntiCheat Bypass: Active")
print("Features: Aimbot, ESP, Tracers, TriggerBot, Wallhack")
