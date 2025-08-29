-- Services
local TweenService = game:GetService("TweenService")

local function PlayLoadingScreen()
	-- Instances:
	local LoadingGui = Instance.new("ScreenGui")
	local Background = Instance.new("ImageLabel")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	local LoadingCircle = Instance.new("ImageLabel")
	local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
	local LoadingText = Instance.new("TextLabel")
	local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")

	--Properties:
	LoadingGui.Name = "LoadingGui"
	LoadingGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	LoadingGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Background.Name = "Background"
	Background.Parent = LoadingGui
	Background.AnchorPoint = Vector2.new(0.5, 0.5)
	Background.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Background.BackgroundTransparency = 1.000
	Background.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Background.BorderSizePixel = 0
	Background.Position = UDim2.new(0.5, 0, 0.5, 0)
	Background.Size = UDim2.new(0, 0, 0, 0)
	Background.Image = "rbxassetid://92023378529281"
	Background.ScaleType = Enum.ScaleType.Fit

	UIAspectRatioConstraint.Parent = Background
	UIAspectRatioConstraint.AspectRatio = 1.500

	LoadingCircle.Name = "LoadingCircle"
	LoadingCircle.Parent = Background
	LoadingCircle.AnchorPoint = Vector2.new(0.5, 0.5)
	LoadingCircle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LoadingCircle.BackgroundTransparency = 1.000
	LoadingCircle.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LoadingCircle.BorderSizePixel = 0
	LoadingCircle.Position = UDim2.new(0.246468022, 0, 0.499637932, 0)
	LoadingCircle.Size = UDim2.new(0.183972165, 0, 0.277610213, 0)
	LoadingCircle.Image = "rbxassetid://75604315598837"
	LoadingCircle.Visible = false

	UIAspectRatioConstraint_2.Parent = LoadingCircle
	UIAspectRatioConstraint_2.AspectRatio = 0.994

	LoadingText.Name = "LoadingText"
	LoadingText.Parent = Background
	LoadingText.AnchorPoint = Vector2.new(0.5, 0.5)
	LoadingText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LoadingText.BackgroundTransparency = 1.000
	LoadingText.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LoadingText.BorderSizePixel = 0
	LoadingText.Position = UDim2.new(0.650912166, 0, 0.49402976, 0)
	LoadingText.Size = UDim2.new(0.400000006, 0, 0.200000003, 0)
	LoadingText.Font = Enum.Font.SourceSansBold
	LoadingText.Text = "Loading Key System"
	LoadingText.TextColor3 = Color3.fromRGB(255, 255, 255)
	LoadingText.TextSize = 30.000
	LoadingText.Visible = false
	LoadingText.TextSize = 15

	UIAspectRatioConstraint_3.Parent = LoadingText

	local Info1 = TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0)
	local Goal1 = {}
	Goal1.Size = UDim2.new(0.5, 0, 0.5, 0)
	local Tween1 = TweenService:Create(Background, Info1, Goal1)

	local Info2 = TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true, 0)
	local Goal2 = {}
	Goal2.TextTransparency = 1
	local Tween2 = TweenService:Create(LoadingText, Info2, Goal2)

	local Info3 = TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1, false, 0)
	local Goal3 = {}
	Goal3.Rotation = 360
	local Tween3 = TweenService:Create(LoadingCircle, Info3, Goal3)

	Tween1:Play()
	Tween1.Completed:Wait()

	LoadingCircle.Visible = true
	LoadingText.Visible = true
	
	Tween2:Play()
	Tween3:Play()
	wait(5)
	Tween2:Cancel()
	Tween3:Cancel()

	LoadingCircle.Visible = false	
	LoadingText.Visible = false

    LoadingGui:Destroy()
end

PlayLoadingScreen()

