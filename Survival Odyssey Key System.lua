-- First Gui Below / Loading Screen

-- Services:

local TweenService = game:GetService("TweenService")
local Uis = game:GetService("UserInputService")

-- Loading Ui:
local TweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false)
local Goal = {}
Goal.Size = UDim2.new(0, 518, 0, 258)

-- Instances:

local LoadingKeySystem = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local UICorner = Instance.new("UICorner")
local TextHolder = Instance.new("Frame")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local TextLabel = Instance.new("TextLabel")

--Properties:

LoadingKeySystem.Name = "Loading Key System"
LoadingKeySystem.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
LoadingKeySystem.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = LoadingKeySystem
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(0, 47, 255)
Main.BackgroundTransparency = 0.300
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(0, 0, 0, 0)

local LoadingUi = TweenService:Create(Main, TweenInfo, Goal)
LoadingUi:Play()
LoadingUi.Completed:Wait()

UIAspectRatioConstraint.Parent = Main
UIAspectRatioConstraint.AspectRatio = 2.008

UICorner.Parent = Main

TextHolder.Name = "TextHolder"
TextHolder.Parent = Main
TextHolder.AnchorPoint = Vector2.new(0.5, 0.5)
TextHolder.BackgroundColor3 = Color3.fromRGB(0, 47, 255)
TextHolder.BackgroundTransparency = 1.000
TextHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextHolder.BorderSizePixel = 0
TextHolder.Position = UDim2.new(0.5, 0, 0.5, 0)
TextHolder.Size = UDim2.new(0.799227774, 0, 0.596899211, 0)

UIAspectRatioConstraint_2.Parent = TextHolder
UIAspectRatioConstraint_2.AspectRatio = 2.688

TextLabel.Parent = TextHolder
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.497584492, 0, 0.5, 0)
TextLabel.Size = UDim2.new(0, 361, 0, 50)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

for i = 1, 2 do
	TextLabel.Text = "Loading Key System"
	task.wait(0.5)
	TextLabel.Text = "Loading Key System ."
	task.wait(0.5)
	TextLabel.Text = "Loading Key System . ."
	task.wait(0.5)
	TextLabel.Text = "Loading Key System . . ."
	task.wait(0.5)
end

LoadingKeySystem:Destroy()

-- Second Gui Below / Key System Below

local Lib = {}

