-- This file was generated at discord.gg/syncrypt

local t1 = {}
local t2 = {}
local v3 = unpack or table.unpack
if getgenv().SaintHubCleanup then
    pcall(getgenv().SaintHubCleanup)
end
local v4 = getgenv()
local SaintConfig = getgenv().SaintConfig
if not SaintConfig then
    t1.value1 = Enum.UserInputType.MouseButton2
    SaintConfig = {
		ESP = false,
		HP = false,
		Skeleton = false,
		Aim = false,
		SilentAim = false,
		FOVSize = 150,
		Smoothness = 2,
		AimKey = t1.value1,
		TargetPart = "Head",
		SpeedHack = false,
		WalkSpeed = 50,
		InfJump = false,
		WallCheck = true,
		JumpPower = 50
	}
end
v4.SaintConfig = SaintConfig
getgenv().SaintConfig.Aim = false
getgenv().SaintConfig.SilentAim = false
t2.value1 = game:GetService("Players")

local RunService = game:GetService("RunService")

t2.value2 = game:GetService("UserInputService")
t2.value3 = workspace.CurrentCamera
t2.value4 = t2.value1.LocalPlayer
t2.value5 = {}
t2.value6 = {}
t2.value7 = {}
t2.value8 = {}
t2.value9 = nil
t2.value10 = true
t2.value11 = 0
t2.value12 = 0
local t3 = {
	SpeedHack = false,
	InfJump = false,
	JumpPower = 50,
	WalkSpeed = 50
}
function t1.value1(p1, p2)
    if not getgenv().SaintConfig.Skeleton then
        for _, v in ipairs(p2.skeleton) do
            v.Visible = false
        end

        return
    end
    local Character = p1.Character
    local v19 = not Character
    if not v19 then
        v19 = not p2.bonePairs or #p2.bonePairs == 0
    end
    if v19 then
        for _, v in ipairs(p2.skeleton) do
            v.Visible = false
        end

        return
    end
    if not Character:FindFirstChild("HumanoidRootPart") then
        for _, v in ipairs(p2.skeleton) do
            v.Visible = false
        end

        return
    end
    for v26, v27 in ipairs(p2.bonePairs) do

        local v28 = p2.skeleton[v26]

        if not v28 then
            break
        end

        local v29 = v27[1]
        local v30 = v27[2]
        local v31 = v29

        if v29 then
            v31 = v30

            if v30 then
                v31 = v29.Parent and v30.Parent
            end
        end

        if v31 then
            local CFramePosition = v29.CFrame.Position
            local CFramePosition2 = v30.CFrame.Position
            local v34, v35 = t2.value3:WorldToViewportPoint(CFramePosition)
            local v36, v37 = t2.value3:WorldToViewportPoint(CFramePosition2)

            if v35 then
                if v37 then
                    v37 = v34.Z > 0 and v36.Z > 0
                end

                v35 = v37
            end

            if v35 then
                v28.From = Vector2.new(v34.X, v34.Y)
                v28.To = Vector2.new(v36.X, v36.Y)
                v28.Visible = true

                continue
            end
        end

        v28.Visible = false
    end
    for i = #p2.bonePairs + 1, #p2.skeleton do
        p2.skeleton[i].Visible = false
    end
end
t2.value13 = t3
pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/tokyotokyo-dev/rivals/refs/heads/main/gui.lua", true))()
end)

function t2.value14(p3, p4)
    local drawing = Drawing.new(p3)

    for k, v in pairs(p4) do
        drawing[k] = v
    end

    table.insert(t2.value6, drawing)

    return drawing
end
function t2.value15(p5)
    p5.box.Visible = false
    p5.text.Visible = false
    p5.hpBarBg.Visible = false
    p5.hpBar.Visible = false

    for _, v in ipairs(p5.skeleton) do
        v.Visible = false
    end
