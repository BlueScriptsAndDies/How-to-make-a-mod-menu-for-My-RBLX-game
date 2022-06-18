--Make a 1 screenGui, then Make a Frame. Next Make a local script and paste this code into it:
-- all you need to change is 

local UIS = game:GetService("UserInputService")

local MainFrame = script.Parent
local TopBar = MainFrame:WaitForChild("Changeme") This, The part that you want people to drag that little icon like android apk mod menus. the name of the TextLable to want people to drag.

local Camera = workspace:WaitForChild("Camera")

local DragMousePos
local FramePos

local Draggable = false

TopBar.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		Draggable = true
		DragMousePos = Vector2.new(input.Position.X, input.Position.Y)
		FramePos = Vector2.new(MainFrame.Position.X.Scale, MainFrame.Position.Y.Scale)
	end
end)

TopBar.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		Draggable = false
	end

end)

UIS.InputChanged:Connect(function(input)
	if Draggable == true then
		local NewPostion = FramePos + ((Vector2.new(input.Position.X, input.Position.Y) - DragMousePos) / Camera.ViewportSize)
		MainFrame.Position = UDim2.new(NewPostion.X, 0, NewPostion.Y, 0)
	end
end)
