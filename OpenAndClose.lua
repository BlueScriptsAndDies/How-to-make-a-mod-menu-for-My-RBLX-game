-- Now, lets make the menu open and close the with little icon
-- Where it says "scipt.Parent.Parent etc.." Change it to where to mod menu is located, also make sure to make your mod menu draggable
script.Parent.MouseButton1Click:Connect(function()
	script.Parent.Parent.Parent.ModMenu.Visible = not script.Parent.Parent.Parent.ModMenu.Visible
end)