end
function t2.value16(p6)
    local t4 = {}
    for v43, v44 in ipairs(p6:GetDescendants()) do

        local v45 = v44:IsA("Motor6D")

        if v45 then
            v45 = v44.Part0 and v44.Part1
        end

        if v45 then
            table.insert(t4, {
				v44.Part0,
				v44.Part1
			})
        end
    end
    if #t4 == 0 then
        for _, v in ipairs({
			{
				"Head",
				"Torso"
			},
			{
				"Torso",
				"Left Arm"
			},
			{
				"Torso",
				"Right Arm"
			},
			{
				"Torso",
				"Left Leg"
			},
			{
				"Torso",
				"Right Leg"
			}
		}) do
            local v48 = p6:FindFirstChild(v[1])
            local v49 = p6:FindFirstChild(v[2])

            if v48 and v49 then
                table.insert(t4, {
					v48,
					v49
				})
            end
        end
    end

    return t4
end
function t2.value17(p7)
    if p7 == t2.value4 or t2.value7[p7] then
        return
    end

    local t5 = {}

    for i = 1, 20 do
        t5[i] = t2.value14("Line", {
			Color = Color3.fromRGB(255, 255, 255),
			Thickness = 1.5,
			Visible = false
		})
    end

    local value7 = t2.value7
    local value14 = t2.value14
    local color3 = Color3.fromRGB(0, 170, 255)
    local v64 = value14("Square", {
		Thickness = 2,
		Filled = false,
		Color = color3,
		Visible = false
	})
    local value14_2 = t2.value14
    local color3_2 = Color3.fromRGB(0, 170, 255)
    local v67 = value14_2("Text", {
		Size = 14,
		Color = color3_2,
		Outline = true,
		Visible = false
	})
    local value14_3 = t2.value14
    local color3_3 = Color3.fromRGB(50, 50, 50)
    local v70 = value14_3("Square", {
		Filled = true,
		Color = color3_3,
		Visible = false
	})
    local value14_4 = t2.value14
    local color3_4 = Color3.fromRGB(0, 255, 0)
    local v73 = value14_4("Square", {
		Filled = true,
		Color = color3_4,
		Visible = false
	})

    value7[p7] = {
		box = v64,
		text = v67,
		hpBarBg = v70,
		hpBar = v73,
		skeleton = t5,
		bonePairs = {}
	}
end
function t2.value18(p8)
    local v75 = t2.value7[p8]

    if not v75 then
        return
    end

    pcall(function()
        v75.box:Remove()
        v75.text:Remove()
        v75.hpBarBg:Remove()
        v75.hpBar:Remove()

        for _, v in ipairs(v75.skeleton) do
            v:Remove()
        end
    end)
    t2.value7[p8] = nil
end
t2.value19 = t1.value1
function t2.value20()
    if not getgenv().SaintConfig.ESP then
        for _, v in pairs(t2.value7) do
            t2.value15(v)
        end

        return
    end

    local _ = t2.value3.ViewportSize

    for k, v in pairs(t2.value7) do
        local v81 = k

        if not v81.Parent or not v81.Character then
            t2.value18(v81)
        else
            local Character = v81.Character
            local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
            local v84 = not HumanoidRootPart
            local Humanoid = Character:FindFirstChild("Humanoid")

            if not v84 then
                v84 = not Humanoid or Humanoid.Health <= 0
            end

            if v84 then
                t2.value15(v)
            else
                local v86, v87 = t2.value3:WorldToViewportPoint(HumanoidRootPart.Position)

                if not v87 then
                    t2.value15(v)
                else
                    local v88 = t2.value3:WorldToViewportPoint(HumanoidRootPart.Position + Vector3.new(0, 3, 0))
                    local v89 = t2.value3:WorldToViewportPoint(HumanoidRootPart.Position - Vector3.new(0, 3, 0))
                    local v90 = math.abs(v88.Y - v89.Y) * 0.75
                    local v91 = v90 * 0.55
                    local v92 = v86.X - v91
                    local v93 = v86.Y - v90
                    local v94 = v91 * 2
                    local v95 = v90 * 2

                    v.box.Size = Vector2.new(v94, v95)
                    v.box.Position = Vector2.new(v92, v93)
                    v.box.Visible = true
                    v.text.Text = v81.Name
                    v.text.Position = Vector2.new(v92, v93 - 16)
                    v.text.Visible = true

                    if getgenv().SaintConfig.HP then
                        local v96 = math.clamp(Humanoid.Health / Humanoid.MaxHealth, 0, 1)

                        v.hpBarBg.Size = Vector2.new(4, v95)
                        v.hpBarBg.Position = Vector2.new(v92 - 7, v93)
                        v.hpBarBg.Visible = true
                        v.hpBar.Size = Vector2.new(4, v95 * v96)

                        local hpBar = v.hpBar
                        local new = Vector2.new
                        local v99 = v93 + v95 * (1 - v96)

                        hpBar.Position = new(v92 - 7, v99)

                        local hpBar2 = v.hpBar
                        local v101 = v96 > 0.5

                        if v101 then
                            v101 = Color3.fromRGB(0, 255, 0)
                        end

                        if not v101 then
                            v101 = v96 > 0.25

                            if v101 then
                                v101 = Color3.fromRGB(255, 255, 0)
                            end

                            if not v101 then
                                v101 = Color3.fromRGB(255, 0, 0)
                            end
                        end

                        hpBar2.Color = v101
                        v.hpBar.Visible = true
                    else
                        v.hpBarBg.Visible = false
                        v.hpBar.Visible = false
                    end

                    t2.value19(v81, v)
                end
            end
        end
    end
