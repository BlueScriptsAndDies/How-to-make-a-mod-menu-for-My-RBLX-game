-- last mod
-- first go into rep and make a remote event called "Kill", next make a script in SSS called "Event" then add a local script in the button

-- SSS Script:

game.ReplicatedStorage.Kill.OnServerEvent:Connect(function(plr)
	for i,player in pairs(game.Players:GetPlayers()) do
				if player.Character then
					local humanoid = player.Character:FindFirstChild("Humanoid")
					if humanoid then
						humanoid.Health = 0
			end
		end
	end
end)
-- not a fake kill btw.

-- local script script
script.Parent.MouseButton1Click:Connect(function()
	game.ReplicatedStorage.Kill:FireServer()
end)


