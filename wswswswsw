-- Gui to Lua
-- Version: 3.2

-- Instances:

local Monster = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Execute = Instance.new("TextButton")
local Clear = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local Source = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")

--Properties:

Monster.Name = "Monster"
Monster.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Main.Name = "Main"
Main.Parent = Monster
Main.BackgroundColor3 = Color3.fromRGB(4, 4, 4)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.0358187146, 0, 0.217661694, 0)
Main.Size = UDim2.new(0, 567, 0, 307)

UICorner.Parent = Main

Execute.Name = "Execute"
Execute.Parent = Main
Execute.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Execute.BorderColor3 = Color3.fromRGB(0, 0, 0)
Execute.BorderSizePixel = 0
Execute.Position = UDim2.new(0.0123456791, 0, 0.892508149, 0)
Execute.Size = UDim2.new(0, 40, 0, 23)
Execute.Font = Enum.Font.SourceSansItalic
Execute.Text = "▶"
Execute.TextColor3 = Color3.fromRGB(27, 54, 231)
Execute.TextSize = 27.000

Clear.Name = "Clear"
Clear.Parent = Main
Clear.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Clear.BorderColor3 = Color3.fromRGB(0, 0, 0)
Clear.BorderSizePixel = 0
Clear.Position = UDim2.new(0.121693119, 0, 0.892508149, 0)
Clear.Size = UDim2.new(0, 66, 0, 26)
Clear.Font = Enum.Font.SourceSans
Clear.Text = "⌫"
Clear.TextColor3 = Color3.fromRGB(24, 28, 255)
Clear.TextSize = 39.000

TextLabel.Parent = Clear
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(-0.798777282, 0, -9.8306551, 0)
TextLabel.Size = UDim2.new(0, 89, 0, 24)
TextLabel.Font = Enum.Font.SourceSansItalic
TextLabel.Text = "Monster"
TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel.TextSize = 39.000
TextLabel.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)

Source.Name = "Source"
Source.Parent = Main
Source.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
Source.BorderColor3 = Color3.fromRGB(0, 0, 0)
Source.BorderSizePixel = 0
Source.Position = UDim2.new(0.0109532811, 0, 0.206649929, 0)
Source.Size = UDim2.new(0, 547, 0, 198)
Source.Font = Enum.Font.SourceSans
Source.Text = "print(\"It Test Gui Monster'\")"
Source.TextColor3 = Color3.fromRGB(143, 255, 14)
Source.TextSize = 39.000
Source.TextXAlignment = Enum.TextXAlignment.Left
Source.TextYAlignment = Enum.TextYAlignment.Top

UICorner_2.Parent = Source

-- Scripts:

local function IRGFFI_fake_script() -- Execute.LocalScript 
	local script = Instance.new('LocalScript', Execute)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(script.Parent.Parent.Source.Text)()
	end)
end
coroutine.wrap(IRGFFI_fake_script)()
local function TMSLB_fake_script() -- Clear.LocalScript 
	local script = Instance.new('LocalScript', Clear)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Source.Text = ''
	end)
end
coroutine.wrap(TMSLB_fake_script)()
local function URTBD_fake_script() -- Main.LocalScript 
	local script = Instance.new('LocalScript', Main)

	script.Parent.Active = true
	script.Parent.Draggable = true
end
coroutine.wrap(URTBD_fake_script)()