end
t2.value21 = RaycastParams.new()
t2.value21.FilterType = Enum.RaycastFilterType.Exclude
t2.value22 = nil
function t2.value22(p9, p10, p11)
    if not getgenv().SaintConfig.WallCheck then
        return false
    end

    t2.value21.FilterDescendantsInstances = { t2.value4.Character }

    local _workspace = workspace
    local Raycast = _workspace.Raycast
    local value21 = t2.value21
    local v108 = Raycast(_workspace, p9, p10 - p9, value21)

    if not v108 then
        return false
    end

    return not v108.Instance:IsDescendantOf(p11)
end
function t2.value23()
    local v109
    local FOVSize = getgenv().SaintConfig.FOVSize
    local ViewportSize = t2.value3.ViewportSize
    local vector2 = Vector2.new(ViewportSize.X / 2, ViewportSize.Y / 2)
    local TargetPart = getgenv().SaintConfig.TargetPart
    local CFramePosition = t2.value3.CFrame.Position
    for _, player in ipairs(t2.value1:GetPlayers()) do
        if player ~= t2.value4 and player.Character then
            local Humanoid = player.Character:FindFirstChild("Humanoid")
            local TargetPart2 = player.Character:FindFirstChild(TargetPart)

            if not TargetPart2 then
                TargetPart2 = player.Character:FindFirstChild("Head")
            end

            if Humanoid and (Humanoid.Health > 0 and TargetPart2) and not t2.value22(CFramePosition, TargetPart2.Position, player.Character) then
                local v120, t6Result = t2.value3:WorldToScreenPoint(TargetPart2.Position)
                if t6Result then
                    local Magnitude = (Vector2.new(v120.X, v120.Y) - vector2).Magnitude

                    if Magnitude < FOVSize then
                        FOVSize = Magnitude
                        v109 = player
                    end
                end
            end
        end
    end

    return v109
end
local value14 = t2.value14
local color3 = Color3.fromRGB(0, 170, 255)

