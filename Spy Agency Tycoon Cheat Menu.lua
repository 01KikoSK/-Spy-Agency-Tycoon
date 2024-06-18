-- Create a cheat menu
local cheatMenu = Instance.new("ScreenGui")
cheatMenu.Name = "CheatMenu"
cheatMenu.Parent = game.Players.LocalPlayer.PlayerGui

-- Create a frame for the cheat menu
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0, 50, 0, 50)
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.BackgroundTransparency = 0.5
frame.Parent = cheatMenu

-- Create a title label
local titleLabel = Instance.new("TextLabel")
titleLabel.Text = "Cheat Menu"
titleLabel.Font = Enum.Font.SourceSans
titleLabel.FontSize = Enum.FontSize.Size24
titleLabel.TextColor3 = Color3.new(1, 1, 1)
titleLabel.Parent = frame

-- Create a button for infinite money
local infiniteMoneyButton = Instance.new("TextButton")
infiniteMoneyButton.Text = "Infinite Money"
infiniteMoneyButton.Font = Enum.Font.SourceSans
infiniteMoneyButton.FontSize = Enum.FontSize.Size18
infiniteMoneyButton.TextColor3 = Color3.new(1, 1, 1)
infiniteMoneyButton.BackgroundColor3 = Color3.new(0, 1, 0)
infiniteMoneyButton.Parent = frame

infiniteMoneyButton.MouseButton1Click:Connect(function()
    while true do
        game.Players.LocalPlayer.leaderstats.Money.Value = math.huge
        wait(0.1)
    end
end)

-- Create a button for infinite health
local infiniteHealthButton = Instance.new("TextButton")
infiniteHealthButton.Text = "Infinite Health"
infiniteHealthButton.Font = Enum.Font.SourceSans
infiniteHealthButton.FontSize = Enum.FontSize.Size18
infiniteHealthButton.TextColor3 = Color3.new(1, 1, 1)
infiniteHealthButton.BackgroundColor3 = Color3.new(0, 1, 0)
infiniteHealthButton.Parent = frame

infiniteHealthButton.MouseButton1Click:Connect(function()
    while true do
        game.Players.LocalPlayer.Character.Humanoid.Health = math.huge
        wait(0.1)
    end
end)

-- Create a button to teleport to the agency
local teleportButton = Instance.new("TextButton")
teleportButton.Text = "Teleport to Agency"
teleportButton.Font = Enum.Font.SourceSans
teleportButton.FontSize = Enum.FontSize.Size18
teleportButton.TextColor3 = Color3.new(1, 1, 1)
teleportButton.BackgroundColor3 = Color3.new(0, 1, 0)
teleportButton.Parent = frame

teleportButton.MouseButton1Click:Connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-234, 15, -333)
end)

-- Create a button to close the cheat menu
local closeButton = Instance.new("TextButton")
closeButton.Text = "Close"
closeButton.Font = Enum.Font.SourceSans
closeButton.FontSize = Enum.FontSize.Size18
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.BackgroundColor3 = Color3.new(1, 0, 0)
closeButton.Parent = frame

closeButton.MouseButton1Click:Connect(function()
    cheatMenu:Destroy()
end)