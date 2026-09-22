-- This file was generated at discord.gg/syncrypt

local t1 = {
	value1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/ZyyScriptz/ScawsLoader/main/kovari_source"))()
}
t1.value1:CreateKeyUI({
	Title = "ARSENAL HUB",
	Subtitle = "Kovari - Arsenal",
	ApiKey = "0015f93e-20bf-48fb-a444-33b056019ebe",
	Service = "key system",
	Provider = "key system",
	Discord = "discord.gg/QcvddpVeTM",
	OnSuccess = function()
    local t2 = {}
    task.wait(0.8)
    local v3 = t1.value1:Init({
			ToggleKey = Enum.KeyCode.RightControl,
			Discord = "discord.gg/QcvddpVeTM"
		})
    task.wait(0.5)
    t2.value1 = game:GetService("Players")
    t2.value2 = game:GetService("RunService")
    t2.value3 = game:GetService("UserInputService")
    t2.value4 = game:GetService("Workspace")
    t2.value5 = t2.value4.CurrentCamera
    t2.value6 = game:GetService("VirtualInputManager")
    t2.value7 = game:GetService("Lighting")
    t2.value8 = t2.value1.LocalPlayer
    t2.value8:GetMouse()
    local t3 = {
			Enabled = false,
			TeamCheck = true,
			FOV = 120,
			ShowFOV = true,
			Smoothness = 10,
			TargetPart = "Head",
			Mode = "Camera",
			WallCheck = true,
			SilentAim = false,
			AutoShoot = false,
			PredictionEnabled = false,
			PredictionAmount = 0.125,
			ShakeReduction = true,
			ShakeAmount = 0.5,
			StickToTarget = false,
			MaxLockDistance = 1000,
			IgnoreForcefield = true,
			AutoSwitchTarget = true,
			SmoothingCurve = "Linear",
			FOVDynamicSize = false,
			MinFOV = 50,
			MaxFOV = 300,
			HitboxExpansion = false,
			HitboxSize = 2,
			AutoFireDelay = 0.05,
			BurstMode = false,
			BurstCount = 3,
			BurstDelay = 0.1
		}
    local color3 = Color3.fromRGB(255, 0, 0)
    local color3_2 = Color3.fromRGB(255, 255, 255)
    local color3_3 = Color3.fromRGB(255, 255, 255)
    local color3_4 = Color3.fromRGB(255, 255, 255)
    local t4 = {
			Enabled = false,
			Boxes = true,
			Names = true,
			Tracers = true,
			Health = true,
			Skeleton = true,
			TeamCheck = true,
			MaxDistance = 1000,
			BoxColor = color3,
			NameColor = color3_2,
			TracerColor = color3_3,
			SkeletonColor = color3_4
		}
    t2.value9 = {
			Aimbot = t3,
			ESP = t4,
			Performance = {
				FPSBoost = false,
				RemoveTextures = false,
				DisableShadows = false,
				LowQuality = false
			}
		}
    local v10 = v3:CreateTab("Aimbot", false)
    local v11 = v3:CreateTab("Advanced", false)
    local v12 = v3:CreateTab("Visuals", false)
    local v13 = v3:CreateTab("Performance", false)
    task.wait(0.2)
    t2.value10 = Drawing.new("Circle")
    t2.value10.Radius = t2.value9.Aimbot.FOV
    t2.value10.Color = Color3.fromRGB(255, 255, 255)
    t2.value10.Thickness = 2
    t2.value10.NumSides = 32
    t2.value10.Filled = false
    t2.value10.Transparency = 1
    t2.value10.Visible = false
    t2.value10.ZIndex = 1000
    t2.value11 = nil
    t2.value12 = nil
    t2.value13 = 0
    t2.value14 = nil
    t2.value15 = 0
    t2.value16 = {
			Linear = function(p1)
        return p1
    end,
			EaseOut = function(p2)
        return 1 - (1 - p2) * (1 - p2)
    end,
			EaseInOut = function(p3)
        return p3 < 0.5 and 2 * p3 * p3 or 1 - math.pow(-2 * p3 + 2, 2) / 2
    end,
			Exponential = function(p4)
        return p4 * p4
    end
		}
    function t2.value17(p5)
        if p5.Character then
            local Team = p5.Character:FindFirstChild("Team")
            local v49 = Team

            if Team then
                v49 = Team:IsA("StringValue")
            end

            if v49 then
                return Team.Value
            end
        end

        return p5.Team
    end
    local function v14(p6)
        if not t2.value9.Aimbot.WallCheck then
            return true
        end

        local Character = t2.value8.Character

        if not Character then
            return false
        end

        local Head = Character:FindFirstChild("Head")

        if not Head then
            return false
        end

        local raycastParams = RaycastParams.new()

        raycastParams.FilterDescendantsInstances = {
				Character,
				p6.Parent
			}
        raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
        raycastParams.IgnoreWater = true

        local raycastResult = t2.value4:Raycast(Head.Position, p6.Position - Head.Position, raycastParams)
        local v55 = raycastResult == nil

        if not v55 then
            v55 = raycastResult.Instance:IsDescendantOf(p6.Parent)
        end

        return v55
    end
    t2.value18 = nil
    function t2.value19(p7)
        if p7 == t2.value8 then
            return false
        end

        if not p7.Character then
            return false
        end

        local Humanoid = p7.Character:FindFirstChild("Humanoid")

        if not Humanoid or Humanoid.Health <= 0 then
            return false
        end

        if t2.value9.Aimbot.IgnoreForcefield and p7.Character:FindFirstChildOfClass("ForceField") then
            return false
        end

        if t2.value9.Aimbot.TeamCheck then
            local v58 = t2.value17(t2.value8)
            local v59 = t2.value17(p7)

            if v58 and v59 then
                local v60 = type(v58) == "string"

                if v60 then
                    v60 = type(v59) == "string"
                end

                if v60 then
                    return v58 ~= v59
                end

                if v58 == v59 then
                    return false
                end
            end
        end

        return true
    end
    function t2.value20(p8)
        local t2value9AimbotTargetPart = p8:FindFirstChild(t2.value9.Aimbot.TargetPart)

        if not t2value9AimbotTargetPart then
            t2value9AimbotTargetPart = p8:FindFirstChild("Head")

            if not t2value9AimbotTargetPart then
                t2value9AimbotTargetPart = p8:FindFirstChild("HumanoidRootPart")
            end
        end

        return t2value9AimbotTargetPart
    end
    function t2.value21(p9)
        local v64, v65 = t2.value5:WorldToViewportPoint(p9)

        if v65 then
            v65 = v64.Z > 0
        end

        return v65, Vector2.new(v64.X, v64.Y)
    end
    function t2.value22(p10, p11)
        return (p10.Position - p11.Position).Magnitude
    end
    function t2.value18(p12)
        if not t2.value9.Aimbot.PredictionEnabled then
            return p12.Position
        end

        local AssemblyLinearVelocity = p12.AssemblyLinearVelocity

        return p12.Position + AssemblyLinearVelocity * t2.value9.Aimbot.PredictionAmount
    end
    local function v15()
        local v73
        local FOV = t2.value9.Aimbot.FOV
        local Character = t2.value8.Character
        if t2.value9.Aimbot.StickToTarget and t2.value11 and t2.value19(t2.value11) then
            local Character2 = t2.value11.Character

            if Character2 then
                local v77 = t2.value20(Character2)

                if v77 then
                    local t5, v79 = t2.value21(v77.Position)
                    if t5 and (v79 - t2.value3:GetMouseLocation()).Magnitude < t2.value9.Aimbot.FOV * 1.5 and v14(v77) then
                        return t2.value11
                    end
                end
            end
        end
        for _, player in pairs(t2.value1:GetPlayers()) do
            if t2.value19(player) then
                local Character3 = player.Character

                if Character3 then
                    local v83 = t2.value20(Character3)

                    if v83 then
                        local v84 = Character

                        if Character then
                            v84 = Character:FindFirstChild("HumanoidRootPart")
                        end

                        if not v84 or not (t2.value22(Character.HumanoidRootPart, v83) > t2.value9.Aimbot.MaxLockDistance) then
                            local v85, v86 = t2.value21(v83.Position)

                            if v85 then
                                local Magnitude = (v86 - t2.value3:GetMouseLocation()).Magnitude

                                if Magnitude < FOV and v14(v83) then
                                    FOV = Magnitude
                                    v73 = player
                                end
                            end
                        end
                    end
                end
            end
        end

        return v73
    end
    local function v16(p13)
        if not p13 then
            return
        end

        local v89 = t2.value18(p13)

        if t2.value9.Aimbot.HitboxExpansion and t2.value9.Aimbot.HitboxExpansion then
            pcall(function()
                p13.Size = Vector3.new(t2.value9.Aimbot.HitboxSize, t2.value9.Aimbot.HitboxSize, t2.value9.Aimbot.HitboxSize)
                p13.Transparency = 1
                p13.CanCollide = false
            end)
        end

        if t2.value9.Aimbot.Mode == "Camera" then
            local value5CFrame = t2.value5.CFrame
            local cFrame = CFrame.new(value5CFrame.Position, v89)

            if t2.value9.Aimbot.Smoothness > 0 then
                local v92 = 1 / t2.value9.Aimbot.Smoothness
                local v93 = t2.value16[t2.value9.Aimbot.SmoothingCurve]

                if not v93 then
                    v93 = t2.value16.Linear
                end

                local v94 = v93(v92)

                t2.value5.CFrame = value5CFrame:Lerp(cFrame, v94)

                return
            end

            t2.value5.CFrame = cFrame
        end
    end
    function t2.value23()
        if t2.value14 then
            t2.value14:Disconnect()
        end
    end
    pcall(function()
        local u69
        u69 = hookmetamethod(game, "__namecall", function(p14, ...)
            local t6 = { ... }
            local v192 = getnamecallmethod()
            local AimbotEnabled = t2.value9.Aimbot.Enabled

            if AimbotEnabled then
                AimbotEnabled = t2.value9.Aimbot.SilentAim and t2.value12
            end

            if AimbotEnabled and v192 == "FireServer" and t2.value12.Character then
                local v194 = t2.value20(t2.value12.Character)

                if v194 then
                    local v195 = t2.value18(v194)
                    local v196 = t6[2]

                    if v196 then
                        v196 = typeof(t6[2]) == "Vector3"
                    end

                    if v196 then
                        t6[2] = v195
                    end
                end
            end

            return u69(p14, unpack(t6))
        end)
    end)
    t2.value24 = nil
    t2.value25 = nil
    if not t2.value24 then
        t2.value24 = t2.value2.Heartbeat:Connect(function()
            if not t2.value9.Aimbot.Enabled then
                return
            end

            local v95 = v15()

            if t2.value9.Aimbot.SilentAim then
                if v95 then
                    t2.value11 = v95

                    return
                end

                t2.value11 = nil

                return
            end

            if v95 then
                t2.value11 = v95

                local v96 = t2.value20(t2.value11.Character)

                if not (v96 and t2.value19(t2.value11)) then
                    t2.value11 = nil
                    t2.value23()

                    return
                end

                if not t2.value21(v96.Position) then
                    if t2.value9.Aimbot.AutoSwitchTarget then
                        t2.value11 = nil
                    end

                    t2.value23()

                    return
                end

                v16(v96)

                if t2.value9.Aimbot.AutoShoot then
                    if t2.value14 then
                        return
                    end

                    t2.value14 = t2.value2.Heartbeat:Connect(function()
                        if not t2.value9.Aimbot.AutoShoot then
                            if t2.value14 then
                                t2.value14:Disconnect()
                                t2.value14 = nil
                            end

                            return
                        end

                        if not t2.value11 then
                            t2.value15 = 0

                            return
                        end

                        local timestamp = tick()

                        if timestamp - t2.value13 < t2.value9.Aimbot.AutoFireDelay then
                            return
                        end

                        local Character = t2.value8.Character

                        if not Character then
                            return
                        end

                        if not Character:FindFirstChildWhichIsA("Tool") then
                            return
                        end

                        if t2.value9.Aimbot.BurstMode and t2.value15 >= t2.value9.Aimbot.BurstCount then
                            if timestamp - t2.value13 < t2.value9.Aimbot.BurstDelay then
                                return
                            end

                            t2.value15 = 0
                        end

                        pcall(function()
                            local MouseLocation = t2.value3:GetMouseLocation()

                            t2.value6:SendMouseButtonEvent(MouseLocation.X, MouseLocation.Y, 0, true, game, 0)
                            task.wait(0.03)
                            t2.value6:SendMouseButtonEvent(MouseLocation.X, MouseLocation.Y, 0, false, game, 0)

                            local _ = t2.value15 + 1
                        end)
                    end)

                    return
                end
            else
                t2.value11 = nil
                t2.value23()
            end
        end)
    end
    if not t2.value25 then
        t2.value25 = t2.value2.RenderStepped:Connect(function()
            t2.value10.Position = t2.value3:GetMouseLocation()
            t2.value10.Radius = t2.value9.Aimbot.FOV

            local value10 = t2.value10
            local AimbotEnabled = t2.value9.Aimbot.Enabled

            if AimbotEnabled then
                AimbotEnabled = t2.value9.Aimbot.ShowFOV
            end

            value10.Visible = AimbotEnabled

            local value10_2 = t2.value10
            local value11 = t2.value11

            if value11 then
                value11 = Color3.fromRGB(255, 0, 0)
            end

            if not value11 then
                value11 = Color3.fromRGB(255, 255, 255)
            end

            value10_2.Color = value11
        end)
    end
    t2.value3.InputBegan:Connect(function(input, gameProcessed)
        if gameProcessed then
            return
        end

        if input.UserInputType == Enum.UserInputType.MouseButton2 then
            local AimbotEnabled = t2.value9.Aimbot.Enabled

            if AimbotEnabled then
                AimbotEnabled = t2.value9.Aimbot.SilentAim
            end

            if not AimbotEnabled then
            end
        end
    end)
    t2.value26 = {}
    t2.value27 = 0
    t2.value28 = 3
    t2.value29 = {
			{
				"Head",
				"UpperTorso"
			},
			{
				"UpperTorso",
				"LowerTorso"
			},
			{
				"UpperTorso",
				"LeftUpperArm"
			},
			{
				"LeftUpperArm",
				"LeftLowerArm"
			},
			{
				"UpperTorso",
				"RightUpperArm"
			},
			{
				"RightUpperArm",
				"RightLowerArm"
			},
			{
				"LowerTorso",
				"LeftUpperLeg"
			},
			{
				"LeftUpperLeg",
				"LeftLowerLeg"
			},
			{
				"LowerTorso",
				"RightUpperLeg"
			},
			{
				"RightUpperLeg",
				"RightLowerLeg"
			}
		}
    function t2.value30(p15)
        if p15 == t2.value8 then
            return
        end

        if t2.value26[p15] then
            return
        end

        local drawing = Drawing.new("Square")
        local drawing2 = Drawing.new("Square")
        local drawing3 = Drawing.new("Text")
        local drawing4 = Drawing.new("Square")
        local drawing5 = Drawing.new("Square")
        local drawing6 = Drawing.new("Square")
        local drawing7 = Drawing.new("Line")
        local t7 = {
				Box = drawing,
				BoxOutline = drawing2,
				Name = drawing3,
				HealthBar = drawing4,
				HealthBarOutline = drawing5,
				HealthFill = drawing6,
				Tracer = drawing7,
				Skeleton = {}
			}

        for _ = 1, #t2.value29 do
            local drawing8 = Drawing.new("Line")

            drawing8.Thickness = 1
            drawing8.Color = t2.value9.ESP.SkeletonColor
            drawing8.Visible = false
            drawing8.ZIndex = 2
            table.insert(t7.Skeleton, drawing8)
        end

        t7.Box.Thickness = 1
        t7.Box.Filled = false
        t7.Box.Color = t2.value9.ESP.BoxColor
        t7.Box.Visible = false
        t7.Box.ZIndex = 2
        t7.BoxOutline.Thickness = 3
        t7.BoxOutline.Filled = false
        t7.BoxOutline.Color = Color3.fromRGB(0, 0, 0)
        t7.BoxOutline.Visible = false
        t7.BoxOutline.ZIndex = 1
        t7.Name.Size = 13
        t7.Name.Center = true
        t7.Name.Outline = true
        t7.Name.Color = t2.value9.ESP.NameColor
        t7.Name.Font = 2
        t7.Name.Visible = false
        t7.Name.ZIndex = 2
        t7.HealthBarOutline.Thickness = 1
        t7.HealthBarOutline.Filled = true
        t7.HealthBarOutline.Color = Color3.fromRGB(0, 0, 0)
        t7.HealthBarOutline.Visible = false
        t7.HealthBarOutline.ZIndex = 1
        t7.HealthBar.Thickness = 1
        t7.HealthBar.Filled = true
        t7.HealthBar.Color = Color3.fromRGB(40, 40, 40)
        t7.HealthBar.Visible = false
        t7.HealthBar.ZIndex = 2
        t7.HealthFill.Thickness = 1
        t7.HealthFill.Filled = true
        t7.HealthFill.Color = Color3.fromRGB(0, 255, 0)
        t7.HealthFill.Visible = false
        t7.HealthFill.ZIndex = 3
        t7.Tracer.Thickness = 1
        t7.Tracer.Color = t2.value9.ESP.TracerColor
        t7.Tracer.Visible = false
        t7.Tracer.ZIndex = 2
        t2.value26[p15] = t7
    end
    function t2.value31(p16)
        local v116 = t2.value26[p16]

        if v116 then
            pcall(function()
                v116.Box:Remove()
                v116.BoxOutline:Remove()
                v116.Name:Remove()
                v116.HealthBar:Remove()
                v116.HealthBarOutline:Remove()
                v116.HealthFill:Remove()
                v116.Tracer:Remove()

                for _, v in pairs(v116.Skeleton) do
                    v:Remove()
                end
            end)
            t2.value26[p16] = nil
        end
    end
    t2.value32 = nil;
    (function()
        if t2.value32 then
            return
        end

        t2.value32 = t2.value2.Heartbeat:Connect(function()
            t2.value27 = t2.value27 + 1

            if t2.value27 < t2.value28 then
                return
            end

            if not t2.value9.ESP.Enabled then
                for _, v in pairs(t2.value26) do
                    v.Box.Visible = false
                    v.BoxOutline.Visible = false
                    v.Name.Visible = false
                    v.HealthBar.Visible = false
                    v.HealthBarOutline.Visible = false
                    v.HealthFill.Visible = false
                    v.Tracer.Visible = false

                    for _, v2 in pairs(v.Skeleton) do
                        v2.Visible = false
                    end
                end

                return
            end

            for k, v in pairs(t2.value26) do
                local v215 = v

                pcall(function()
                    local Character = k.Character
                    local v223 = Character

                    if Character then
                        v223 = Character:FindFirstChild("Humanoid")
                    end

                    local v224 = Character

                    if Character then
                        v224 = Character:FindFirstChild("HumanoidRootPart")
                    end

                    local v225 = Character

                    if Character then
                        v225 = Character:FindFirstChild("Head")
                    end

                    local v226 = not Character

                    if not v226 then
                        v226 = not v223

                        if not v226 then
                            v226 = not v224

                            if not v226 then
                                v226 = not v225 or v223.Health <= 0
                            end
                        end
                    end

                    if v226 then
                        local v227 = v215

                        v227.Box.Visible = false
                        v227.BoxOutline.Visible = false
                        v227.Name.Visible = false
                        v227.HealthBar.Visible = false
                        v227.HealthBarOutline.Visible = false
                        v227.HealthFill.Visible = false
                        v227.Tracer.Visible = false

                        for _, v4 in pairs(v227.Skeleton) do
                            v4.Visible = false
                        end

                        return
                    end

                    if t2.value9.ESP.TeamCheck and not t2.value19(k) then
                        local v230 = v215

                        v230.Box.Visible = false
                        v230.BoxOutline.Visible = false
                        v230.Name.Visible = false
                        v230.HealthBar.Visible = false
                        v230.HealthBarOutline.Visible = false
                        v230.HealthFill.Visible = false
                        v230.Tracer.Visible = false

                        for _, v5 in pairs(v230.Skeleton) do
                            v5.Visible = false
                        end

                        return
                    end

                    local Character4 = t2.value8.Character
                    local v234 = Character4

                    if Character4 then
                        v234 = Character4:FindFirstChild("HumanoidRootPart")
                    end

                    if v234 and (v224.Position - Character4.HumanoidRootPart.Position).Magnitude > t2.value9.ESP.MaxDistance then
                        local v235 = v215

                        v235.Box.Visible = false
                        v235.BoxOutline.Visible = false
                        v235.Name.Visible = false
                        v235.HealthBar.Visible = false
                        v235.HealthBarOutline.Visible = false
                        v235.HealthFill.Visible = false
                        v235.Tracer.Visible = false

                        for _, v6 in pairs(v235.Skeleton) do
                            v6.Visible = false
                        end

                        return
                    end

                    local v238, v239 = t2.value5:WorldToViewportPoint(v224.Position)

                    if v239 and v238.Z > 0 then
                        local v240 = t2.value5:WorldToViewportPoint(v225.Position + Vector3.new(0, 0.5, 0))
                        local v241 = t2.value5:WorldToViewportPoint(v224.Position - Vector3.new(0, 3, 0))
                        local v242 = math.abs(v240.Y - v241.Y)
                        local v243 = v242 * 0.5

                        if t2.value9.ESP.Boxes then
                            v215.BoxOutline.Size = Vector2.new(v243, v242)
                            v215.BoxOutline.Position = Vector2.new(v238.X - v243 / 2, v238.Y - v242 / 2)
                            v215.BoxOutline.Visible = true
                            v215.Box.Size = Vector2.new(v243, v242)
                            v215.Box.Position = Vector2.new(v238.X - v243 / 2, v238.Y - v242 / 2)
                            v215.Box.Color = t2.value9.ESP.BoxColor
                            v215.Box.Visible = true
                        else
                            v215.Box.Visible = false
                            v215.BoxOutline.Visible = false
                        end

                        if t2.value9.ESP.Names then
                            v215.Name.Text = k.DisplayName
                            v215.Name.Position = Vector2.new(v238.X, v240.Y - 20)
                            v215.Name.Color = t2.value9.ESP.NameColor
                            v215.Name.Visible = true
                        else
                            v215.Name.Visible = false
                        end

                        if t2.value9.ESP.Health then
                            local v244 = v223.Health / v223.MaxHealth
                            local n1 = 3
                            local v246 = v238.X - v243 / 2 - 3 - 3
                            local v247 = v238.Y - v242 / 2

                            v215.HealthBarOutline.Size = Vector2.new(5, v242 + 2)
                            v215.HealthBarOutline.Position = Vector2.new(v246 - 1, v247 - 1)
                            v215.HealthBarOutline.Visible = true
                            v215.HealthBar.Size = Vector2.new(n1, v242)
                            v215.HealthBar.Position = Vector2.new(v246, v247)
                            v215.HealthBar.Visible = true

                            local v248 = v215
                            local v249 = v242 * v244

                            v248.HealthFill.Size = Vector2.new(n1, v249)
                            v215.HealthFill.Position = Vector2.new(v246, v247 + v242 - v249)
                            v215.HealthFill.Visible = true

                            if v244 > 0.66 then
                                v215.HealthFill.Color = Color3.fromRGB(0, 255, 0)
                            elseif v244 > 0.33 then
                                v215.HealthFill.Color = Color3.fromRGB(255, 255, 0)
                            else
                                v215.HealthFill.Color = Color3.fromRGB(255, 0, 0)
                            end
                        else
                            v215.HealthBar.Visible = false
                            v215.HealthBarOutline.Visible = false
                            v215.HealthFill.Visible = false
                        end

                        if t2.value9.ESP.Tracers then
                            v215.Tracer.From = Vector2.new(t2.value5.ViewportSize.X / 2, t2.value5.ViewportSize.Y)
                            v215.Tracer.To = Vector2.new(v238.X, v238.Y + v242 / 2)
                            v215.Tracer.Color = t2.value9.ESP.TracerColor
                            v215.Tracer.Visible = true
                        else
                            v215.Tracer.Visible = false
                        end

                        if t2.value9.ESP.Skeleton then
                            for k2, v7 in pairs(t2.value29) do
                                local v252 = k2
                                local v253 = Character:FindFirstChild(v7[1])
                                local v254 = Character:FindFirstChild(v7[2])
                                local v255 = v253
                                if v253 then
                                    v255 = v254 and v215.Skeleton[v252]
                                end
                                if v255 then
                                    local v256, v257 = t2.value5:WorldToViewportPoint(v253.Position)
                                    local v258, v259 = t2.value5:WorldToViewportPoint(v254.Position)

                                    if v257 then
                                        if v259 then
                                            v259 = v256.Z > 0 and v258.Z > 0
                                        end

                                        v257 = v259
                                    end

                                    if v257 then
                                        v215.Skeleton[v252].From = Vector2.new(v256.X, v256.Y)
                                        v215.Skeleton[v252].To = Vector2.new(v258.X, v258.Y)
                                        v215.Skeleton[v252].Color = t2.value9.ESP.SkeletonColor
                                        v215.Skeleton[v252].Visible = true
                                    else
                                        v215.Skeleton[v252].Visible = false
                                    end
                                elseif v215.Skeleton[v252] then
                                    v215.Skeleton[v252].Visible = false
                                end
                            end

                            return
                        end

                        for _, v8 in pairs(v215.Skeleton) do
                            v8.Visible = false
                        end

                        return
                    end

                    local v262 = v215

                    v262.Box.Visible = false
                    v262.BoxOutline.Visible = false
                    v262.Name.Visible = false
                    v262.HealthBar.Visible = false
                    v262.HealthBarOutline.Visible = false
                    v262.HealthFill.Visible = false
                    v262.Tracer.Visible = false

                    for _, v9 in pairs(v262.Skeleton) do
                        v9.Visible = false
                    end
                end)
            end
        end)
    end)()
    for v19, v20 in pairs(t2.value1:GetPlayers()) do

        if v20 ~= t2.value8 then
            t2.value30(v20)
        end
    end
    t2.value1.PlayerAdded:Connect(function(player)
        player.CharacterAdded:Connect(function()
            task.wait(1)
            t2.value30(player)
        end)
    end)
    t2.value1.PlayerRemoving:Connect(function(player)
        t2.value31(player)
    end)
    for _, player in pairs(t2.value1:GetPlayers()) do
        local v23 = player

        if v23 ~= t2.value8 then
            v23.CharacterAdded:Connect(function()
                task.wait(1)
                t2.value30(v23)
            end)
            v23.CharacterRemoving:Connect(function()
                if t2.value26[v23] then
                    local v122 = t2.value26[v23]

                    v122.Box.Visible = false
                    v122.BoxOutline.Visible = false
                    v122.Name.Visible = false
                    v122.HealthBar.Visible = false
                    v122.HealthBarOutline.Visible = false
                    v122.HealthFill.Visible = false
                    v122.Tracer.Visible = false

                    for _, v in pairs(v122.Skeleton) do
                        v.Visible = false
                    end
                end
            end)
        end
    end
    t2.value33 = {}
    function t2.value34()
        if t2.value9.Performance.FPSBoost then
            local _sethiddenproperty = sethiddenproperty
            if not _sethiddenproperty then
                _sethiddenproperty = set_hidden_property or function()
                end
            end
            local v126 = _sethiddenproperty
            for v129, v130 in pairs(t2.value4:GetDescendants()) do

                local v131 = v130

                if t2.value9.Performance.RemoveTextures then
                    local v132 = v131:IsA("Decal")

                    if not v132 then
                        v132 = v131:IsA("Texture")
                    end

                    if v132 then
                        v131.Transparency = 1
                    end

                    local v133 = v131:IsA("ParticleEmitter")

                    if not v133 then
                        v133 = v131:IsA("Trail")

                        if not v133 then
                            v133 = v131:IsA("Smoke")

                            if not v133 then
                                v133 = v131:IsA("Fire")

                                if not v133 then
                                    v133 = v131:IsA("Sparkles")
                                end
                            end
                        end
                    end

                    if v133 then
                        v131.Enabled = false
                    end
                end

                local v134 = v131:IsA("MeshPart")

                if not v134 then
                    v134 = v131:IsA("UnionOperation")

                    if not v134 then
                        v134 = v131:IsA("Part")
                    end
                end

                if v134 then
                    if t2.value9.Performance.LowQuality then
                        pcall(function()
                            v126(v131, "RenderFidelity", Enum.RenderFidelity.Performance)
                        end)
                    end

                    if t2.value9.Performance.DisableShadows then
                        v131.CastShadow = false
                    end
                end
            end
            if not t2.value33.Technology then
                local Technology = t2.value7.Technology
                local GlobalShadows = t2.value7.GlobalShadows
                local value7Brightness = t2.value7.Brightness

                t2.value33 = {
						Technology = Technology,
						GlobalShadows = GlobalShadows,
						Brightness = value7Brightness
					}
            end
            t2.value7.Technology = Enum.Technology.Compatibility
            t2.value7.GlobalShadows = false
            settings().Rendering.QualityLevel = Enum.QualityLevel.Level01

            return
        end

        if t2.value33.Technology then
            t2.value7.Technology = t2.value33.Technology
            t2.value7.GlobalShadows = t2.value33.GlobalShadows
            t2.value7.Brightness = t2.value33.Brightness
        end

        for _, descendant in pairs(t2.value4:GetDescendants()) do
            local v140 = descendant:IsA("Decal")

            if not v140 then
                v140 = descendant:IsA("Texture")
            end

            if v140 then
                descendant.Transparency = 0
            end

            local v141 = descendant:IsA("ParticleEmitter")

            if not v141 then
                v141 = descendant:IsA("Trail")

                if not v141 then
                    v141 = descendant:IsA("Smoke")

                    if not v141 then
                        v141 = descendant:IsA("Fire")

                        if not v141 then
                            v141 = descendant:IsA("Sparkles")
                        end
                    end
                end
            end

            if v141 then
                descendant.Enabled = true
            end

            local v142 = descendant:IsA("MeshPart")

            if not v142 then
                v142 = descendant:IsA("UnionOperation") or descendant:IsA("Part")
            end

            if v142 then
                descendant.CastShadow = true
            end
        end

        settings().Rendering.QualityLevel = Enum.QualityLevel.Automatic
    end
    local v24 = v10:AddSection("Core Settings")
    v24:AddToggle({
			Name = "Enable Aimbot",
			Default = false,
			Callback = function(p17)
        t2.value9.Aimbot.Enabled = p17

        if not p17 then
            t2.value23()
        end
    end
		})
    v24:AddToggle({
			Name = "Team Check",
			Default = true,
			Callback = function(p18)
        t2.value9.Aimbot.TeamCheck = p18
    end
		})
    v24:AddToggle({
			Name = "Wall Check",
			Default = true,
			Callback = function(p19)
        t2.value9.Aimbot.WallCheck = p19
    end
		})
    v24:AddToggle({
			Name = "Silent Aim (Hold RMB)",
			Default = false,
			Callback = function(p20)
        t2.value9.Aimbot.SilentAim = p20
    end
		})
    v24:AddToggle({
			Name = "Show FOV Circle",
			Default = true,
			Callback = function(p21)
        t2.value9.Aimbot.ShowFOV = p21
    end
		})
    v24:AddSlider({
			Name = "FOV Size",
			Min = 50,
			Max = 500,
			Default = 120,
			Suffix = "px",
			Callback = function(p22)
        t2.value9.Aimbot.FOV = p22
    end
		})
    v24:AddSlider({
			Name = "Smoothness",
			Min = 0,
			Max = 50,
			Default = 10,
			Suffix = "",
			Callback = function(p23)
        t2.value9.Aimbot.Smoothness = p23
    end
		})
    v24:AddDropdown({
			Name = "Target Part",
			Options = {
				"Head",
				"HumanoidRootPart",
				"UpperTorso",
				"LowerTorso"
			},
			Default = "Head",
			Callback = function(p24)
        t2.value9.Aimbot.TargetPart = p24
    end
		})
    v24:AddDropdown({
			Name = "Lock Mode",
			Options = {
				"Camera",
				"Mouse"
			},
			Default = "Camera",
			Callback = function(p25)
        t2.value9.Aimbot.Mode = p25
    end
		})
    local v25 = v10:AddSection("Auto Shooting")
    v25:AddToggle({
			Name = "Auto Shoot",
			Default = false,
			Callback = function(p26)
        t2.value9.Aimbot.AutoShoot = p26

        if not p26 then
            t2.value23()
        end
    end
		})
    v25:AddSlider({
			Name = "Fire Delay",
			Min = 0.01,
			Max = 0.5,
			Default = 0.05,
			Suffix = "s",
			Callback = function(p27)
        t2.value9.Aimbot.AutoFireDelay = p27
    end
		})
    v25:AddToggle({
			Name = "Burst Mode",
			Default = false,
			Callback = function(p28)
        t2.value9.Aimbot.BurstMode = p28
    end
		})
    v25:AddSlider({
			Name = "Burst Count",
			Min = 2,
			Max = 10,
			Default = 3,
			Suffix = " shots",
			Callback = function(p29)
        t2.value9.Aimbot.BurstCount = p29
    end
		})
    v25:AddSlider({
			Name = "Burst Delay",
			Min = 0.1,
			Max = 2,
			Default = 0.1,
			Suffix = "s",
			Callback = function(p30)
        t2.value9.Aimbot.BurstDelay = p30
    end
		})
    local v26 = v11:AddSection("Prediction & Accuracy")
    v26:AddToggle({
			Name = "Velocity Prediction",
			Default = false,
			Callback = function(p31)
        t2.value9.Aimbot.PredictionEnabled = p31
    end
		})
    v26:AddSlider({
			Name = "Prediction Amount",
			Min = 0.05,
			Max = 0.5,
			Default = 0.125,
			Suffix = "s",
			Callback = function(p32)
        t2.value9.Aimbot.PredictionAmount = p32
    end
		})
    v26:AddToggle({
			Name = "Shake Reduction",
			Default = true,
			Callback = function(p33)
        t2.value9.Aimbot.ShakeReduction = p33
    end
		})
    v26:AddSlider({
			Name = "Shake Amount",
			Min = 0,
			Max = 10,
			Default = 0.5,
			Suffix = "",
			Callback = function(p34)
        t2.value9.Aimbot.ShakeAmount = p34
    end
		})
    v26:AddDropdown({
			Name = "Smoothing Curve",
			Options = {
				"Linear",
				"EaseOut",
				"EaseInOut",
				"Exponential"
			},
			Default = "Linear",
			Callback = function(p35)
        t2.value9.Aimbot.SmoothingCurve = p35
    end
		})
    local v27 = v11:AddSection("Targeting Options")
    v27:AddToggle({
			Name = "Stick to Target",
			Default = false,
			Callback = function(p36)
        t2.value9.Aimbot.StickToTarget = p36
    end
		})
    v27:AddToggle({
			Name = "Auto Switch Target",
			Default = true,
			Callback = function(p37)
        t2.value9.Aimbot.AutoSwitchTarget = p37
    end
		})
    v27:AddToggle({
			Name = "Ignore Forcefield",
			Default = true,
			Callback = function(p38)
        t2.value9.Aimbot.IgnoreForcefield = p38
    end
		})
    v27:AddSlider({
			Name = "Max Lock Distance",
			Min = 100,
			Max = 5000,
			Default = 1000,
			Suffix = " studs",
			Callback = function(p39)
        t2.value9.Aimbot.MaxLockDistance = p39
    end
		})
    local v28 = v11:AddSection("Hitbox Settings")
    v28:AddToggle({
			Name = "Hitbox Expansion",
			Default = false,
			Callback = function(p40)
        t2.value9.Aimbot.HitboxExpansion = p40
    end
		})
    v28:AddSlider({
			Name = "Hitbox Size",
			Min = 1,
			Max = 10,
			Default = 2,
			Suffix = "x",
			Callback = function(p41)
        t2.value9.Aimbot.HitboxSize = p41
    end
		})
    local v29 = v11:AddSection("Dynamic FOV")
    v29:AddToggle({
			Name = "Dynamic FOV Size",
			Default = false,
			Callback = function(p42)
        t2.value9.Aimbot.FOVDynamicSize = p42
    end
		})
    v29:AddSlider({
			Name = "Min FOV",
			Min = 20,
			Max = 200,
			Default = 50,
			Suffix = "px",
			Callback = function(p43)
        t2.value9.Aimbot.MinFOV = p43
    end
		})
    v29:AddSlider({
			Name = "Max FOV",
			Min = 100,
			Max = 600,
			Default = 300,
			Suffix = "px",
			Callback = function(p44)
        t2.value9.Aimbot.MaxFOV = p44
    end
		})
    local v30 = v12:AddSection("ESP Settings")
    v30:AddToggle({
			Name = "Enable ESP",
			Default = false,
			Callback = function(p45)
        t2.value9.ESP.Enabled = p45
    end
		})
    v30:AddToggle({
			Name = "Team Check",
			Default = true,
			Callback = function(p46)
        t2.value9.ESP.TeamCheck = p46
    end
		})
    v30:AddSlider({
			Name = "Max Distance",
			Min = 100,
			Max = 5000,
			Default = 1000,
			Suffix = " studs",
			Callback = function(p47)
        t2.value9.ESP.MaxDistance = p47
    end
		})
    v30:AddToggle({
			Name = "Boxes",
			Default = true,
			Callback = function(p48)
        t2.value9.ESP.Boxes = p48
    end
		})
    v30:AddToggle({
			Name = "Names",
			Default = true,
			Callback = function(p49)
        t2.value9.ESP.Names = p49
    end
		})
    v30:AddToggle({
			Name = "Health Bars",
			Default = true,
			Callback = function(p50)
        t2.value9.ESP.Health = p50
    end
		})
    v30:AddToggle({
			Name = "Tracers",
			Default = true,
			Callback = function(p51)
        t2.value9.ESP.Tracers = p51
    end
		})
    v30:AddToggle({
			Name = "Skeleton ESP",
			Default = true,
			Callback = function(p52)
        t2.value9.ESP.Skeleton = p52
    end
		})
    local v31 = v12:AddSection("ESP Colors")
    local _Color3 = Color3
    local AddColorPicker = v31.AddColorPicker
    local v34 = _Color3.fromRGB(255, 0, 0)
    AddColorPicker(v31, {
			Name = "Box Color",
			Default = v34,
			Callback = function(p53)
        t2.value9.ESP.BoxColor = p53
    end
		})
    local AddColorPicker2 = v31.AddColorPicker
    local color3_5 = Color3.fromRGB(255, 255, 255)
    AddColorPicker2(v31, {
			Name = "Name Color",
			Default = color3_5,
			Callback = function(p54)
        t2.value9.ESP.NameColor = p54
    end
		})
    local fromRGB = Color3.fromRGB
    local AddColorPicker3 = v31.AddColorPicker
    local v39 = fromRGB(255, 255, 255)
    AddColorPicker3(v31, {
			Name = "Tracer Color",
			Default = v39,
			Callback = function(p55)
        t2.value9.ESP.TracerColor = p55
    end
		})
    local color3_6 = Color3.fromRGB(255, 255, 255)
    v31:AddColorPicker({
			Name = "Skeleton Color",
			Default = color3_6,
			Callback = function(p56)
        t2.value9.ESP.SkeletonColor = p56
    end
		})
    local v41 = v13:AddSection("FPS Optimization")
    v41:AddToggle({
			Name = "Enable FPS Boost",
			Default = false,
			Callback = function(p57)
        t2.value9.Performance.FPSBoost = p57
        t2.value34()
    end
		})
    v41:AddToggle({
			Name = "Remove Textures",
			Default = false,
			Callback = function(p58)
        t2.value9.Performance.RemoveTextures = p58

        if t2.value9.Performance.FPSBoost then
            t2.value34()
        end
    end
		})
    v41:AddToggle({
			Name = "Disable Shadows",
			Default = false,
			Callback = function(p59)
        t2.value9.Performance.DisableShadows = p59

        if t2.value9.Performance.FPSBoost then
            t2.value34()
        end
    end
		})
    v41:AddToggle({
			Name = "Low Quality Mode",
			Default = false,
			Callback = function(p60)
        t2.value9.Performance.LowQuality = p60

        if t2.value9.Performance.FPSBoost then
            t2.value34()
        end
    end
		})
    v41:AddLabel({
			Text = "FPS boost may reduce visual quality"
		})
    function t2.value35()
        t2.value23()

        if t2.value24 then
            t2.value24:Disconnect()
        end

        if t2.value25 then
            t2.value25:Disconnect()
        end

        if t2.value32 then
            t2.value32:Disconnect()
        end

        pcall(function()
            t2.value10:Remove()
        end)

        for k, _ in pairs(t2.value26) do
            t2.value31(k)
        end
    end
    t2.value36 = v3.Destroy
    function v3.Destroy(p61)
        t2.value35()
        t2.value36(p61)
    end
    v3:Notify("Arsenal Hub", "Optimized version loaded!\n\nCheck Performance tab for FPS boost", 7)
    v3:SetStatus("Active", t1.value1.Theme.Success)
end,
	OnFailed = function(p62)
    warn("[Arsenal Hub] Key verification failed:", p62)
end
})
