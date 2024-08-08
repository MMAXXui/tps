--Toggle function must be arg ! / autofarm
if arg then
	_G.AUTOFARM = true
	while _G.AUTOFARM do
	wait()
	local HRPRotation = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Rotation
	local GoalPST = game.Workspace.TPSSystem.TPS.CFrame
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = HRPRotation + GoalPST.Position
		local A_1 = game:GetService("Workspace").TPSSystem.TPS
	local A_2 = game:GetService("Players").LocalPlayer.Character.Head
	local Event = game:GetService("Workspace").FE.Actions.Tackle
	Event:FireServer(A_1, A_2)
	
	local Events2 = game:GetService("Workspace").FE.Kick.RemoteEvent2
	Events2:FireServer()
	if game.Players.LocalPlayer.TeamColor == BrickColor.new("Bright red") then
	game.Players.LocalPlayer.PlayerGui.LockScript.SetLock.Value = true
	game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.Position + Vector3.new(0, 45, 0),game.Workspace.BlueGoal.Part.Position)
	end
	if game.Players.LocalPlayer.TeamColor == BrickColor.new("Bright blue") then
	game.Players.LocalPlayer.PlayerGui.LockScript.SetLock.Value = true
	game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.Position + Vector3.new(0, 45, 0),game.Workspace.RedGoal.Part.Position)
	end
	end
		else
	_G.AUTOFARM = false
	wait(1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Lines.Line12.CFrame
	game.Players.LocalPlayer.PlayerGui.LockScript.SetLock.Value = false
	end

--Button function must be arg too / react
if arg then
	RunStepped2 = game:GetService("RunService").RenderStepped:Connect(function()
	if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
	if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game.Workspace.TPSSystem.TPS.Position).Magnitude <= 3 then
	if game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 1 then
	firetouchinterest(game.Players.LocalPlayer.Character["Right Leg"],game.Workspace.TPSSystem.TPS,0)
				firetouchinterest(game.Players.LocalPlayer.Character["Right Leg"],game.Workspace.TPSSystem.TPS,1)
	elseif game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 2 then
	firetouchinterest(game.Players.LocalPlayer.Character["Left Leg"],game.Workspace.TPSSystem.TPS,0)
				firetouchinterest(game.Players.LocalPlayer.Character["Left Leg"],game.Workspace.TPSSystem.TPS,1)
	
	end
	end
	end
	if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
	if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game.Workspace.TPSSystem.TPS.Position).Magnitude <= 3 then
	if game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 1 then
	firetouchinterest(game.Players.LocalPlayer.Character["RightLowerLeg"], game.Workspace.TPSSystem.TPS, 0)
				firetouchinterest(game.Players.LocalPlayer.Character["RightLowerLeg"], game.Workspace.TPSSystem.TPS, 1)
	elseif game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 2 then
	firetouchinterest(game.Players.LocalPlayer.Character["LeftLowerLeg"], game.Workspace.TPSSystem.TPS, 0)
				firetouchinterest(game.Players.LocalPlayer.Character["LeftLowerLeg"], game.Workspace.TPSSystem.TPS, 1)
	
	end
	end
	end
	end)
	else
	RunStepped2:Disconnect()
	end

-- ball shape 
A_1.Shape = "Block" --HERE CHANGE THE SHAPE

local A_1 = game:GetService("Workspace").TPSSystem.TPS -- you can delete this 

--auto blue fire ball


