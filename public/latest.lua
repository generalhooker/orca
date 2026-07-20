local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

if getgenv then
    local marker = getgenv()._ORCA_SIMPLE_WINDOW
    if marker then
        if marker.Parent then
            marker:Destroy()
        end
    end
end

local existing = playerGui:FindFirstChild("OrcaSimpleWindow")
if existing then
    existing:Destroy()
end

local gui = Instance.new("ScreenGui")
gui.Name = "OrcaSimpleWindow"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.Parent = playerGui

if getgenv then
    getgenv()._ORCA_SIMPLE_WINDOW = gui
end

local window = Instance.new("Frame")
window.Name = "Window"
window.Size = UDim2.new(0, 420, 0, 260)
window.Position = UDim2.new(0.5, -210, 0.5, -130)
window.AnchorPoint = Vector2.new(0.5, 0.5)
window.BackgroundColor3 = Color3.fromRGB(24, 25, 38)
window.BorderSizePixel = 0
window.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = window

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(114, 92, 255)
stroke.Thickness = 1
stroke.Transparency = 0.15
stroke.Parent = window

local titlebar = Instance.new("Frame")
titlebar.Name = "Titlebar"
titlebar.Size = UDim2.new(1, 0, 0, 48)
titlebar.Position = UDim2.new(0, 0, 0, 0)
titlebar.BackgroundColor3 = Color3.fromRGB(60, 53, 88)
titlebar.BorderSizePixel = 0
titlebar.Parent = window

local titleCorner = Instance.new("UICorner")
titleCorner.CornerRadius = UDim.new(0, 12)
titleCorner.Parent = titlebar

local titleLabel = Instance.new("TextLabel")
titleLabel.Text = "Orca Window"
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextSize = 16
titleLabel.TextColor3 = Color3.fromRGB(245, 245, 245)
titleLabel.BackgroundTransparency = 1
titleLabel.Size = UDim2.new(1, -80, 1, 0)
titleLabel.Position = UDim2.new(0, 14, 0, 0)
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.Parent = titlebar

local closeButton = Instance.new("TextButton")
closeButton.Name = "CloseButton"
closeButton.Text = "×"
closeButton.Font = Enum.Font.GothamBold
closeButton.TextSize = 16
closeButton.TextColor3 = Color3.fromRGB(245, 245, 245)
closeButton.BackgroundColor3 = Color3.fromRGB(114, 92, 255)
closeButton.BorderSizePixel = 0
closeButton.Size = UDim2.new(0, 32, 0, 32)
closeButton.Position = UDim2.new(1, -12, 0.5, -16)
closeButton.AnchorPoint = Vector2.new(1, 0.5)
closeButton.Parent = titlebar

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 8)
closeCorner.Parent = closeButton

closeButton.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

local body = Instance.new("Frame")
body.Name = "Body"
body.Size = UDim2.new(1, -24, 1, -72)
body.Position = UDim2.new(0, 12, 0, 60)
body.BackgroundTransparency = 1
body.Parent = window

local intro = Instance.new("TextLabel")
intro.Text = "Simple window themed by Orca"
intro.Font = Enum.Font.Gotham
intro.TextSize = 16
intro.TextColor3 = Color3.fromRGB(235, 235, 245)
intro.BackgroundTransparency = 1
intro.Size = UDim2.new(1, 0, 0, 24)
intro.Position = UDim2.new(0, 0, 0, 0)
intro.TextXAlignment = Enum.TextXAlignment.Left
intro.Parent = body

local desc = Instance.new("TextLabel")
desc.Text = "This is a lightweight base for your own UI library."
desc.Font = Enum.Font.Gotham
intro.TextSize = 15
desc.TextSize = 14
desc.TextColor3 = Color3.fromRGB(180, 182, 200)
desc.BackgroundTransparency = 1
desc.Size = UDim2.new(1, 0, 0, 24)
desc.Position = UDim2.new(0, 0, 0, 34)
desc.TextXAlignment = Enum.TextXAlignment.Left
desc.Parent = body

local footer = Instance.new("TextLabel")
footer.Text = "Loaded from public/latest.lua"
footer.Font = Enum.Font.Gotham
footer.TextSize = 12
footer.TextColor3 = Color3.fromRGB(132, 137, 170)
footer.BackgroundTransparency = 1
footer.Size = UDim2.new(1, 0, 0, 20)
footer.Position = UDim2.new(0, 0, 1, -24)
footer.AnchorPoint = Vector2.new(0, 1)
footer.TextXAlignment = Enum.TextXAlignment.Left
footer.Parent = body

print("Orca simple window loaded")
