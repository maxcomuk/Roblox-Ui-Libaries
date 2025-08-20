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
	VortexHubKeySystem.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	VortexHubKeySystem.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	ImageLabel.Parent = VortexHubKeySystem
	ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.BackgroundTransparency = 1.000
	ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageLabel.BorderSizePixel = 0
	ImageLabel.Position = UDim2.new(0.511006355, 0, 0.499089241, 0)
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
		local script = Instance.new('LocalScript', CloseButton)

		local Gui = script.Parent.Parent.Parent
		local Button = script.Parent

		Button.MouseButton1Click:Connect(function()
			if Gui then
				Gui:Destroy()
			end
		end)
	end
	coroutine.wrap(CloseUiToggle)()
end
getgenv.Lib = Lib
return Lib
