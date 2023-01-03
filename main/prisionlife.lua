local KeyUI = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local check = Instance.new("TextButton")

--Properties:

KeyUI.Name = "KeyUI"
KeyUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
KeyUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = KeyUI
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame.Position = UDim2.new(0.37118867, 0, 0.313432813, 0)
Frame.Size = UDim2.new(0.257180721, 0, 0.373134315, 0)

Frame_2.Parent = KeyUI
Frame_2.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
Frame_2.BorderColor3 = Color3.fromRGB(60, 60, 60)
Frame_2.Position = UDim2.new(0.3711887, 0, 0.313432813, 0)
Frame_2.Size = UDim2.new(0.257180721, 0, 0.0507462695, 0)

TextLabel.Parent = Frame_2
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0, 0, 0.0784313753, 0)
TextLabel.Size = UDim2.new(1, 0, 0.843137264, 0)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = " Key Required"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_2.Parent = Frame_2
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.0584192425, 0, 1.58823526, 0)
TextLabel_2.Size = UDim2.new(0.883161485, 0, 1.68627453, 0)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "To get a key, join the discord server and copy the key, then paste it here."
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_3.Parent = Frame_2
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(0.05841925, 0, 3.25490236, 0)
TextLabel_3.Size = UDim2.new(0.883161485, 0, 0.843137264, 0)
TextLabel_3.Font = Enum.Font.SourceSansBold
TextLabel_3.Text = "discord.gg/89jkjqnVWK"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

TextBox.Parent = KeyUI
TextBox.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.389748126, 0, 0.543283582, 0)
TextBox.Size = UDim2.new(0.220061868, 0, 0.0338308476, 0)
TextBox.ClearTextOnFocus = false
TextBox.Font = Enum.Font.Code
TextBox.PlaceholderText = "Enter Key Here"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 17.000
TextBox.TextWrapped = true

check.Name = "check"
check.Parent = KeyUI
check.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
check.BorderSizePixel = 0
check.Position = UDim2.new(0.408749431, 0, 0.605970144, 0)
check.Size = UDim2.new(0.182059214, 0, 0.0497512445, 0)
check.Font = Enum.Font.SourceSansBold
check.Text = "Check Key"
check.TextColor3 = Color3.fromRGB(255, 255, 255)
check.TextScaled = true
check.TextSize = 14.000
check.TextWrapped = true

local key = game:HttpGet("https://pastebin.com/raw/E18wMiHc")
check.MouseButton1Click:Connect(function()
	if TextBox.Text == key then
		loadstring(game:HttpGet(("https://pastebin.com/raw/kJQeCm8Z"), true))()
		KeyUI:Destroy()
	else
		print("Incorrect Key!")
	end
end)
