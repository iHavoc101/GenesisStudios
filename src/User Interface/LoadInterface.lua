local TweenService = game:GetService("TweenService")

--Instances:
local ScreenGui = Instance.new("ScreenGui")
local Loader = Instance.new("ImageLabel")
local Shadow = Instance.new("ImageLabel")
local Title = Instance.new("TextLabel")
local Progress = Instance.new("Frame")
local Frame2 = Instance.new("Frame")
local Fill2 = Instance.new("ImageLabel")
local UIGradient = Instance.new("UIGradient")
local Square = Instance.new("ImageLabel")
local Shadow_2 = Instance.new("ImageLabel")
local Frame1 = Instance.new("Frame")
local Fill1 = Instance.new("ImageLabel")
local UIGradient_2 = Instance.new("UIGradient")
local RoundFrame = Instance.new("ImageLabel")
local Shadow_3 = Instance.new("ImageLabel")
local Status = Instance.new("TextLabel")

--Properties:
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui

Loader.Name = "Loader"
Loader.Parent = ScreenGui
Loader.AnchorPoint = Vector2.new(0.5, 0.5)
Loader.BackgroundTransparency = 1
Loader.Position = UDim2.new(0.5, 0, 0.5, 0)
Loader.Size = UDim2.new(0, 300, 0, 100)
Loader.Image = "rbxassetid://5554237731"
Loader.ImageColor3 = Color3.fromRGB(30, 30, 30)
Loader.ScaleType = Enum.ScaleType.Slice
Loader.SliceCenter = Rect.new(3, 3, 297, 297)

Shadow.Name = "Shadow"
Shadow.Parent = Loader
Shadow.BackgroundTransparency = 1
Shadow.Position = UDim2.new(0, -15, 0, -15)
Shadow.Size = UDim2.new(1, 30, 1, 30)
Shadow.Image = "rbxassetid://5554236805"
Shadow.ImageColor3 = Color3.fromRGB(30, 30, 30)
Shadow.ScaleType = Enum.ScaleType.Slice
Shadow.SliceCenter = Rect.new(23, 23, 277, 277)

Title.Name = "Title"
Title.Parent = Loader
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 10, 0, 8)
Title.Size = UDim2.new(1, -20, 0, 15)
Title.Font = Enum.Font.Gotham
Title.RichText = true
Title.Text = "Building Genesis Hub <b>1.0</b>"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 14

Progress.Name = "Progress"
Progress.Parent = Loader
Progress.AnchorPoint = Vector2.new(0, 1)
Progress.BackgroundTransparency = 1
Progress.Position = UDim2.new(0, 10, 1, -10)
Progress.Size = UDim2.new(0, 60, 0, 60)
Progress.SizeConstraint = Enum.SizeConstraint.RelativeYY

Frame2.Name = "Frame2"
Frame2.Parent = Progress
Frame2.AnchorPoint = Vector2.new(1, 0)
Frame2.BackgroundTransparency = 1
Frame2.ClipsDescendants = true
Frame2.Position = UDim2.new(1, 0, 0, 0)
Frame2.Size = UDim2.new(0.5, 0, 1, 0)

Fill2.Name = "Fill2"
Fill2.Parent = Frame2
Fill2.BackgroundTransparency = 1
Fill2.Position = UDim2.new(-1, 0, 0, 0)
Fill2.Size = UDim2.new(2, 0, 1, 0)
Fill2.Image = "rbxassetid://3587367081"
Fill2.ImageTransparency = 0.500

UIGradient.Rotation = 180
UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(0.50, 0.00), NumberSequenceKeypoint.new(0.50, 1.00), NumberSequenceKeypoint.new(1.00, 1.00)}
UIGradient.Parent = Fill2

Square.Name = "Square"
Square.Parent = Progress
Square.BackgroundTransparency = 1
Square.Position = UDim2.new(0.5, -15, 0.5, -15)
Square.Size = UDim2.new(0, 30, 0, 30)
Square.SizeConstraint = Enum.SizeConstraint.RelativeXX
Square.Image = "rbxassetid://5554237731"
Square.ImageColor3 = Color3.fromRGB(116, 255, 181)
Square.ScaleType = Enum.ScaleType.Slice
Square.SliceCenter = Rect.new(3, 3, 297, 297)

