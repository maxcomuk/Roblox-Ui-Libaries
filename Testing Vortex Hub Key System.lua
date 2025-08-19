local LoadingScreenUI = {}

local TweenService = game:GetService("TweenService")

function LoadingScreenUI:Load()
	local LoadingKeySystem = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	local UICorner = Instance.new("UICorner")
	local UIStroke = Instance.new("UIStroke")
	local TextHolder = Instance.new("Frame")
	local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
	local TextLabel = Instance.new("TextLabel")
	local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
	local ImageLabel = Instance.new("ImageLabel")
	local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")

	LoadingKeySystem.Name = "Loading Key System"
	LoadingKeySystem.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	LoadingKeySystem.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Main.Name = "Main"
	Main.Parent = LoadingKeySystem
	Main.AnchorPoint = Vector2.new(0.5, 0.5)
	Main.BackgroundColor3 = Color3.new(0, 0.184314, 1)
	Main.BackgroundTransparency = 0.30000001192092896
	Main.BorderColor3 = Color3.new(0, 0, 0)
	Main.BorderSizePixel = 0
	Main.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main.Size = UDim2.new(0, 0, 0, 0)

	UIAspectRatioConstraint.Parent = Main
	UIAspectRatioConstraint.AspectRatio = 2.007751941680908

	UICorner.Parent = Main

	UIStroke.Color = Color3.new(0, 0.317647, 1)
	UIStroke.Thickness = 4
	UIStroke.Parent = Main

	TextHolder.Name = "TextHolder"
	TextHolder.Parent = Main
	TextHolder.AnchorPoint = Vector2.new(0.5, 0.5)
	TextHolder.BackgroundColor3 = Color3.new(0, 0.184314, 1)
	TextHolder.BackgroundTransparency = 1
	TextHolder.BorderColor3 = Color3.new(0, 0, 0)
	TextHolder.BorderSizePixel = 0
	TextHolder.Position = UDim2.new(0.5, 0, 0.5, 0)
	TextHolder.Size = UDim2.new(0.799227774, 0, 0.596899211, 0)

	UIAspectRatioConstraint_2.Parent = TextHolder
	UIAspectRatioConstraint_2.AspectRatio = 2.6883115768432617

	TextLabel.Parent = TextHolder
	TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel.BackgroundColor3 = Color3.new(0, 0.682353, 1)
	TextLabel.BackgroundTransparency = 1
	TextLabel.BorderColor3 = Color3.new(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0.5, 0, 0.25, 0)
	TextLabel.Size = UDim2.new(0, 361, 0, 50)
	TextLabel.Font = Enum.Font.SourceSansBold
	TextLabel.Text = "Key System Loading"
	TextLabel.TextColor3 = Color3.new(0.172549, 1, 1)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14
	TextLabel.TextWrapped = true

	UIAspectRatioConstraint_3.Parent = TextLabel
	UIAspectRatioConstraint_3.AspectRatio = 7.21999979019165

	ImageLabel.Parent = TextHolder
	ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
	ImageLabel.BackgroundTransparency = 1
	ImageLabel.BorderColor3 = Color3.new(0, 0, 0)
	ImageLabel.BorderSizePixel = 0
	ImageLabel.Position = UDim2.new(0.5, 0, 0.800000012, 0)
	ImageLabel.Rotation = 180
	ImageLabel.Size = UDim2.new(0.699999988, 0, 0.699999988, 0)
	ImageLabel.Image = "rbxassetid://80990588449079"

	UIAspectRatioConstraint_4.Parent = ImageLabel
	UIAspectRatioConstraint_4.AspectRatio = 1.0826445817947388
	
	local FadeInfo = TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0)
	local FadeGoal = {}
	FadeGoal.Size = UDim2.new(0.2, 0, 0.2, 0)
	local FadeTween = TweenService:Create(Main, FadeInfo, FadeGoal)

	local LoadingInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, -1, false, 0.1)
	local LoadingGoal = {}
	LoadingGoal.Rotation = (ImageLabel.Rotation + 360)
	local LoadingTween = TweenService:Create(ImageLabel, LoadingInfo, LoadingGoal)
	
	local FinishLoadInfo = TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
	local FinishGoal = {}
	FinishGoal.Size = UDim2.new(0, 0, 0, 0)
	local FinishTween = TweenService:Create(Main, FinishLoadInfo, FinishGoal)
	
	TextLabel.Visible = false
	ImageLabel.Visible = false
	
	FadeTween:Play()
	FadeTween.Completed:Wait()
	
	TextLabel.Visible = true	
	ImageLabel.Visible = true
	
	LoadingTween:Play()
	task.wait(2)
	LoadingTween:Cancel()
	LoadingTween:Destroy()
	
	TextLabel.Visible = false
	ImageLabel.Visible = false
	
	FinishTween:Play()
	FinishTween.Completed:Wait()
	Main:Destroy()