local function Unloadui(KeySystemGui)
	-- Instances:
	local LoadingGui = Instance.new("ScreenGui")
	local Background = Instance.new("ImageLabel")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	local LoadingCircle = Instance.new("ImageLabel")
	local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
	local LoadingText = Instance.new("TextLabel")
	local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")

	--Properties:
	LoadingGui.Name = "LoadingGui"
	LoadingGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	LoadingGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Background.Name = "Background"
	Background.Parent = LoadingGui
	Background.AnchorPoint = Vector2.new(0.5, 0.5)
	Background.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Background.BackgroundTransparency = 1.000
	Background.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Background.BorderSizePixel = 0
	Background.Position = UDim2.new(0.5, 0, 0.5, 0)
	Background.Size = UDim2.new(0.5, 0, 0.5, 0)
	Background.Image = "rbxassetid://92023378529281"
	Background.ScaleType = Enum.ScaleType.Fit

	UIAspectRatioConstraint.Parent = Background
	UIAspectRatioConstraint.AspectRatio = 1.500

	LoadingCircle.Name = "LoadingCircle"
	LoadingCircle.Parent = Background
	LoadingCircle.AnchorPoint = Vector2.new(0.5, 0.5)
	LoadingCircle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LoadingCircle.BackgroundTransparency = 1.000
	LoadingCircle.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LoadingCircle.BorderSizePixel = 0
	LoadingCircle.Position = UDim2.new(0.246468022, 0, 0.499637932, 0)
	LoadingCircle.Size = UDim2.new(0.183972165, 0, 0.277610213, 0)
	LoadingCircle.Image = "rbxassetid://75604315598837"
	LoadingCircle.Visible = true

	UIAspectRatioConstraint_2.Parent = LoadingCircle
	UIAspectRatioConstraint_2.AspectRatio = 0.994

	LoadingText.Name = "LoadingText"
	LoadingText.Parent = Background
	LoadingText.AnchorPoint = Vector2.new(0.5, 0.5)
	LoadingText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LoadingText.BackgroundTransparency = 1.000
	LoadingText.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LoadingText.BorderSizePixel = 0
	LoadingText.Position = UDim2.new(0.650912166, 0, 0.49402976, 0)
	LoadingText.Size = UDim2.new(0.400000006, 0, 0.200000003, 0)
	LoadingText.Font = Enum.Font.SourceSansBold
	LoadingText.Text = "Loading Key System"
	LoadingText.TextColor3 = Color3.fromRGB(255, 255, 255)
	LoadingText.TextSize = 15
	LoadingText.Visible = true

	UIAspectRatioConstraint_3.Parent = LoadingText

    local Info1 = TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1, false, 0)
    local Goal1 = {}
    Goal1.Rotation = 360
    local Tween1 = TweenService:Create(LoadingCircle, Info1, Goal1)
    
    local Info2 = TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingStyle.InOut, -1, true, 0)
    local Goal2 = {}
    Goal2.TextTransparency = 1
    local Tween2 = TweenService:Create(LoadingText, Info2, Goal2)

    local Info3 = TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0)
    local Goal3 = {}
    Goal3.Size = UDim2.new(0, 0, 0, 0)
    local Tween3 = TweenService:Create(Background, Info3, Goal3)

    KeySystemGui:Destroy()
    
    Tween1:Play()
    Tween2:Play()
    wait(5)
    Tween3:Play()
    Tween3.Completed:Wait()
end

local Lib = {}

