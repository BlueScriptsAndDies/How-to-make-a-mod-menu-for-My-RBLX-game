-- Now since im kind ill give you some mods.
--Kick Mod make sure to put in the button in your mod menu
-- Btw all of the scripts so far are locals.

script.Parent.MouseButton1Click:Connect(function()
	script.Parent.Parent.Parent.Parent.KickMenu.Kick.Visible = true -- make sure to add a new frame and change the parent to the text box
	script.Parent.Parent.Parent.ModMenu.Visible = false	-- same here ^^^
end)