end

LoadingScreenUI:Load()

local Lib = {}

function Lib:Init(Settings)

    -- Configurations
    for name, value in pairs({
        ["Description"] = "Vortex Hub Key System",
        ["DiscordLink"] = "https://discord.gg/ZbgeVWgYPd",
        ["KeyLink"] = "https://google.com",
        ["Callback"] = function(...) return true end,
    }) do
        if Settings[name] == nil and typeof(Settings[name]) ~= typeof(value) then
            Settings[name] = value
        end
    end

    -- Key
    _VortexHubKey = false
    
	-- Instances:
	local VortexHubKeySystem = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Xbutton = Instance.new("ImageButton")
	local UICorner_2 = Instance.new("UICorner")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	local KeyFrame = Instance.new("Frame")
	local KeyInput = Instance.new("TextBox")
	local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
	local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
	local DiscordFrame = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
	local TextButton = Instance.new("TextButton")
	local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
	local GetKeyFrame = Instance.new("Frame")
	local UICorner_4 = Instance.new("UICorner")
	local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
	local TextButton_2 = Instance.new("TextButton")
	local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint")
	local CheckKeyFrame = Instance.new("Frame")
	local UICorner_5 = Instance.new("UICorner")
	local UIAspectRatioConstraint_8 = Instance.new("UIAspectRatioConstraint")
	local TextButton_3 = Instance.new("TextButton")
	local UIAspectRatioConstraint_9 = Instance.new("UIAspectRatioConstraint")
	local Info = Instance.new("Frame")
	local UIGradient = Instance.new("UIGradient")
	local TextLabel = Instance.new("TextLabel")
	local UIAspectRatioConstraint_10 = Instance.new("UIAspectRatioConstraint")
	local UICorner_6 = Instance.new("UICorner")
	local UIAspectRatioConstraint_11 = Instance.new("UIAspectRatioConstraint")
	local UIAspectRatioConstraint_12 = Instance.new("UIAspectRatioConstraint")
	local UIGradient_2 = Instance.new("UIGradient")
	local VortexHubLogo = Instance.new("ImageButton")
	local UICorner_7 = Instance.new("UICorner")
	local UIGradient_3 = Instance.new("UIGradient")
	local UIAspectRatioConstraint_13 = Instance.new("UIAspectRatioConstraint")

	--Properties:
	VortexHubKeySystem.Name = "Vortex Hub Key System"
	VortexHubKeySystem.Parent = (gethui and gethui()) or game:GetService("CoreGui")
	VortexHubKeySystem.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Main.Name = "Main"
	Main.Parent = VortexHubKeySystem
	Main.AnchorPoint = Vector2.new(0.5, 0.5)
	Main.BackgroundColor3 = Color3.fromRGB(1, 26, 255)
	Main.BackgroundTransparency = 0.300
	Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Main.BorderSizePixel = 0
	Main.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main.Size = UDim2.new(0.600000024, 0, 0.600000024, 0)

	UICorner.Parent = Main

	Xbutton.Name = "Xbutton"
	Xbutton.Parent = Main
	Xbutton.AnchorPoint = Vector2.new(0.5, 0.5)
	Xbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Xbutton.BackgroundTransparency = 1.000
	Xbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Xbutton.BorderSizePixel = 0
	Xbutton.Position = UDim2.new(0.947566986, 0, 0.105343074, 0)
	Xbutton.Size = UDim2.new(0, 62, 0, 57)
	Xbutton.Image = "rbxassetid://5198838744"

	UICorner_2.CornerRadius = UDim.new(0.200000003, 0)
	UICorner_2.Parent = Xbutton

	UIAspectRatioConstraint.Parent = Xbutton

	KeyFrame.Name = "KeyFrame"
	KeyFrame.Parent = Main
	KeyFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	KeyFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	KeyFrame.BackgroundTransparency = 0.450
	KeyFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	KeyFrame.BorderSizePixel = 0
	KeyFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
	KeyFrame.Size = UDim2.new(0.699999988, 0, 0.5, 0)

	KeyInput.Name = "KeyInput"
	KeyInput.Parent = KeyFrame
	KeyInput.AnchorPoint = Vector2.new(0.5, 0.5)
	KeyInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	KeyInput.BackgroundTransparency = 1.000
	KeyInput.BorderColor3 = Color3.fromRGB(0, 0, 0)
	KeyInput.BorderSizePixel = 0
	KeyInput.Position = UDim2.new(0.5, 0, 0.5, 0)
	KeyInput.Size = UDim2.new(1, 0, 1, 0)
	KeyInput.Font = Enum.Font.SourceSansBold
	KeyInput.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
	KeyInput.PlaceholderText = "Input Key"
	KeyInput.Text = ""
	KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
	KeyInput.TextSize = 30.000

	UIAspectRatioConstraint_2.Parent = KeyInput
	UIAspectRatioConstraint_2.AspectRatio = 6.923

	UIAspectRatioConstraint_3.Parent = KeyFrame
	UIAspectRatioConstraint_3.AspectRatio = 6.923

	DiscordFrame.Name = "DiscordFrame"
	DiscordFrame.Parent = Main
	DiscordFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	DiscordFrame.BackgroundColor3 = Color3.fromRGB(0, 17, 94)
	DiscordFrame.BackgroundTransparency = 0.200
	DiscordFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	DiscordFrame.BorderSizePixel = 0
	DiscordFrame.Position = UDim2.new(0.180000007, 0, 0.800000012, 0)
	DiscordFrame.Size = UDim2.new(0.298999995, 0, 0.196999997, 0)

	UICorner_3.Parent = DiscordFrame

	UIAspectRatioConstraint_4.Parent = DiscordFrame
	UIAspectRatioConstraint_4.AspectRatio = 3.046

	TextButton.Parent = DiscordFrame
	TextButton.AnchorPoint = Vector2.new(0.5, 0.5)
	TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton.BackgroundTransparency = 1.000
	TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextButton.BorderSizePixel = 0
	TextButton.Position = UDim2.new(0.5, 0, 0.5, 0)
	TextButton.Size = UDim2.new(1, 0, 1, 0)
	TextButton.Font = Enum.Font.SourceSansBold
	TextButton.Text = "Copy Discord Link"
	TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton.TextSize = 25.000

	UIAspectRatioConstraint_5.Parent = TextButton
	UIAspectRatioConstraint_5.AspectRatio = 3.046

	GetKeyFrame.Name = "GetKeyFrame"
	GetKeyFrame.Parent = Main
	GetKeyFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	GetKeyFrame.BackgroundColor3 = Color3.fromRGB(0, 17, 94)
	GetKeyFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	GetKeyFrame.BorderSizePixel = 0
	GetKeyFrame.Position = UDim2.new(0.498976707, 0, 0.798421323, 0)
	GetKeyFrame.Size = UDim2.new(0.299386024, 0, 0.197328463, 0)

	UICorner_4.Parent = GetKeyFrame

	UIAspectRatioConstraint_6.Parent = GetKeyFrame
	UIAspectRatioConstraint_6.AspectRatio = 3.046

	TextButton_2.Parent = GetKeyFrame
	TextButton_2.AnchorPoint = Vector2.new(0.5, 0.5)
	TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_2.BackgroundTransparency = 1.000
	TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_2.BorderSizePixel = 0
	TextButton_2.Position = UDim2.new(0.5, 0, 0.5, 0)
	TextButton_2.Size = UDim2.new(1, 0, 1, 0)
	TextButton_2.Font = Enum.Font.SourceSansBold
	TextButton_2.Text = "Get Key Link"
	TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_2.TextSize = 25.000

	UIAspectRatioConstraint_7.Parent = TextButton_2
	UIAspectRatioConstraint_7.AspectRatio = 3.046

	CheckKeyFrame.Name = "CheckKeyFrame"
	CheckKeyFrame.Parent = Main
	CheckKeyFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	CheckKeyFrame.BackgroundColor3 = Color3.fromRGB(0, 17, 94)
	CheckKeyFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CheckKeyFrame.BorderSizePixel = 0
	CheckKeyFrame.Position = UDim2.new(0.811971188, 0, 0.798421323, 0)
	CheckKeyFrame.Size = UDim2.new(0.299386024, 0, 0.197328463, 0)

	UICorner_5.Parent = CheckKeyFrame

	UIAspectRatioConstraint_8.Parent = CheckKeyFrame
	UIAspectRatioConstraint_8.AspectRatio = 3.046

	TextButton_3.Parent = CheckKeyFrame
	TextButton_3.AnchorPoint = Vector2.new(0.5, 0.5)
	TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_3.BackgroundTransparency = 1.000
	TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_3.BorderSizePixel = 0
	TextButton_3.Position = UDim2.new(0.5, 0, 0.5, 0)
	TextButton_3.Size = UDim2.new(1, 0, 1, 0)
	TextButton_3.Font = Enum.Font.SourceSansBold
	TextButton_3.Text = "Check Key"
	TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_3.TextSize = 25.000
	TextButton_3.TextWrapped = true

	UIAspectRatioConstraint_9.Parent = TextButton_3
	UIAspectRatioConstraint_9.AspectRatio = 3.046

	Info.Name = "Info"
	Info.Parent = Main
	Info.AnchorPoint = Vector2.new(0.5, 0.5)
	Info.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
	Info.BackgroundTransparency = 0.850
	Info.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Info.BorderSizePixel = 0
	Info.Position = UDim2.new(0.494707823, 0, 0.204553738, 0)
	Info.Size = UDim2.new(0.786186934, 0, 0.303035825, 0)

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(85, 0, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(85, 0, 255))}
	UIGradient.Parent = Info

	TextLabel.Parent = Info
	TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.Font = Enum.Font.SourceSansBold
	TextLabel.Text = Settings["Description"]
	TextLabel.TextColor3 = Color3.fromRGB(156, 156, 156)
	TextLabel.TextSize = 20.000
	TextLabel.TextWrapped = true

	UIAspectRatioConstraint_10.Parent = TextLabel
	UIAspectRatioConstraint_10.AspectRatio = 4.733

	UICorner_6.Parent = Info

	UIAspectRatioConstraint_11.Parent = Info
	UIAspectRatioConstraint_11.AspectRatio = 5.209

	UIAspectRatioConstraint_12.Parent = Main
	UIAspectRatioConstraint_12.AspectRatio = 2.008

	UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(30, 0, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(30, 0, 255))}
	UIGradient_2.Parent = Main

	VortexHubLogo.Name = "VortexHubLogo"
	VortexHubLogo.Parent = VortexHubKeySystem
	VortexHubLogo.AnchorPoint = Vector2.new(0.5, 0.5)
	VortexHubLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	VortexHubLogo.BackgroundTransparency = 1.000
	VortexHubLogo.BorderColor3 = Color3.fromRGB(0, 0, 0)
	VortexHubLogo.BorderSizePixel = 0
	VortexHubLogo.Position = UDim2.new(0.5, 0, 0.00999999978, 0)
	VortexHubLogo.Size = UDim2.new(0.1, 0, 0.1, 0)
	VortexHubLogo.Visible = false
	VortexHubLogo.Image = "rbxassetid://75647520461048"

	UICorner_7.CornerRadius = UDim.new(0.200000003, 0)
	UICorner_7.Parent = VortexHubLogo

	UIGradient_3.Parent = VortexHubLogo

	UIAspectRatioConstraint_13.Parent = VortexHubLogo

    local conn1 = nil
    local conn2 = nil
    local conn3 = nil
    local conn4 = nil
    local conn5 = nil
    local conn6 = nil
    local conn7 = nil
	local conn8 = nil

	local function MakeDraggable()
		local script = Instance.new('LocalScript', Main)

		local Mainui = script.Parent
		local Xbutton = script.Parent:FindFirstChild("Xbutton")
		local Logo = Mainui.Parent:FindFirstChild("VortexHubLogo")

		local Player = game:GetService("Players").LocalPlayer
		local Mouse = Player:GetMouse()
		local TweenService = game:GetService("TweenService")
		local Uis = game:GetService("UserInputService")

		local dragging
		local draginput
		local dragstart
		local startpos

		local function update(input)
			local delta = input.Position - dragstart
			Mainui.Position = UDim2.new(startpos.X.Scale, startpos.X.Offset + delta.X, startpos.Y.Scale, startpos.Y.Offset + delta.Y)
		end

		conn1 = Mainui.InputBegan:Connect(function(Input, gpe)
			if Input.UserInputType == Enum.UserInputType.MouseButton1 then
				dragging = true
				dragstart = Input.Position
				startpos = Mainui.Position

				Input.Changed:Connect(function()
					if Input.UserInputState == Enum.UserInputState.End then
						dragging = false	
					end
				end)
			end
		end)

		conn2 = Mainui.InputChanged:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseMovement then
				draginput = Input
			end
		end)

		conn3 = Uis.InputChanged:Connect(function(Input)
			if Input == draginput and dragging then
				update(Input)
			end
		end)

		conn4 = Xbutton.MouseButton1Click:Connect(function()
			Mainui.Visible = false
			Logo.Visible = true
		end)

		conn5 = Logo.MouseButton1Click:Connect(function()
			Logo.Visible = false
			Mainui.Visible = true
		end)
	end
	coroutine.wrap(MakeDraggable)()

    conn6 = TextButton_3.MouseButton1Click:Connect(function()
        local Key = KeyInput.Text
        local Success = Settings.Callback(Key)

        if Success then
            _VortexHubKey = true
        else
            KeyInput.Text = "Invalid Key"
            _VortexHubKey = false
        end
    end)

    conn7 = TextButton.MouseButton1Click:Connect(function()
        if setclipboard then
            setclipboard(Settings.DiscordLink)
        end
    end)

	conn8 = TextButton_2.MouseButton1Click:Connect(function()
		if setclipboard then
			setclipboard(Settings.KeyLink)
		end
	end)	

    if readfile and isfile and isfile("Vortex Hub Key System #1.txt") then
        local CurrentKeyinput = readfile("Vortex Hub Key System #1.txt")
        local Success = Settings.Callback(CurrentKeyinput)

        if Success then
            _VortexHubKey = true

            if VortexHubKeySystem and VortexHubLogo then
                if conn1 then conn1:Disconnect() end
                if conn2 then conn2:Disconnect() end
                if conn3 then conn3:Disconnect() end
                if conn4 then conn4:Disconnect() end
                if conn5 then conn5:Disconnect() end
                if conn6 then conn6:Disconnect() end
                if conn7 then conn7:Disconnect() end
				if conn8 then conn8:Disconnect() end
                VortexHubKeySystem:Destroy()
				VortexHubLogo:Destroy()
            end
		else
			_VortexHubKey = false
		end
		return true
	end

	if _VortexHubKey then
		if VortexHubKeySystem and VortexHubLogo then
            if conn1 then conn1:Disconnect() end
            if conn2 then conn2:Disconnect() end
            if conn3 then conn3:Disconnect() end
            if conn4 then conn4:Disconnect() end
            if conn5 then conn5:Disconnect() end
            if conn6 then conn6:Disconnect() end
        	if conn7 then conn7:Disconnect() end
			if conn8 then conn8:Disconnect() end
            VortexHubKeySystem:Destroy()
			VortexHubLogo:Destroy()
		end
	else
		repeat task.wait() until _VortexHubKey == true
		if _VortexHubKey and writefile then
			writefile("Vortex Hub Key System #1.txt", KeyInput.Text)
		end
		if VortexHubKeySystem and VortexHubLogo then
            if conn1 then conn1:Disconnect() end
            if conn2 then conn2:Disconnect() end
            if conn3 then conn3:Disconnect() end
            if conn4 then conn4:Disconnect() end
            if conn5 then conn5:Disconnect() end
            if conn6 then conn6:Disconnect() end
        	if conn7 then conn7:Disconnect() end
			if conn8 then conn8:Disconnect() end
            VortexHubKeySystem:Destroy()
			VortexHubLogo:Destroy()
		end
		return _VortexHubKey568910
    end
end

getgenv().Lib = Lib
return Lib