function Lib:Init(Settings)
	for name, value in pairs({
		["Callback"] = function(...) return true end,
		["DiscordLink"] = "https://google.com",
		}) do
		if Settings[name] == nil and typeof(Settings[name]) ~= typeof(value) then
			Settings[name] = value
		end
	end
	
	-- Key System Variable
	_VortexHubKey568910 = false
	
	-- Instances:

	local VortexHubKeySystem = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	local UICorner = Instance.new("UICorner")
	local FirstLayer = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
	local KeyInput = Instance.new("TextBox")
	local UICorner_3 = Instance.new("UICorner")
	local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
	local CheckKey = Instance.new("Frame")
	local UICorner_4 = Instance.new("UICorner")
	local Button = Instance.new("TextButton")
	local UICorner_5 = Instance.new("UICorner")
	local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
	local GetDiscordLink = Instance.new("Frame")
	local UICorner_6 = Instance.new("UICorner")
	local Button_2 = Instance.new("TextButton")
	local UICorner_7 = Instance.new("UICorner")
	local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
	local Info = Instance.new("TextLabel")
	local UICorner_8 = Instance.new("UICorner")
	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
	local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")

	--Properties:

	VortexHubKeySystem.Name = "Vortex Hub Key System"
	VortexHubKeySystem.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	VortexHubKeySystem.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Main.Name = "Main"
	Main.Parent = VortexHubKeySystem
	Main.AnchorPoint = Vector2.new(0.5, 0.5)
	Main.BackgroundColor3 = Color3.fromRGB(0, 47, 255)
	Main.BackgroundTransparency = 0.500
	Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Main.BorderSizePixel = 0
	Main.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main.Size = UDim2.new(0, 518, 0, 258)

	UIAspectRatioConstraint.Parent = Main
	UIAspectRatioConstraint.AspectRatio = 2.008

	UICorner.Parent = Main

	FirstLayer.Name = "FirstLayer"
	FirstLayer.Parent = Main
	FirstLayer.AnchorPoint = Vector2.new(0.5, 0.5)
	FirstLayer.BackgroundColor3 = Color3.fromRGB(0, 47, 255)
	FirstLayer.BackgroundTransparency = 0.800
	FirstLayer.BorderColor3 = Color3.fromRGB(0, 0, 0)
	FirstLayer.BorderSizePixel = 0
	FirstLayer.Position = UDim2.new(0.5, 0, 0.5, 0)
	FirstLayer.Size = UDim2.new(0, 518, 0, 258)

	UICorner_2.Parent = FirstLayer

	UIAspectRatioConstraint_2.Parent = FirstLayer
	UIAspectRatioConstraint_2.AspectRatio = 2.008

	KeyInput.Name = "KeyInput"
	KeyInput.Parent = Main
	KeyInput.BackgroundColor3 = Color3.fromRGB(0, 195, 254)
	KeyInput.BackgroundTransparency = 0.300
	KeyInput.BorderColor3 = Color3.fromRGB(0, 0, 0)
	KeyInput.BorderSizePixel = 0
	KeyInput.Position = UDim2.new(0.142857149, 0, 0.403100729, 0)
	KeyInput.Size = UDim2.new(0, 387, 0, 48)
	KeyInput.Font = Enum.Font.SourceSansBold
	KeyInput.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
	KeyInput.PlaceholderText = "Input key here . . ."
	KeyInput.Text = ""
	KeyInput.TextColor3 = Color3.fromRGB(0, 0, 0)
	KeyInput.TextSize = 25.000
	KeyInput.TextWrapped = true

	UICorner_3.Parent = KeyInput

	UIAspectRatioConstraint_3.Parent = KeyInput
	UIAspectRatioConstraint_3.AspectRatio = 8.280

	CheckKey.Name = "CheckKey"
	CheckKey.Parent = Main
	CheckKey.BackgroundColor3 = Color3.fromRGB(0, 157, 255)
	CheckKey.BackgroundTransparency = 0.150
	CheckKey.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CheckKey.BorderSizePixel = 0
	CheckKey.Position = UDim2.new(0.546332061, 0, 0.658914745, 0)
	CheckKey.Size = UDim2.new(0.34362933, 0, 0.213178292, 0)

	UICorner_4.Parent = CheckKey

	Button.Name = "Button"
	Button.Parent = CheckKey
	Button.AnchorPoint = Vector2.new(0.5, 0.5)
	Button.BackgroundColor3 = Color3.fromRGB(0, 157, 255)
	Button.BackgroundTransparency = 0.500
	Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Button.BorderSizePixel = 0
	Button.Position = UDim2.new(0.5, 0, 0.4909091, 0)
	Button.Size = UDim2.new(1, 0, 0.945454538, 0)
	Button.Font = Enum.Font.SourceSansBold
	Button.Text = "Check Key"
	Button.TextColor3 = Color3.fromRGB(0, 0, 0)
	Button.TextSize = 25.000

	UICorner_5.Parent = Button

	UIAspectRatioConstraint_4.Parent = Button
	UIAspectRatioConstraint_4.AspectRatio = 3.423

	GetDiscordLink.Name = "GetDiscordLink"
	GetDiscordLink.Parent = Main
	GetDiscordLink.BackgroundColor3 = Color3.fromRGB(0, 157, 255)
	GetDiscordLink.BackgroundTransparency = 0.150
	GetDiscordLink.BorderColor3 = Color3.fromRGB(0, 0, 0)
	GetDiscordLink.BorderSizePixel = 0
	GetDiscordLink.Position = UDim2.new(0.142857149, 0, 0.658914745, 0)
	GetDiscordLink.Size = UDim2.new(0, 178, 0, 55)

	UICorner_6.Parent = GetDiscordLink

	Button_2.Name = "Button"
	Button_2.Parent = GetDiscordLink
	Button_2.AnchorPoint = Vector2.new(0.5, 0.5)
	Button_2.BackgroundColor3 = Color3.fromRGB(0, 157, 255)
	Button_2.BackgroundTransparency = 0.500
	Button_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Button_2.BorderSizePixel = 0
	Button_2.Position = UDim2.new(0.5, 0, 0.4909091, 0)
	Button_2.Size = UDim2.new(1, 0, 0.945454538, 0)
	Button_2.Font = Enum.Font.SourceSansBold
	Button_2.Text = "Copy Discord Link"
	Button_2.TextColor3 = Color3.fromRGB(0, 0, 0)
	Button_2.TextSize = 25.000

	UICorner_7.Parent = Button_2

	UIAspectRatioConstraint_5.Parent = Button_2
	UIAspectRatioConstraint_5.AspectRatio = 3.423

	Info.Name = "Info"
	Info.Parent = Main
	Info.AnchorPoint = Vector2.new(0.5, 0.5)
	Info.BackgroundColor3 = Color3.fromRGB(0, 115, 255)
	Info.BackgroundTransparency = 0.400
	Info.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Info.BorderSizePixel = 0
	Info.Position = UDim2.new(0.51544404, 0, 0.201550394, 0)
	Info.Size = UDim2.new(0.932432413, 0, 0.27519381, 0)
	Info.Font = Enum.Font.SourceSansBold
	Info.Text = "Unlock Full Access Today! Purchase a license key via the Discord link below and start using the script instantly."
	Info.TextColor3 = Color3.fromRGB(0, 0, 0)
	Info.TextScaled = true
	Info.TextSize = 19.000
	Info.TextWrapped = true

	UICorner_8.Parent = Info

	UITextSizeConstraint.Parent = Info
	UITextSizeConstraint.MaxTextSize = 19

	UIAspectRatioConstraint_6.Parent = Info
	UIAspectRatioConstraint_6.AspectRatio = 6.803
	
	local Conn1 = Button.MouseButton1Click:Connect(function()
		local key = KeyInput.Text
		local Success = Settings.Callback(key)
		
		if success then
			_VortexHubKey568910 = true
		else
			KeyInput.Text = "Invalid Key"
			_VortexHubKey568910 = false
			
		end
	end)
	
	local Conn2 = GetDiscordLink.Button.MouseButton1Click:Connect(function()
		if setclipboard then
			setclipboard(Settings.DiscordLink)
		end
	end)

	if readfile and isfile and isfile("Vortex Hub Premium License Key.txt") then
		local CurrentKeyInput = readfile("Vortex Hub Premium License Key.txt")
		local firstline = CurrentKeyInput:match("([^\n]+)")  -- gets only the first line
		local success, response = pcall(Settings.Callback, firstline)

		if success and response then
			_VortexHubKey568910 = true
			print(response)
		else
			_VortexHubKey568910 = false
		end
	end	
	
	if _VortexHubKey568910 then
		if VortexHubKeySystem then
			VortexHubKeySystem:Destroy()
			if Conn1 then
				Conn1:Disconnect()
			end
			if Conn2 then
				Conn2:Disconnect()
			end	
		end
		return true
	else
		repeat task.wait() until _VortexHubKey568910 == true
		if _VortexHubKey568910 and writefile then
			writefile("Vortex Hub Premium License Key.txt", KeyInput.Text .. "  \n DO NOT SHARE THIS KEY TO ANYBODY AS IT WILL DETECT IT AUTOMATICALLY AND BLOCK THE LICENSE FROM BEING USED AGAIN")
		end
		VortexHubKeySystem:Destroy()
		Conn1:Disconnect()
		Conn2:Disconnect()
	end
	return _VortexHubKey568910
end

getgenv().Lib = Lib
return Lib