t2.value24 = value14("Circle", {
	Thickness = 1.5,
	Color = color3,
	NumSides = 60,
	Filled = false,
	Visible = false
})
function t2.value25()
    if not t2.value4.Character then
        t2.value24.Visible = false

        return
    end

    local Aim = getgenv().SaintConfig.Aim

    if not Aim then
        Aim = getgenv().SaintConfig.SilentAim
    end

    t2.value24.Radius = getgenv().SaintConfig.FOVSize

    local ViewportSize = t2.value3.ViewportSize

    t2.value24.Position = Vector2.new(ViewportSize.X / 2, ViewportSize.Y / 2)
    t2.value24.Visible = Aim

    local v135 = 1 / (getgenv().SaintConfig.Smoothness + 1)
    local v136 = false

    if getgenv().SaintConfig.SilentAim then
        v136 = true
    elseif getgenv().SaintConfig.Aim then
        local AimKey = getgenv().SaintConfig.AimKey

        v136 = if AimKey ~= Enum.UserInputType.MouseButton1 then if AimKey ~= Enum.UserInputType.MouseButton2 then t2.value2:IsKeyDown(AimKey) else t2.value2:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) else t2.value2:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)
    end

    if v136 then
        local v138 = t2.value23()

        if v138 and v138.Character then
            local SaintConfigTargetPart = v138.Character:FindFirstChild(getgenv().SaintConfig.TargetPart)

            if not SaintConfigTargetPart then
                SaintConfigTargetPart = v138.Character:FindFirstChild("Head")
            end

            if SaintConfigTargetPart then
                t2.value3.CFrame = t2.value3.CFrame:Lerp(CFrame.lookAt(t2.value3.CFrame.Position, SaintConfigTargetPart.Position), v135)
            end
        end
    end
end
function t2.value26(p12)

    for v125, v126 in ipairs(t2.value8) do

        local v127 = v126

        pcall(function()
            v127:Disconnect()
        end)
    end
    t2.value8 = {}
    if p12 then
        p12 = p12:FindFirstChildOfClass("Humanoid")
    end
    local v128 = p12
    if not v128 then
        return
    end
    local function v129()
        if getgenv().SaintConfig.SpeedHack then
            v128.WalkSpeed = getgenv().SaintConfig.WalkSpeed

            return
        end

        v128.WalkSpeed = 16
    end
    local function v130()
        if not getgenv().SaintConfig.InfJump then
            v128.JumpPower = getgenv().SaintConfig.JumpPower
        end
    end
    v129()
    v130()
    local connection = v128:GetPropertyChangedSignal("WalkSpeed"):Connect(v129)
    local connection2 = v128:GetPropertyChangedSignal("JumpPower"):Connect(v130)
    t2.value8[1] = connection
    t2.value8[2] = connection2
    table.insert(t2.value5, connection)
    table.insert(t2.value5, connection2)
end
function t2.value27()
    if t2.value9 then
        t2.value9:Disconnect()
        t2.value9 = nil
    end

    if not getgenv().SaintConfig.InfJump then
        return
    end

    t2.value9 = t2.value2.InputBegan:Connect(function(input, gameProcessed)
        if gameProcessed then
            return
        end

        local v171 = input.KeyCode == Enum.KeyCode.Space

        if v171 then
            v171 = t2.value4.Character
        end

        if v171 then
            local Humanoid = t2.value4.Character:FindFirstChildOfClass("Humanoid")
            local HumanoidRootPart = t2.value4.Character:FindFirstChild("HumanoidRootPart")

            if Humanoid and HumanoidRootPart then
                Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)

                local Attachment = HumanoidRootPart:FindFirstChildOfClass("Attachment")

                if not Attachment then
                    Attachment = Instance.new("Attachment", HumanoidRootPart)
                end

                local LinearVelocity = Instance.new("LinearVelocity")

                LinearVelocity.Attachment0 = Attachment
                LinearVelocity.MaxForce = 1e999
                LinearVelocity.VectorVelocity = Vector3.new(HumanoidRootPart.AssemblyLinearVelocity.X, getgenv().SaintConfig.JumpPower, HumanoidRootPart.AssemblyLinearVelocity.Z)
                LinearVelocity.RelativeTo = Enum.ActuatorRelativeTo.World
                LinearVelocity.Parent = HumanoidRootPart
                task.delay(0.1, function()
                    local v177 = LinearVelocity

                    if v177 then
                        v177 = LinearVelocity.Parent
                    end

                    if v177 then
                        LinearVelocity:Destroy()
                    end
                end)
            end
        end
    end)
    table.insert(t2.value5, t2.value9)
