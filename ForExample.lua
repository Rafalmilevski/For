local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "TestGui"
screenGui.Parent = playerGui

-- Create Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.5, 0, 0.5, 0)
frame.Position = UDim2.new(0.25, 0, 0.25, 0)
frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
frame.Parent = screenGui

-- Create UICorner
local ui = Instance.new("UICorner")
ui.Parent = frame

-- Create TextLabel
local txt = Instance.new("TextLabel")
txt.Text = "Key System"
txt.BackgroundTransparency = 1
txt.Font = Enum.Font.Highway
txt.TextSize = 28
txt.Size = UDim2.new(1, 0, 0.2, 0)
txt.Position = UDim2.new(0, 0, 0, 0)
txt.TextColor3 = Color3.fromRGB(255, 255, 255)
txt.Parent = frame
txt.Name = "Heading"
-- Create Button
local button = Instance.new("TextButton")
local url = "test"
button.Font = Enum.Font.Highway
button.BackgroundTransparency = 0.5
button.Parent = frame
button.Size = UDim2.new(1, 0, 0.2, 0)
button.Position = UDim2.new(0, 0, 0, 50)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Name = "GetKey"
button.TextScaled = true
button.Text = "Get Key"
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.MouseButton1Click:Connect(function()
	if setclipboard then
		setclipboard(url)
		button.Text = "Copied!"
		wait(1)
		button.Text = "Copy URL"
	end
end)

local ui = Instance.new("UICorner")
ui.Parent = button
