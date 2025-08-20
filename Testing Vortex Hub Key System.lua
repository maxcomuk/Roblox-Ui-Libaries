local LoadingLib = {}

local MainLoadingScreenGui = nil
local LoadingFinished = false

function LoadingLib:Load()
	-- Instances:
	MainLoadingScreenGui = Instance.new("ScreenGui")
	local LoadingUi = Instance.new("ImageLabel")
	local ImageLabel = Instance.new("ImageLabel")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	local LoadingText = Instance.new("TextLabel")

	--Properties:
	MainLoadingScreenGui.Parent = (gethui and gethui()) or game:GetService("CoreGui")
	MainLoadingScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	LoadingUi.Name = "LoadingUi"
	LoadingUi.Parent = MainLoadingScreenGui
	LoadingUi.AnchorPoint = Vector2.new(0.5, 0.5)
	LoadingUi.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LoadingUi.BackgroundTransparency = 1.000
	LoadingUi.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LoadingUi.BorderSizePixel = 0
	LoadingUi.Position = UDim2.new(0.5, 0, 0.5, 0)
	LoadingUi.Size = UDim2.new(0, 600, 0, 400)
	LoadingUi.Image = "rbxassetid://129471211925554"
	LoadingUi.ScaleType = Enum.ScaleType.Fit

	ImageLabel.Parent = LoadingUi
	ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.BackgroundTransparency = 1.000
	ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageLabel.BorderSizePixel = 0
	ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
	ImageLabel.Rotation = 180.000
	ImageLabel.Size = UDim2.new(0, 179, 0, 178)
	ImageLabel.Image = "rbxassetid://92506421413143"
	ImageLabel.ImageTransparency = 0.410

	UIAspectRatioConstraint.Parent = LoadingUi
	UIAspectRatioConstraint.AspectRatio = 1.500

	LoadingText.Name = "LoadingText"
	LoadingText.Parent = LoadingUi
	LoadingText.AnchorPoint = Vector2.new(0.5, 0.5)
	LoadingText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LoadingText.BackgroundTransparency = 1.000
	LoadingText.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LoadingText.BorderSizePixel = 0
	LoadingText.Position = UDim2.new(0.512499988, 0, 0.785000026, 0)
	LoadingText.Size = UDim2.new(0, 365, 0, 50)
	LoadingText.Font = Enum.Font.SourceSans
	LoadingText.Text = "Loading . . ."
	LoadingText.TextColor3 = Color3.fromRGB(0, 122, 252)
	LoadingText.TextScaled = true
	LoadingText.TextSize = 14.000
	LoadingText.TextWrapped = true

	local function LoadUi()
		local Mainui = MainLoadingScreenGui
		local LoadingCircle = ImageLabel
		local Text = LoadingText

		local TweenService = game:GetService("TweenService")

		local function RotateCircle()
			local info = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 2, false, 0)
			local goal = {}
			goal.Rotation = LoadingCircle.Rotation + 1080

			local Tween = TweenService:Create(LoadingCircle, info, goal)
			Tween:Play()
			Tween.Completed:Connect(function()
				MainLoadingScreenGui:Destroy()
				LoadingFinished = true
			end)
		end

		task.spawn(RotateCircle)

		for i = 1, 4 do
			pcall(function()
				Text.Text = "Loading"
				task.wait(0.333)
				Text.Text = "Loading ."
				task.wait(0.333)
				Text.Text = "Loading . ."
				task.wait(0.333)
				Text.Text = "Loading . . ."
				task.wait(0.333)
			end)
		end
	end
	coroutine.wrap(LoadUi)()
end

LoadingLib:Load()

repeat task.wait() until LoadingFinished

local Lib = {}