Shadow_2.Name = "Shadow"
Shadow_2.Parent = Square
Shadow_2.BackgroundTransparency = 1
Shadow_2.Position = UDim2.new(0, -15, 0, -15)
Shadow_2.Size = UDim2.new(1, 30, 1, 30)
Shadow_2.Image = "rbxassetid://5554236805"
Shadow_2.ImageColor3 = Color3.fromRGB(116, 255, 181)
Shadow_2.ScaleType = Enum.ScaleType.Slice
Shadow_2.SliceCenter = Rect.new(23, 23, 277, 277)

Frame1.Name = "Frame1"
Frame1.Parent = Progress
Frame1.BackgroundTransparency = 1
Frame1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame1.BorderSizePixel = 0
Frame1.ClipsDescendants = true
Frame1.Size = UDim2.new(0.5, 0, 1, 0)

Fill1.Name = "Fill1"
Fill1.Parent = Frame1
Fill1.BackgroundTransparency = 1
Fill1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fill1.BorderSizePixel = 0
Fill1.Size = UDim2.new(2, 0, 1, 0)
Fill1.Image = "rbxassetid://3587367081"
Fill1.ImageTransparency = 0.500

UIGradient_2.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(0.50, 0.00), NumberSequenceKeypoint.new(0.50, 1.00), NumberSequenceKeypoint.new(1.00, 1.00)}
UIGradient_2.Parent = Fill1

RoundFrame.Name = "RoundFrame"
RoundFrame.Parent = Loader
RoundFrame.BackgroundTransparency = 1
RoundFrame.Position = UDim2.new(0, 80, 0, 30)
RoundFrame.Size = UDim2.new(1, -90, 0, 60)
RoundFrame.Image = "rbxassetid://5554237731"
RoundFrame.ImageColor3 = Color3.fromRGB(45, 45, 45)
RoundFrame.ScaleType = Enum.ScaleType.Slice
RoundFrame.SliceCenter = Rect.new(3, 3, 297, 297)

Shadow_3.Name = "Shadow"
Shadow_3.Parent = RoundFrame
Shadow_3.BackgroundTransparency = 1
Shadow_3.Position = UDim2.new(0, -15, 0, -15)
Shadow_3.Size = UDim2.new(1, 30, 1, 30)
Shadow_3.Image = "rbxassetid://5554236805"
Shadow_3.ImageColor3 = Color3.fromRGB(17, 17, 17)
Shadow_3.ScaleType = Enum.ScaleType.Slice
Shadow_3.SliceCenter = Rect.new(23, 23, 277, 277)

Status.Name = "Status"
Status.Parent = RoundFrame
Status.BackgroundTransparency = 1
Status.Size = UDim2.new(1, 0, 1, 0)
Status.Font = Enum.Font.Gotham
Status.Text = "Fetching servers..."
Status.TextColor3 = Color3.fromRGB(255, 255, 255)
Status.TextSize = 14

Fill1.UIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.499, 0), NumberSequenceKeypoint.new(0.5, 0.25), NumberSequenceKeypoint.new(1, 0.25)})
Fill2.UIGradient.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.499, 0), NumberSequenceKeypoint.new(0.5, 0.25), NumberSequenceKeypoint.new(1, 0.25)})
Fill1.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.499, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))})
Fill2.UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.499, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))})

-- // MainModule \\ --
local Module = {}
Module.__index = Module

function Module.SetTitle(Text)
    Text = (Text and tostring(Text)) or ""
    Title.Text = Text
end

function Module.SetStatus(Text)
    Text = (Text and tostring(Text)) or ""
    Status.Text = Text
end

function Module.SetProgress(Value)
    Value = math.clamp(Value, 1, 100)

    local Percent = math.clamp(Value * 3.6, 0, 360)
    local Tween1 = TweenService:Create(Fill1.UIGradient, TweenInfo.new(0.25), {Rotation = math.clamp(Percent, 180, 360)})
    local Tween2 = TweenService:Create(Fill2.UIGradient, TweenInfo.new(0.25), {Rotation = math.clamp(Percent, 0, 180)})
    Tween2:Play()
    
    local Connection = nil
    Connection = Tween2.Completed:Connect(function()
        Connection:Disconnect()
        Tween1:Play()
    end)

    local Color = Color3.fromRGB(150, 150, 150):Lerp(Color3.fromRGB(115, 255, 180), Value / 100)
    Square.ImageColor3 = Color
	Square.Shadow.ImageColor3 = Color
end

return Module
