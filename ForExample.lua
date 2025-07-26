local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "TestGui"
screenGui.Parent = playerGui

-- Create Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.5, 0, 0.6, 0)
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
local url = "https://loot-link.com/s?r5nXcdqj"
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
		button.Text = "Get Key"
	end
end)

local ui = Instance.new("UICorner")
ui.Parent = button


local TextLabel = Instance.new("TextLabel")
TextLabel.Size = UDim2.new(1, 0, 0, 30)
TextLabel.Position = UDim2.new(0, 0, 0, 90)
TextLabel.Text = "🔐 Enter Access Key"
TextLabel.TextColor3 = Color3.new(255, 255, 255)
TextLabel.BackgroundTransparency = 1
TextLabel.Font = Enum.Font.Highway
TextLabel.TextSize = 20
TextLabel.Parent = frame

local TextBox = Instance.new("TextBox")
TextBox.PlaceholderText = "Type key here..."
TextBox.Size = UDim2.new(1, -20, 0, 40)
TextBox.Position = UDim2.new(0, 10, 0, 120)
TextBox.Font = Enum.Font.Highway
TextBox.TextSize = 18
TextBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TextBox.TextColor3 = Color3.new(1, 1, 1)
TextBox.Parent = frame

local ui = Instance.new("UICorner")
ui.Parent = TextBox

local Submit = Instance.new("TextButton")
Submit.Size = UDim2.new(1, -20, 0, 20)
Submit.Position = UDim2.new(0, 10, 0, 180)
Submit.Text = "✔️ Submit"
Submit.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
Submit.Font = Enum.Font.Highway
Submit.TextSize = 20
Submit.TextColor3 = Color3.new(1, 1, 1)
Submit.Parent = frame

local ui = Instance.new("UICorner")
ui.Parent = Submit

-- Settings
local permanentKey = "FreeKey2025"
local scriptURL = "https://pastebin.com/raw/YOUR_SCRIPT_ID" -- Replace with your actual script URL

-- Button behavior
Submit.MouseButton1Click:Connect(function()
    if TextBox.Text == permanentKey then
        screenGui:Destroy()
        loadstring(game:HttpGet(scriptURL))()
    else
        TextBox.Text = "❌ Invalid Key. Try again."
    end
end) 