function Lib:Init(Settings)
	for name, value in pairs({
		["KeyLink"] = "https://google.com",
		["Callback"] = function(...) return true end}) do
		if Settings[name] == nil and typeof(Settings[name]) ~= typeof(value) then
			Settings[name] = value
		end
	end

	-- Ui Virtual Key
	_VortexHubKey = false
	
	-- Instances:
	local VortexHubKeySystem = Instance.new("ScreenGui")
	local ImageLabel = Instance.new("ImageLabel")
	local KeyInput = Instance.new("TextBox")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	local CheckKeyFrame = Instance.new("Frame")
	local CheckKey = Instance.new("TextButton")
	local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
	local GetKeyFrame = Instance.new("Frame")
	local GetKey = Instance.new("TextButton")
	local CloseButton = Instance.new("TextButton")
	local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")

	--Properties:
	VortexHubKeySystem.Name = "Vortex Hub Key System"
	VortexHubKeySystem.Parent = (gethui and gethui()) or game:GetService("CoreGui")
	VortexHubKeySystem.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	ImageLabel.Parent = VortexHubKeySystem
	ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.BackgroundTransparency = 1.000
	ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageLabel.BorderSizePixel = 0
	ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
	ImageLabel.Size = UDim2.new(0.7, 0, 0.7, 0)
	ImageLabel.Image = "rbxassetid://124981722242022"
	ImageLabel.ScaleType = Enum.ScaleType.Fit

	KeyInput.Name = "KeyInput"
	KeyInput.Parent = ImageLabel
	KeyInput.AnchorPoint = Vector2.new(0.5, 0.5)
	KeyInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	KeyInput.BackgroundTransparency = 1.000
	KeyInput.BorderColor3 = Color3.fromRGB(0, 0, 0)
	KeyInput.BorderSizePixel = 0
	KeyInput.Position = UDim2.new(0.516135991, 0, 0.613035798, 0)
	KeyInput.Size = UDim2.new(0, 355, 0, 48)
	KeyInput.Font = Enum.Font.SourceSansBold
	KeyInput.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
	KeyInput.PlaceholderText = "Input Key Here"
	KeyInput.Text = ""
	KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
	KeyInput.TextSize = 20.000
	KeyInput.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
	KeyInput.TextWrapped = true

	UIAspectRatioConstraint.Parent = KeyInput
	UIAspectRatioConstraint.AspectRatio = 7.396

	CheckKeyFrame.Name = "CheckKeyFrame"
	CheckKeyFrame.Parent = ImageLabel
	CheckKeyFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	CheckKeyFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CheckKeyFrame.BackgroundTransparency = 1.000
	CheckKeyFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CheckKeyFrame.BorderSizePixel = 0
	CheckKeyFrame.Position = UDim2.new(0.709999979, 0, 0.790000021, 0)
	CheckKeyFrame.Size = UDim2.new(0, 179, 0, 39)

	CheckKey.Name = "CheckKey"
	CheckKey.Parent = CheckKeyFrame
	CheckKey.AnchorPoint = Vector2.new(0.5, 0.5)
	CheckKey.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CheckKey.BackgroundTransparency = 1.000
	CheckKey.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CheckKey.BorderSizePixel = 0
	CheckKey.Position = UDim2.new(0.5, 0, 0.5, 0)
	CheckKey.Size = UDim2.new(0, 179, 0, 39)
	CheckKey.Font = Enum.Font.SourceSansBold
	CheckKey.Text = "Check Key"
	CheckKey.TextColor3 = Color3.fromRGB(255, 255, 255)
	CheckKey.TextSize = 14.000
	CheckKey.TextWrapped = true

	UIAspectRatioConstraint_2.Parent = CheckKeyFrame
	UIAspectRatioConstraint_2.AspectRatio = 4.590

	GetKeyFrame.Name = "GetKeyFrame"
	GetKeyFrame.Parent = ImageLabel
	GetKeyFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	GetKeyFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	GetKeyFrame.BackgroundTransparency = 1.000
	GetKeyFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	GetKeyFrame.BorderSizePixel = 0
	GetKeyFrame.Position = UDim2.new(0.318201363, 0, 0.780677676, 0)
	GetKeyFrame.Size = UDim2.new(0, 171, 0, 32)

	GetKey.Name = "GetKey"
	GetKey.Parent = GetKeyFrame
	GetKey.AnchorPoint = Vector2.new(0.5, 0.5)
	GetKey.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	GetKey.BackgroundTransparency = 1.000
	GetKey.BorderColor3 = Color3.fromRGB(0, 0, 0)
	GetKey.BorderSizePixel = 0
	GetKey.Position = UDim2.new(0.505847931, 0, 0.640625, 0)
	GetKey.Size = UDim2.new(1, 0, 1, 0)
	GetKey.Font = Enum.Font.SourceSansBold
	GetKey.Text = "Get Key Link"
	GetKey.TextColor3 = Color3.fromRGB(255, 255, 255)
	GetKey.TextSize = 14.000
	GetKey.TextWrapped = true

	CloseButton.Name = "CloseButton"
	CloseButton.Parent = ImageLabel
	CloseButton.AnchorPoint = Vector2.new(0.5, 0.5)
	CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CloseButton.BackgroundTransparency = 1.000
	CloseButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CloseButton.BorderSizePixel = 0
	CloseButton.Position = UDim2.new(0.903614581, 0, 0.143863782, 0)
	CloseButton.Size = UDim2.new(0.0860585347, 0, 0.0822078735, 0)
	CloseButton.Font = Enum.Font.SourceSans
	CloseButton.Text = ""
	CloseButton.TextColor3 = Color3.fromRGB(0, 0, 0)
	CloseButton.TextSize = 14.000

	UIAspectRatioConstraint_3.Parent = ImageLabel
	UIAspectRatioConstraint_3.AspectRatio = 1.365

	local function CloseUiToggle()
		local Gui = VortexHubKeySystem
		local Button = CloseButton

		Button.MouseButton1Click:Connect(function()
			if Gui then
				Gui:Destroy()
			end
		end)
	end
	coroutine.wrap(CloseUiToggle)()

	local conn1 = CheckKey.MouseButton1Click:Connect(function()
		local Key = KeyInput.Text
		local Success = Settings.Callback(Key)

		if Success then
			_VortexHubKey = true
		else
			KeyInput.Text = "Invalid Key"
			_VortexHubKey = false
		end
	end)

	if readfile and isfile and isfile("Vortex Hub Key #1.txt") then
		local Key = readfile("Vortex Hub Key #1.txt")
		local Success = Settings.Callback(Key)

		if Success then
			_VortexHubKey = true

			if VortexHubKeySystem then
				if conn1 then conn1:Disconnect() end
				VortexHubKeySystem:Destroy()
			end
			return true
		else
			_VortexHubKey = false
		end
	end

	if _VortexHubKey then
		if VortexHubKeySystem then
			if conn1 then conn1:Disconnect() end
			VortexHubKeySystem:Destroy()
		end
		return true
	else
		repeat task.wait() until _VortexHubKey == true
		if _VortexHubKey and writefile then
			writefile("Vortex Hub Key #1.txt", KeyInput.Text)
			if conn1 then conn1:Disconnect() end
			VortexHubKeySystem:Destroy()
		end
	end
	return _VortexHubKey
end
getgenv().Lib = Lib
return Lib
