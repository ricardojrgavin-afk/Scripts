-- This file was generated at discord.gg/syncrypt

local v1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/34r90i342iwefnwd/ScawsLoader/refs/heads/main/kovari_source"))()
v1:CreateKeyUI({
	Title = "BLIND SHOOT ESP",
	Subtitle = "Kovari",
	ApiKey = "0015f93e-20bf-48fb-a444-33b056019ebe",
	Service = "key system",
	Provider = "key system",
	Discord = "discord.gg/QcvddpVeTM",
	OnSuccess = function()
		task.wait(0.8)

		local v2 = v1:Init({
			ToggleKey = Enum.KeyCode.RightControl,
			Discord = "discord.gg/QcvddpVeTM"
		})

		task.wait(0.5)

		local Players = game:GetService("Players")
		local RunService = game:GetService("RunService")
		local color3 = Color3.fromRGB(0, 145, 250)

		local function v6(p1)
			local BeamAttachment0 = p1:FindFirstChild("BeamAttachment0")

			if not BeamAttachment0 then
				BeamAttachment0 = Instance.new("Attachment")
				BeamAttachment0.Name = "BeamAttachment0"
				BeamAttachment0.Position = Vector3.zero
				BeamAttachment0.Parent = p1
			end

			local BeamAttachment1 = p1:FindFirstChild("BeamAttachment1")

			if not BeamAttachment1 then
				BeamAttachment1 = Instance.new("Attachment")
				BeamAttachment1.Name = "BeamAttachment1"
				BeamAttachment1.Parent = p1
			end

			BeamAttachment1.Position = Vector3.new(0, 0, 50)

			local ForcedBeamESP = p1:FindFirstChild("ForcedBeamESP")

			if not ForcedBeamESP then
				ForcedBeamESP = Instance.new("Beam")
				ForcedBeamESP.Name = "ForcedBeamESP"
				ForcedBeamESP.Attachment0 = BeamAttachment0
				ForcedBeamESP.Attachment1 = BeamAttachment1
				ForcedBeamESP.Width0 = 0.2
				ForcedBeamESP.Width1 = 0.2
				ForcedBeamESP.FaceCamera = true
				ForcedBeamESP.Parent = p1
			end

			ForcedBeamESP.Enabled = true
			ForcedBeamESP.Color = ColorSequence.new(color3)
			ForcedBeamESP.Transparency = NumberSequence.new(0)
			ForcedBeamESP.LightEmission = 1
			ForcedBeamESP.LightInfluence = 0
		end
		local function v7(p2)
			for _, descendant in pairs(p2:GetDescendants()) do
				if descendant:IsA("BasePart") then
					local v16 = descendant.Name ~= "HumanoidRootPart"

					if v16 then
						v16 = descendant.Name ~= "hitbox"
					end

					if v16 then
						descendant.Transparency = 0
					end

					if descendant.Name == "ponto" then
						v6(descendant)
					end
				end
			end
		end

		RunService.Heartbeat:Connect(function()
			for _, player in pairs(Players:GetPlayers()) do
				local Character = player.Character

				if Character then
					v7(Character)
				end
			end
		end)
		v2:Notify("Blind Shoot ESP", "Simple ESP active", 3)
		v2:SetStatus("Active", v1.Theme.Success)
	end,
	OnFailed = function(p3)
		warn("[Blind Shoot ESP] Key verification failed:", p3)
	end
})