end
local function v10(p13)
    if p13 == t2.value4 then
        return
    end

    local function v141()
        task.wait(0.3)
        t2.value18(p13)
        t2.value17(p13)

        if p13.Character then
            local v176 = t2.value7[p13]

            if v176 then
                v176.bonePairs = t2.value16(p13.Character)
            end
        end
    end

    if p13.Character then
        task.spawn(v141)
    end

    local connection = p13.CharacterAdded:Connect(v141)
    local connection3 = p13.CharacterRemoving:Connect(function()
        t2.value18(p13)
    end)

    table.insert(t2.value5, connection)
    table.insert(t2.value5, connection3)
end
for _, player in ipairs(t2.value1:GetPlayers()) do
    v10(player)
end
table.insert(t2.value5, t2.value1.PlayerAdded:Connect(v10))
table.insert(t2.value5, t2.value1.PlayerRemoving:Connect(t2.value18))

if t2.value4.Character then
    t2.value26(t2.value4.Character)
end
table.insert(t2.value5, v3({ t2.value4.CharacterAdded:Connect(function(character)
    task.wait(0.5)
    t2.value26(character)
end) }))

local function v13()
    t2.value10 = false
    getgenv().SaintConfig.Aim = false
    getgenv().SaintConfig.SilentAim = false
    t2.value24.Visible = false
    for _, v in ipairs(t2.value5) do
        local v147 = v

        pcall(function()
            if v147.Connected then
                v147:Disconnect()
            end
        end)
    end
    t2.value5 = {}
    for v150, v151 in ipairs(t2.value6) do

        local v152 = v151

        pcall(function()
            v152:Remove()
        end)
    end
    for k in pairs(t2.value7) do
        t2.value18(k)
    end
    for v156, v157 in ipairs(t2.value8) do

        local v158 = v157

        pcall(function()
            if v158 then
                v158:Disconnect()
            end
        end)
    end
    local Character = t2.value4.Character
    if Character then
        Character = t2.value4.Character:FindFirstChildOfClass("Humanoid")
    end
    if Character then
        Character.WalkSpeed = 16
        Character.JumpPower = 50
    end
    local CoreGui = game:GetService("CoreGui")
    if CoreGui:FindFirstChild("SaintHubFinal") then
        CoreGui.SaintHubFinal:Destroy()
    end
    pcall(function()
        if getgenv().SaintGuiCleanup then
            getgenv().SaintGuiCleanup()
        end
    end)
    getgenv().SaintHubCleanup = nil
end
table.insert(t2.value5, t2.value2.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed then
        gameProcessed = not t2.value10
    end

    if gameProcessed then
        return
    end

    if input.KeyCode == Enum.KeyCode.P then
        v13()
    end
end))
t2.value5[#t2.value5 + 1] = RunService.RenderStepped:Connect(function(dt)
    if not t2.value10 then
        return
    end

    t2.value12 = t2.value12 + dt

    if t2.value12 >= 0.033 then
        pcall(t2.value20)
    end

    pcall(t2.value25)
end)
t2.value5[#t2.value5 + 1] = RunService.Heartbeat:Connect(function(dt)
    if not t2.value10 then
        return
    end

    t2.value11 = t2.value11 + dt

    if t2.value11 < 0.2 then
        return
    end

    local SaintConfig2 = getgenv().SaintConfig
    local v166 = SaintConfig2.SpeedHack ~= t2.value13.SpeedHack

    if not v166 then
        v166 = SaintConfig2.InfJump ~= t2.value13.InfJump

        if not v166 then
            v166 = SaintConfig2.JumpPower ~= t2.value13.JumpPower

            if not v166 then
                v166 = SaintConfig2.WalkSpeed ~= t2.value13.WalkSpeed
            end
        end
    end

    if v166 then
        t2.value13.SpeedHack = SaintConfig2.SpeedHack
        t2.value13.InfJump = SaintConfig2.InfJump
        t2.value13.JumpPower = SaintConfig2.JumpPower
        t2.value13.WalkSpeed = SaintConfig2.WalkSpeed
        t2.value27()

        if t2.value4.Character then
            t2.value26(t2.value4.Character)
        end
    end
end)
getgenv().SaintHubCleanup = v13
getgenv().UnloadSaintHub = v13
