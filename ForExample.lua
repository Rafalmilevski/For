local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "TestGui"
screenGui.Parent = playerGui

-- Create Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.5, 0, 0.5, 0)  -- Optional size
frame.Position = UDim2.new(0.25, 0, 0.25, 0)  -- Optional position
frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Optional color
frame.Parent = screenGui