function Lib:Init(Settings)
    for name, value in pairs({
        ["KeyLink"] = "https://google.com",
        ["Callback"] = function(...) return true end}) do
        if Settings[name] == nil and typeof(Settings[name]) ~= value then
            Settings[name] = value
        end 
    end

    -- Virtual Stored Key
    _VortexHubSpecialKey = false

	-- Instances:
	local KeySystemGui = Instance.new("ScreenGui")
	local ImageLabel = Instance.new("ImageLabel")
	local KeyInput = Instance.new("TextBox")
	local GetKey = Instance.new("TextButton")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	local CheckKey = Instance.new("TextButton")
	local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
	local TextLabel = Instance.new("TextLabel")
	local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")

	--Properties:
	KeySystemGui.Name = "KeySystemGui"
	KeySystemGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	KeySystemGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	ImageLabel.Parent = KeySystemGui
	ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.BackgroundTransparency = 1.000
	ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageLabel.BorderSizePixel = 0
	ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
	ImageLabel.Size = UDim2.new(0.6, 0, 0.6, 0)
	ImageLabel.Image = "rbxassetid://84339546235230"
	ImageLabel.ScaleType = Enum.ScaleType.Fit

	KeyInput.Name = "KeyInput"
	KeyInput.Parent = ImageLabel
	KeyInput.AnchorPoint = Vector2.new(0.5, 0.5)
	KeyInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	KeyInput.BackgroundTransparency = 1.000
	KeyInput.BorderColor3 = Color3.fromRGB(0, 0, 0)
	KeyInput.BorderSizePixel = 0
	KeyInput.Position = UDim2.new(0.507680476, 0, 0.614427865, 0)
	KeyInput.Size = UDim2.new(0.570660532, 0, 0.150248781, 0)
	KeyInput.Font = Enum.Font.SourceSansBold
	KeyInput.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
	KeyInput.PlaceholderText = "Input Key Here"
	KeyInput.Text = ""
	KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
	KeyInput.TextSize = 20
	KeyInput.TextWrapped = true

	GetKey.Name = "GetKey"
	GetKey.Parent = ImageLabel
	GetKey.AnchorPoint = Vector2.new(0.5, 0.5)
	GetKey.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	GetKey.BackgroundTransparency = 1.000
	GetKey.BorderColor3 = Color3.fromRGB(255, 255, 255)
	GetKey.BorderSizePixel = 0
	GetKey.Position = UDim2.new(0.39241302, 0, 0.817003727, 0)
	GetKey.Size = UDim2.new(0.221329063, 0, 0.105427943, 0)
	GetKey.Font = Enum.Font.SourceSansBold
	GetKey.Text = "Get Key Link"
	GetKey.TextColor3 = Color3.fromRGB(255, 255, 255)
	GetKey.TextSize = 15

	UIAspectRatioConstraint.Parent = GetKey
	UIAspectRatioConstraint.AspectRatio = 4.366

	CheckKey.Name = "CheckKey"
	CheckKey.Parent = ImageLabel
	CheckKey.AnchorPoint = Vector2.new(0.5, 0.5)
	CheckKey.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CheckKey.BackgroundTransparency = 1.000
	CheckKey.BorderColor3 = Color3.fromRGB(255, 255, 255)
	CheckKey.BorderSizePixel = 0
	CheckKey.Position = UDim2.new(0.61, 0, 0.820415378, 0)
	CheckKey.Size = UDim2.new(0.226645187, 0, 0.107960224, 0)
	CheckKey.Font = Enum.Font.SourceSansBold
	CheckKey.Text = "Check Key"
	CheckKey.TextColor3 = Color3.fromRGB(255, 255, 255)
	CheckKey.TextSize = 15

	UIAspectRatioConstraint_2.Parent = CheckKey
	UIAspectRatioConstraint_2.AspectRatio = 4.366

	TextLabel.Parent = KeySystemGui
	TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0.504224241, 0, 0.398756266, 0)
	TextLabel.Size = UDim2.new(0.290706605, 0, 0.0676616803, 0)
	TextLabel.Font = Enum.Font.SourceSansBold
	TextLabel.Text = "Vortex Hub Key System"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 30.000
	TextLabel.TextWrapped = true
	TextLabel.TextSize = 20

	UIAspectRatioConstraint_3.Parent = TextLabel
	UIAspectRatioConstraint_3.AspectRatio = 6.958

    local conn1 = GetKey.MouseButton1Click:Connect(function()
        if setclipboard then
            setclipboard(Settings.KeyLink)
        end
    end)

    local conn2 = CheckKey.MouseButton1Click:Connect(function()
        local Key = KeyInput.Text
        local Success = Settings.Callback(Key)

        if Success then
            _VortexHubSpecialKey = true
        else
			KeyInput.Text = "Invalid Key"
            _VortexHubSpecialKey = false
        end
    end)

    if readfile and isfile and isfile("Vortex Hub Key System #1.txt") then
        local Key = readfile("Vortex Hub Key System #1.txt")
        local Success = Settings.Callback(Key)

        if Success then
            _VortexHubSpecialKey = true

            if KeySystemGui then
                if conn1 then conn1:Disconnect() end
                if conn2 then conn2:Disconnect() end
                KeySystemGui:Destroy()
            end
            return true
        else
            _VortexHubSpecialKey = false
        end
    end

    if _VortexHubSpecialKey then
        if KeySystemGui then
            if conn1 then conn1:Disconnect() end
            if conn2 then conn2:Disconnect() end
            KeySystemGui:Destroy()
        end
        return true
    else
        repeat task.wait() until _VortexHubSpecialKey == true
        if _VortexHubSpecialKey and writefile then
            writefile("Vortex Hub Key System #1.txt", KeyInput.Text)
            if conn1 then conn1:Disconnect() end
            if conn2 then conn2:Disconnect() end
            Unloadui(KeySystemGui)
        end
    end
    return _VortexHubSpecialKey
end
getgenv().Lib = KeyLib
return Lib
