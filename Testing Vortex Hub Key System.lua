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
	FadeGoal = {}
	FadeGoal.Size = UDim2.new(0.5, 0, 0.5, 0)
	local FadeTween = TweenService:Create(Main, FadeInfo, FadeGoal)

	local LoadingInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, -1, false, 0.1)
	LoadingGoal = {}
	LoadingGoal.Rotation = (ImageLabel.Rotation + 360)
	local LoadingTween = TweenService:Create(ImageLabel, LoadingInfo, LoadingGoal)
	
	local FinishLoadInfo = TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
	FinishGoal = {}
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
