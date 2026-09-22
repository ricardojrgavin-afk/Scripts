-- This file was generated at discord.gg/syncrypt

local v1 = unpack or table.unpack
local v2 = loadstring(game:HttpGet("https://github.com/biggaboy212/Maclib/releases/latest/download/maclib.txt"))()
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")
local CurrentCamera = workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer
LocalPlayer:GetMouse()
local RightAltName = Enum.KeyCode.RightAlt.Name
local t1 = {
	Enabled = false,
	AlwaysOn = false,
	FOV = 150,
	WallCheck = false,
	TeamCheck = false,
	Smoothness = 0.5,
	ShowFOV = false,
	ToggleKey = RightAltName
}
local t2 = {
	Name = false,
	NameColor = {
		1,
		1,
		1
	},
	Box = false,
	BoxColor = {
		1,
		0,
		0
	},
	Glow = false,
	GlowColor = {
		0.6,
		0,
		1
	},
	ShowTeam = false
}
local t3 = {
	Fly = false,
	FlySpeed = 50,
	WalkSpeed = 16,
	JumpPower = 50,
	Noclip = false
}
local t4 = {
	Aimbot = t1,
	Visuals = t2,
	Movement = t3,
	Gun = {
		NoRecoil = false,
		NoSpread = false,
		FastReload = false
	}
}
local u14 = t4
local function v15()
    if writefile then
        writefile("taldotralala.json", HttpService:JSONEncode(u14))
    end
end;
(function()
    if isfile and isfile("taldotralala.json") then
        local ok, result = pcall(function()
            local v207 = HttpService
            local t5 = { readfile("taldotralala.json") }

            return v207:JSONDecode(v1(t5))
        end)

        if ok and result then
            for k, v in pairs(result) do
                local v101 = k

                if u14[v101] then
                    for k2, v3 in pairs(v) do
                        u14[v101][k2] = v3
                    end
                end
            end
        end
    end
end)()
local uDim2 = UDim2.fromOffset(868, 600)
local Window = v2.Window
local RightShift = Enum.KeyCode.RightShift
local v19 = Window(v2, {
	Title = "Axioma Team",
	Subtitle = "By zb22",
	Size = uDim2,
	DragStyle = 1,
	DisabledWindowControls = {},
	ShowUserInfo = true,
	Keybind = RightShift,
	AcrylicBlur = true
})
local AcrylicBlurState = v19:GetAcrylicBlurState()
v19:GlobalSetting({
	Name = "UI Blur",
	Default = AcrylicBlurState,
	Callback = function(p1)
    v19:SetAcrylicBlurState(p1)
end
})
local NotificationsState = v19:GetNotificationsState()
v19:GlobalSetting({
	Name = "Notifications",
	Default = NotificationsState,
	Callback = function(p2)
    v19:SetNotificationsState(p2)
end
})
local t6 = {
	Main = v19:TabGroup()
}
local v23 = t6.Main:Tab({
	Name = "Aimbot",
	Image = "rbxassetid://10734950309"
})
local v24 = t6.Main:Tab({
	Name = "Visuals",
	Image = "rbxassetid://18821914323"
})
local v25 = t6.Main:Tab({
	Name = "Movement",
	Image = "rbxassetid://10734950309"
})
local v26 = t6.Main:Tab({
	Name = "Misc",
	Image = "rbxassetid://10734950309"
})
local v27 = t6.Main:Tab({
	Name = "Settings",
	Image = "rbxassetid://10734950309"
})
local t7 = {
	Aimbot = v23,
	Visuals = v24,
	Movement = v25,
	Misc = v26,
	Settings = v27
}
local v29 = t7.Aimbot:Section({
	Side = "Left"
})
local v30 = t7.Aimbot:Section({
	Side = "Right"
})
local AimbotEnabled = u14.Aimbot.Enabled
local AlwaysOn = u14.Aimbot.AlwaysOn
local FOV = u14.Aimbot.FOV
local WallCheck = u14.Aimbot.WallCheck
local TeamCheck = u14.Aimbot.TeamCheck
local Smoothness = u14.Aimbot.Smoothness
local MouseButton2 = Enum.UserInputType.MouseButton2
local v38 = Enum.KeyCode[u14.Aimbot.ToggleKey]
if not v38 then
    v38 = Enum.KeyCode.RightAlt
