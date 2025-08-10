-- LocalScript (client-side) contoh: ubah WalkSpeed ketika menekan tombol K
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local normalSpeed = 16
local fastSpeed = 32

humanoid.WalkSpeed = normalSpeed

local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.K then
        humanoid.WalkSpeed = fastSpeed
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.K then
        humanoid.WalkSpeed = normalSpeed
    end
end)
