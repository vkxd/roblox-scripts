-- Patched GrowAGarden.lua
-- Only accepts the key "fucked_by_kad"

-- UI Prompt for Key (simple text box)
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local CoreGui = game:GetService("CoreGui")
local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "fucked_by_kad_ui"

local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 300, 0, 150)
Frame.Position = UDim2.new(0.5, -150, 0.5, -75)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BorderSizePixel = 0

local TextBox = Instance.new("TextBox", Frame)
TextBox.Size = UDim2.new(1, -20, 0, 50)
TextBox.Position = UDim2.new(0, 10, 0, 10)
TextBox.PlaceholderText = "Enter Key"
TextBox.Text = ""
TextBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.ClearTextOnFocus = false

local Submit = Instance.new("TextButton", Frame)
Submit.Size = UDim2.new(1, -20, 0, 40)
Submit.Position = UDim2.new(0, 10, 0, 70)
Submit.Text = "Submit"
Submit.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
Submit.TextColor3 = Color3.fromRGB(255, 255, 255)

local Message = Instance.new("TextLabel", Frame)
Message.Size = UDim2.new(1, -20, 0, 20)
Message.Position = UDim2.new(0, 10, 0, 120)
Message.Text = ""
Message.TextColor3 = Color3.fromRGB(255, 0, 0)
Message.BackgroundTransparency = 1

Submit.MouseButton1Click:Connect(function()
    local key = TextBox.Text
    if key == "fucked_by_kad" then
        Message.Text = "Key accepted. Loading script..."
        wait(1)
        ScreenGui:Destroy()
        -- Original payload execution (dummy for now)
        loadstring("-- original GrowAGarden code here --")()
    else
        Message.Text = "Invalid key. Try again."
    end
end)