end
local t8 = {
	Enabled = AimbotEnabled,
	AlwaysOn = AlwaysOn,
	FOV = FOV,
	WallCheck = WallCheck,
	TeamCheck = TeamCheck,
	Smoothness = Smoothness,
	Key = MouseButton2,
	ToggleKey = v38
}
local drawing = Drawing.new("Circle")
drawing.Thickness = 1
drawing.NumSides = 60
drawing.Filled = false
drawing.Transparency = 1
drawing.Visible = u14.Aimbot.ShowFOV
drawing.Color = Color3.fromRGB(255, 255, 255)
drawing.Radius = u14.Aimbot.FOV
v29:Header({
	Name = "Aimbot Settings"
})
local Toggle = v29.Toggle
local t8Enabled = t8.Enabled
local v43 = Toggle(v29, {
	Name = "Aimbot Enabled",
	Default = t8Enabled,
	Callback = function(p3)
    t8.Enabled = p3
    u14.Aimbot.Enabled = p3
    v15()

    local v107 = v19

    if p3 then
        p3 = "Enabled"
    end

    local v108 = "Aimbot " .. (p3 or "Disabled")

    v107:Notify({
			Title = "Aimbot",
			Description = v108,
			Lifetime = 2
		})
end
}, "AimbotEnabled")
local AlwaysOn2 = t8.AlwaysOn
v29:Toggle({
	Name = "Always On",
	Default = AlwaysOn2,
	Callback = function(p4)
    t8.AlwaysOn = p4
    u14.Aimbot.AlwaysOn = p4
    v15()
end
}, "AimbotAlwaysOn")
local Toggle2 = v29.Toggle
local WallCheck2 = t8.WallCheck
Toggle2(v29, {
	Name = "Wall Check",
	Default = WallCheck2,
	Callback = function(p5)
    t8.WallCheck = p5
    u14.Aimbot.WallCheck = p5
    v15()
end
}, "AimbotWallCheck")
local TeamCheck2 = t8.TeamCheck
v29:Toggle({
	Name = "Team Check",
	Default = TeamCheck2,
	Callback = function(p6)
    t8.TeamCheck = p6
    u14.Aimbot.TeamCheck = p6
    v15()
end
}, "AimbotTeamCheck")
local ShowFOV = u14.Aimbot.ShowFOV
v29:Toggle({
	Name = "Show FOV Circle",
	Default = ShowFOV,
	Callback = function(p7)
    drawing.Visible = p7
    u14.Aimbot.ShowFOV = p7
    v15()
end
}, "AimbotShowFOV")
v30:Header({
	Name = "Aimbot Values"
})
local FOV2 = t8.FOV
v30:Slider({
	Name = "FOV Radius",
	Default = FOV2,
	Minimum = 10,
	Maximum = 500,
	Precision = 0,
	Callback = function(p8)
    t8.FOV = p8
    drawing.Radius = p8
    u14.Aimbot.FOV = p8
    v15()
end
}, "AimbotFOV")
local floor = math.floor
local Smoothness2 = t8.Smoothness
local Slider = v30.Slider
local v53 = floor(Smoothness2 * 100)
Slider(v30, {
	Name = "Smooth (low-fast longer-high)",
	Default = v53,
	Minimum = 1,
	Maximum = 100,
	Precision = 0,
	Callback = function(p9)
    t8.Smoothness = (101 - p9) / 100
    u14.Aimbot.Smoothness = t8.Smoothness
    v15()
end
}, "AimbotSmoothness")
v30:Keybind({
	Name = "Toggle Key",
	Blacklist = false,
	Callback = function(_)
end,
	onBinded = function(p11)
    t8.ToggleKey = p11
    u14.Aimbot.ToggleKey = p11.Name
    v15()

    local v117 = v19
    local p11Name = p11.Name
    local Notify = v117.Notify
    local v120 = "Toggle Key: " .. p11Name

    Notify(v117, {
			Title = "Aimbot",
			Description = v120,
			Lifetime = 3
		})
end
}, "AimbotToggleKey")
UserInputService.InputBegan:Connect(function(input, _)
    if input.KeyCode == t8.ToggleKey then
        local v123 = not t8.Enabled

        v43:Set(v123)

        local v124 = v19
        local v125 = not ("Aimbot " .. v123) and "OFF" or "ON"

        v124:Notify({
			Title = "Aimbot",
			Description = v125,
			Lifetime = 2
		})
    end
end)
RunService:BindToRenderStep("RivalsAimbot", Enum.RenderPriority.Camera.Value + 1, function()
    drawing.Position = UserInputService:GetMouseLocation()

    local v126 = false

    if t8.Enabled then
        if t8.AlwaysOn then
            v126 = true
        elseif UserInputService:IsMouseButtonPressed(t8.Key) then
            v126 = true
        end
    end

    if v126 then
        local v127
        local FOV3 = t8.FOV
        local MouseLocation = UserInputService:GetMouseLocation()
        for v132, v133 in pairs(Players:GetPlayers()) do

            local v134 = v133 ~= LocalPlayer

            if v134 then
                v134 = v133.Character

                if v134 then
                    v134 = v133.Character:FindFirstChild("Head")

                    if v134 then
                        v134 = v133.Character:FindFirstChild("Humanoid")

                        if v134 then
                            v134 = v133.Character.Humanoid.Health > 0
                        end
                    end
                end
            end

            if v134 then
                local v135 = v133.Team == LocalPlayer.Team

                if not t8.TeamCheck or not v135 then
                    local Head = v133.Character.Head
                    local v138, t9Result = CurrentCamera:WorldToViewportPoint(Head.Position)
                    if t9Result then
                        local Magnitude = (Vector2.new(v138.X, v138.Y) - MouseLocation).Magnitude

                        if Magnitude < FOV3 then
                            local v140 = true

                            if t8.WallCheck then
                                local raycastParams = RaycastParams.new()

                                raycastParams.FilterType = Enum.RaycastFilterType.Exclude
                                raycastParams.FilterDescendantsInstances = {
									LocalPlayer.Character,
									CurrentCamera
								}

                                local v142 = Head.Position - CurrentCamera.CFrame.Position
                                local raycastResult = workspace:Raycast(CurrentCamera.CFrame.Position, v142, raycastParams)

                                if raycastResult then
                                    raycastResult = not raycastResult.Instance:IsDescendantOf(v133.Character)
                                end

                                if raycastResult then
                                    v140 = false
                                end
                            end

                            if v140 then
                                FOV3 = Magnitude
                                v127 = v133
                            end
                        end
                    end
                end
            end
        end
        if v127 then
            local Head = v127.Character.Head
            local CurrentCameraCFrame = CurrentCamera.CFrame
            local cFrame = CFrame.lookAt(CurrentCameraCFrame.Position, Head.Position)

            if t8.Smoothness >= 1 then
                CurrentCamera.CFrame = cFrame

                return
            end

            CurrentCamera.CFrame = CurrentCameraCFrame:Lerp(cFrame, t8.Smoothness)
        end
    end
end)
local v54 = t7.Visuals:Section({
	Side = "Left"
})
local v55 = t7.Visuals:Section({
	Side = "Right"
})
local VisualsName = u14.Visuals.Name
local color3 = Color3.new(unpack(u14.Visuals.NameColor))
local Box = u14.Visuals.Box
local color3_2 = Color3.new(unpack(u14.Visuals.BoxColor))
local Glow = u14.Visuals.Glow
local color3_3 = Color3.new(unpack(u14.Visuals.GlowColor))
local ShowTeam = u14.Visuals.ShowTeam
local t10 = {
	Name = VisualsName,
	NameColor = color3,
	Box = Box,
	BoxColor = color3_2,
	Glow = Glow,
	GlowColor = color3_3,
	ShowTeam = ShowTeam
}
local Folder = Instance.new("Folder", game.CoreGui)
Folder.Name = "AxiomaEsp"
v54:Header({
	Name = "ESP Toggles"
})
local Toggle3 = v54.Toggle
local ShowTeam2 = t10.ShowTeam
Toggle3(v54, {
	Name = "Show Teammates",
	Default = ShowTeam2,
	Callback = function(p13)
    t10.ShowTeam = p13
    u14.Visuals.ShowTeam = p13
    v15()
end
}, "ESPShowTeam")
local t10Name = t10.Name
v54:Toggle({
	Name = "Name ESP",
	Default = t10Name,
	Callback = function(p14)
    t10.Name = p14
    u14.Visuals.Name = p14
    v15()
end
}, "ESPName")
local Box2 = t10.Box
v54:Toggle({
	Name = "Box ESP",
	Default = Box2,
	Callback = function(p15)
    t10.Box = p15
    u14.Visuals.Box = p15
    v15()
end
}, "ESPBox")
local Glow2 = t10.Glow
v54:Toggle({
	Name = "Chams (Glow)",
	Default = Glow2,
	Callback = function(p16)
    t10.Glow = p16
    u14.Visuals.Glow = p16
    v15()
end
}, "ESPGlow")
v55:Header({
	Name = "ESP Colors"
})
local NameColor = t10.NameColor
v55:Colorpicker({
	Name = "Name Color",
	Default = NameColor,
	Callback = function(p17)
    t10.NameColor = p17
    u14.Visuals.NameColor = {
			p17.R,
			p17.G,
			p17.B
		}
    v15()
end
}, "ESPNameColor")
local BoxColor = t10.BoxColor
v55:Colorpicker({
	Name = "Box Color",
	Default = BoxColor,
	Callback = function(p18)
    t10.BoxColor = p18
    u14.Visuals.BoxColor = {
			p18.R,
			p18.G,
			p18.B
		}
    v15()
end
}, "ESPBoxColor")
local GlowColor = t10.GlowColor
v55:Colorpicker({
	Name = "Glow Color",
	Default = GlowColor,
	Callback = function(p19)
    t10.GlowColor = p19
    u14.Visuals.GlowColor = {
			p19.R,
			p19.G,
			p19.B
		}
    v15()
end
}, "ESPGlowColor")
local t11 = {
	ESP = RunService.RenderStepped:Connect(function()
    for _, player in pairs(Players:GetPlayers()) do
        local v156 = player ~= LocalPlayer

        if v156 then
            v156 = player.Character

            if v156 then
                v156 = player.Character:FindFirstChild("Head")

                if v156 then
                    v156 = player.Character:FindFirstChild("HumanoidRootPart")
                end
            end
        end

        if v156 then
            local v157 = player.Team == LocalPlayer.Team

            if not t10.ShowTeam and v157 then
                local TraeGlow = player.Character:FindFirstChild("TraeGlow")

                if TraeGlow then
                    TraeGlow:Destroy()
                end

                local playerName = Folder:FindFirstChild(player.Name)

                if playerName then
                    playerName:Destroy()
                end
            else
                local _ = player.Character.Head
                local HumanoidRootPart = player.Character.HumanoidRootPart
                local Character = player.Character
                local TraeGlow = Character:FindFirstChild("TraeGlow")

                if t10.Glow then
                    if not TraeGlow then
                        TraeGlow = Instance.new("Highlight", Character)
                        TraeGlow.Name = "TraeGlow"
                        TraeGlow.FillTransparency = 0.5
                        TraeGlow.OutlineTransparency = 0
                        TraeGlow.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    end

                    TraeGlow.FillColor = t10.GlowColor
                    TraeGlow.OutlineColor = t10.GlowColor
                elseif TraeGlow then
                    TraeGlow:Destroy()
                end

                local playerName = Folder:FindFirstChild(player.Name)
                local t10Name2 = t10.Name

                if not t10Name2 then
                    t10Name2 = t10.Box
                end

                if t10Name2 and not playerName then
                    playerName = Instance.new("BillboardGui")
                    playerName.Name = player.Name
                    playerName.Size = UDim2.new(0, 200, 0, 50)
                    playerName.AlwaysOnTop = true
                    playerName.Parent = Folder
                end

                if playerName then
                    playerName.Adornee = HumanoidRootPart

                    local v166 = not t10.Name

                    if v166 then
                        v166 = not t10.Box
                    end

                    if v166 then
                        playerName:Destroy()
                    else
                        local NameLabel = playerName:FindFirstChild("NameLabel")

                        if t10.Name then
                            if not NameLabel then
                                NameLabel = Instance.new("TextLabel", playerName)
                                NameLabel.Name = "NameLabel"
                                NameLabel.Size = UDim2.new(1, 0, 1, 0)
                                NameLabel.Position = UDim2.new(0, 0, -1, 0)
                                NameLabel.BackgroundTransparency = 1
                                NameLabel.TextStrokeTransparency = 0
                                NameLabel.TextSize = 14
                                NameLabel.Font = Enum.Font.GothamBold
                            end

                            NameLabel.Visible = true
                            NameLabel.Text = player.Name
                            NameLabel.TextColor3 = t10.NameColor

                            if not t10.Box then
                                playerName.Size = UDim2.new(0, 200, 0, 50)
                                playerName.StudsOffset = Vector3.new(0, 3, 0)
                            end
                        elseif NameLabel then
                            NameLabel.Visible = false
                        end

                        local BoxFrame = playerName:FindFirstChild("BoxFrame")

                        if t10.Box then
                            if not BoxFrame then
                                BoxFrame = Instance.new("Frame", playerName)
                                BoxFrame.Name = "BoxFrame"
                                BoxFrame.Size = UDim2.new(1, 0, 1, 0)
                                BoxFrame.BackgroundTransparency = 1

                                local UIStroke = Instance.new("UIStroke", BoxFrame)

                                UIStroke.Thickness = 1.5
                                UIStroke.Transparency = 0
                            end

                            BoxFrame.Visible = true
                            BoxFrame:FindFirstChild("UIStroke").Color = t10.BoxColor
                            playerName.Size = UDim2.new(4, 0, 5.5, 0)
                            playerName.StudsOffset = Vector3.new(0, 0, 0)

                            if NameLabel then
                                NameLabel.Position = UDim2.new(0, 0, -0.8, 0)
                            end
                        elseif BoxFrame then
                            BoxFrame.Visible = false
                        end
                    end
                end
            end
        else
            local playerName = Folder:FindFirstChild(player.Name)

            if playerName then
                playerName:Destroy()
            end
        end
    end
end)
}
local v74 = t7.Movement:Section({
	Side = "Left"
})
local v75 = t7.Movement:Section({
	Side = "Right"
})
local Fly = u14.Movement.Fly
local FlySpeed = u14.Movement.FlySpeed
local WalkSpeed = u14.Movement.WalkSpeed
local JumpPower = u14.Movement.JumpPower
local Noclip = u14.Movement.Noclip
local t12 = {
	Fly = Fly,
	FlySpeed = FlySpeed,
	WalkSpeed = WalkSpeed,
	JumpPower = JumpPower,
	Noclip = Noclip
}
v74:Header({
	Name = "Movement Options"
})
local Fly2 = t12.Fly
v74:Toggle({
	Name = "Fly",
	Default = Fly2,
	Callback = function(p20)
    t12.Fly = p20
    u14.Movement.Fly = p20
    v15()

    if not p20 then
        local Character = LocalPlayer.Character

        if Character then
            Character = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        end

        if Character then
            Character = Character:FindFirstChild("TraeFly")
        end

        if Character then
            Character:Destroy()
        end
    end

    local v173 = v19
    local v174 = "Fly " .. (not p20 and "Disabled" or "Enabled")

    v173:Notify({
			Title = "Movement",
			Description = v174,
			Lifetime = 2
		})
end
}, "MoveFly")
local Noclip2 = t12.Noclip
v74:Toggle({
	Name = "Noclip",
	Default = Noclip2,
	Callback = function(p21)
    t12.Noclip = p21
    u14.Movement.Noclip = p21
    v15()

    local v176 = v19

    if p21 then
        p21 = "Enabled"
    end

    local v177 = "Noclip " .. p21 or "Disabled"

    v176:Notify({
			Title = "Movement",
			Description = v177,
			Lifetime = 2
		})
end
}, "MoveNoclip")
v75:Header({
	Name = "Speed & Power"
})
local FlySpeed2 = t12.FlySpeed
v75:Slider({
	Name = "Fly Speed",
	Default = FlySpeed2,
	Minimum = 10,
	Maximum = 200,
	Precision = 0,
	Callback = function(p22)
    t12.FlySpeed = p22
    u14.Movement.FlySpeed = p22
    v15()
end
}, "MoveFlySpeed")
local WalkSpeed2 = t12.WalkSpeed
v75:Slider({
	Name = "Walk Speed",
	Default = WalkSpeed2,
	Minimum = 16,
	Maximum = 200,
	Precision = 0,
	Callback = function(p23)
    t12.WalkSpeed = p23
    u14.Movement.WalkSpeed = p23
    v15()
end
}, "MoveWalkSpeed")
local JumpPower2 = t12.JumpPower
v75:Slider({
	Name = "Jump Power",
	Default = JumpPower2,
	Minimum = 50,
	Maximum = 300,
	Precision = 0,
	Callback = function(p24)
    t12.JumpPower = p24
    u14.Movement.JumpPower = p24
    v15()
end
}, "MoveJumpPower")
t11.Movement = RunService.RenderStepped:Connect(function()
    local Character = LocalPlayer.Character

    if Character then
        Character = LocalPlayer.Character:FindFirstChild("Humanoid")
    end

    if Character then
        local Humanoid = LocalPlayer.Character.Humanoid
        local HumanoidRootPart = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

        if t12.WalkSpeed > 16 then
            Humanoid.WalkSpeed = t12.WalkSpeed
        end

        if t12.JumpPower > 50 then
            Humanoid.UseJumpPower = true
            Humanoid.JumpPower = t12.JumpPower
        end

        if t12.Fly and HumanoidRootPart then
            local TraeFly = HumanoidRootPart:FindFirstChild("TraeFly")

            if not TraeFly then
                TraeFly = Instance.new("BodyVelocity", HumanoidRootPart)
            end

            TraeFly.Name = "TraeFly"
            TraeFly.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
            TraeFly.Velocity = Vector3.new(0, 0, 0)

            local CurrentCameraCFrame = CurrentCamera.CFrame
            local vector3 = Vector3.new(0, 0, 0)

            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                vector3 += CurrentCameraCFrame.LookVector
            end

            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                vector3 -= CurrentCameraCFrame.LookVector
            end

            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                vector3 -= CurrentCameraCFrame.RightVector
            end

            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                vector3 += CurrentCameraCFrame.RightVector
            end

            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                vector3 += Vector3.new(0, 1, 0)
            end

            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                vector3 -= Vector3.new(0, 1, 0)
            end

            HumanoidRootPart.CFrame = HumanoidRootPart.CFrame + vector3 * (t12.FlySpeed / 50)

            return
        end

        if HumanoidRootPart then
            HumanoidRootPart = HumanoidRootPart:FindFirstChild("TraeFly")
        end

        if HumanoidRootPart then
            HumanoidRootPart:Destroy()
        end
    end
end)
t11.Noclip = RunService.Stepped:Connect(function()
    local Noclip3 = t12.Noclip

    if Noclip3 then
        Noclip3 = LocalPlayer.Character
    end

    if Noclip3 then
        for _, descendant in pairs(LocalPlayer.Character:GetDescendants()) do
            if descendant:IsA("BasePart") and descendant.CanCollide then
                descendant.CanCollide = false
            end
        end
    end
end)
local v87 = t7.Misc:Section({
	Side = "Left"
})
local v88 = t7.Misc:Section({
	Side = "Right"
})
local NoRecoil = u14.Gun.NoRecoil
local NoSpread = u14.Gun.NoSpread
local FastReload = u14.Gun.FastReload
local t13 = {
	NoRecoil = NoRecoil,
	NoSpread = NoSpread,
	FastReload = FastReload
}
v87:Header({
	Name = "Gun Modifications"
})
local NoRecoil2 = t13.NoRecoil
v87:Toggle({
	Name = "No Recoil",
	Default = NoRecoil2,
	Callback = function(p25)
    t13.NoRecoil = p25
    u14.Gun.NoRecoil = p25
    v15()

    local v191 = v19

    if p25 then
        p25 = "Enabled"
    end

    local v192 = "No Recoil " .. (p25 or "Disabled")

    v191:Notify({
			Title = "Misc",
			Description = v192,
			Lifetime = 2
		})
end
}, "GunNoRecoil")
local Toggle4 = v87.Toggle
local NoSpread2 = t13.NoSpread
Toggle4(v87, {
	Name = "No Spread",
	Default = NoSpread2,
	Callback = function(p26)
    t13.NoSpread = p26
    u14.Gun.NoSpread = p26
    v15()

    local v194 = v19

    if p26 then
        p26 = "Enabled"
    end

    local v195 = "No Spread " .. p26 or "Disabled"

    v194:Notify({
			Title = "Misc",
			Description = v195,
			Lifetime = 2
		})
end
}, "GunNoSpread")
local FastReload2 = t13.FastReload
v87:Toggle({
	Name = "Fast Reload",
	Default = FastReload2,
	Callback = function(p27)
    t13.FastReload = p27
    u14.Gun.FastReload = p27
    v15()

    local v197 = v19

    if p27 then
        p27 = "Enabled"
    end

    local v198 = "Fast Reload " .. (p27 or "Disabled")

    v197:Notify({
			Title = "Misc",
			Description = v198,
			Lifetime = 2
		})
end
}, "GunFastReload")
v88:Header({
	Name = "Info"
})
v88:Paragraph({
	Header = "Gun Mods",
	Body = "Use It"
})
v88:Divider()
v88:Button({
	Name = "Unload Script",
	Callback = function()
    local v199 = v19
    local Dialog = v199.Dialog
    local t14 = {
			Name = "Yes",
			Callback = function()
        for _, v in pairs(t11) do
            if v then
                v:Disconnect()
            end
        end

        pcall(function()
            RunService:UnbindFromRenderStep("RivalsAimbot")
        end)

        if Folder then
            Folder:Destroy()
        end

        if drawing then
            drawing:Remove()
        end

        local Character = LocalPlayer.Character

        if Character then
            Character = LocalPlayer.Character:FindFirstChild("Humanoid")
        end

        if Character then
            LocalPlayer.Character.Humanoid.WalkSpeed = 16
            LocalPlayer.Character.Humanoid.JumpPower = 50
        end

        print("Script Unloaded!")
    end
		}
    local t15 = {
			Name = "Not"
		}

    Dialog(v199, {
			Title = "Hi Man",
			Description = "Are you sure?",
			Buttons = {
				t14,
				t15
			}
		})
end
})
task.spawn(function()
    while true do
        task.wait(1)

        local NoRecoil3 = t13.NoRecoil

        if not NoRecoil3 then
            NoRecoil3 = t13.NoSpread

            if not NoRecoil3 then
                NoRecoil3 = t13.FastReload
            end
        end

        if NoRecoil3 then
            pcall(function()
                for _, v in pairs(getgc(true)) do
                    if type(v) == "table" then
                        if t13.NoRecoil then
                            if rawget(v, "Recoil") then
                                v.Recoil = 0
                            end

                            if rawget(v, "recoil") then
                                v.recoil = 0
                            end
                        end

                        if t13.NoSpread then
                            if rawget(v, "Spread") then
                                v.Spread = 0
                            end

                            if rawget(v, "spread") then
                                v.spread = 0
                            end
                        end

                        if t13.FastReload then
                            if rawget(v, "ReloadTime") then
                                v.ReloadTime = 0.05
                            end

                            if rawget(v, "reloadTime") then
                                v.reloadTime = 0.05
                            end

                            if rawget(v, "ReloadSpeed") then
                                v.ReloadSpeed = 100
                            end
                        end
                    end
                end
            end)
        end
    end
end)
t7.Settings:InsertConfigSection("Left")
v19.onUnloaded(function()
    for _, v in pairs(t11) do
        if v then
            v:Disconnect()
        end
    end

    pcall(function()
        RunService:UnbindFromRenderStep("RivalsAimbot")
    end)

    if Folder then
        Folder:Destroy()
    end

    if drawing then
        drawing:Remove()
    end

    local Character = LocalPlayer.Character

    if Character then
        Character = LocalPlayer.Character:FindFirstChild("Humanoid")
    end

    if Character then
        LocalPlayer.Character.Humanoid.WalkSpeed = 16
        LocalPlayer.Character.Humanoid.JumpPower = 50
    end

    print("Script Unloaded!")
end)
t7.Aimbot:Select()
v2:SetFolder("Axioma Team")
v2:LoadAutoLoadConfig()
v19:Notify({
	Title = "Axioma Loaded",
	Description = "Get Funny Man!! With love,zb22",
	Lifetime = 5
})
