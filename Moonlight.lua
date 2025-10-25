-- // Kentz Scripts Progress GUI (Extra Slow Version)
-- Made for mobile executors (moveable, extra slow counter, cool design)

-- Remove existing GUI if re-executed
if game.CoreGui:FindFirstChild("KentzScriptsGUI") then
	game.CoreGui.KentzScriptsGUI:Destroy()
end

-- Main GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "KentzScriptsGUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = game.CoreGui

-- Main Frame
local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 270, 0, 150)
MainFrame.Position = UDim2.new(0.35, 0, 0.3, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Parent = ScreenGui

-- UI styling
local UICorner = Instance.new("UICorner", MainFrame)
UICorner.CornerRadius = UDim.new(0, 15)

local UIStroke = Instance.new("UIStroke", MainFrame)
UIStroke.Thickness = 2
UIStroke.Color = Color3.fromRGB(0, 170, 255)

-- Title
local Title = Instance.new("TextLabel")
Title.Parent = MainFrame
Title.Text = "Kentz Scripts"
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.fromRGB(0, 200, 255)
Title.TextScaled = true
Title.Font = Enum.Font.GothamBold

-- Progress Background
local ProgressBG = Instance.new("Frame")
ProgressBG.Parent = MainFrame
ProgressBG.Size = UDim2.new(0.8, 0, 0, 20)
ProgressBG.Position = UDim2.new(0.1, 0, 0.55, 0)
ProgressBG.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
ProgressBG.BorderSizePixel = 0

local UICorner2 = Instance.new("UICorner", ProgressBG)
UICorner2.CornerRadius = UDim.new(0, 10)

-- Progress Bar
local ProgressBar = Instance.new("Frame")
ProgressBar.Parent = ProgressBG
ProgressBar.Size = UDim2.new(0, 0, 1, 0)
ProgressBar.BackgroundColor3 = Color3.fromRGB(0, 200, 255)
ProgressBar.BorderSizePixel = 0

local UICorner3 = Instance.new("UICorner", ProgressBar)
UICorner3.CornerRadius = UDim.new(0, 10)

-- Percentage Label
local Percent = Instance.new("TextLabel")
Percent.Parent = MainFrame
Percent.Text = "0%"
Percent.Position = UDim2.new(0, 0, 0.75, 0)
Percent.Size = UDim2.new(1, 0, 0, 30)
Percent.BackgroundTransparency = 1
Percent.TextColor3 = Color3.fromRGB(255, 255, 255)
Percent.TextScaled = true
Percent.Font = Enum.Font.GothamBold

-- Gradient Effect
local UIGradient = Instance.new("UIGradient")
UIGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(0,170,255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(0,255,200))
}
UIGradient.Parent = ProgressBar

-- Animate Progress (Extra Slow)
task.spawn(function()
	for i = 1, 100 do
		Percent.Text = i.."%"
		ProgressBar:TweenSize(
			UDim2.new(i/100, 0, 1, 0),
			Enum.EasingDirection.Out,
			Enum.EasingStyle.Linear,
			1.5 -- smooth animation for each step
		)
		task.wait(1.5) -- super slow progress (around 2.5 minutes total)
	end
	Percent.Text = "Complete!"
	ProgressBar.BackgroundColor3 = Color3.fromRGB(0, 255, 100)
end)
