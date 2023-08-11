local Players = game:GetService("Players")
local targetPlayerName = "Inthermals";
local player = game.Players.LocalPlayer
local character = player.Character
local LocalPlr = Players.LocalPlayer
local SelectedPlayer = ""
local TargetPlr = nil
local version = "v1.8";
local gameType = "Beta Universal";
local altself = game.Players.LocalPlayer








-- Ignore GUI



-- Function to create a shadow for the panel




local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "PyramidGUI"
gui.Parent = player.PlayerGui

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 600, 0, 450)
mainFrame.Position = UDim2.new(0.5, -300, 0.5, -225)
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
mainFrame.BorderSizePixel = 1
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Visible = true  -- Default visibility
mainFrame.Parent = gui

local captionBar = Instance.new("Frame")
captionBar.Size = UDim2.new(1, 0, 0, 30)
captionBar.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
captionBar.BorderSizePixel = 1
captionBar.Parent = mainFrame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -30, 1, 0)
title.Position = UDim2.new(0, 10, 0, 0)
title.BackgroundTransparency = 1
title.Text = "Pyramid " .. tostring(version);
title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.SourceSansBold
title.TextSize = 16
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = captionBar

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -30, 0, 0)
closeButton.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextSize = 16
closeButton.BorderSizePixel = 0
closeButton.Parent = captionBar

local header = Instance.new("TextLabel")
header.Size = UDim2.new(0.3, 0.3, 0, 45)
header.Position = UDim2.new(0, 0, 0, 35)  -- Adjusted position
header.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
header.BorderColor3 = Color3.fromRGB(16, 16, 16)  -- Set border color to match background
header.Text = "Main"
header.TextColor3 = Color3.new(1, 1, 1)
header.Font = Enum.Font.SourceSansBold
header.TextSize = 16  -- Increased text size
header.Parent = mainFrame

local subText = Instance.new("TextLabel")
subText.Size = UDim2.new(0.3, 0, 0, 30)  -- Adjusted size
subText.Position = UDim2.new(0, 0, 0, 90)  -- Adjusted position
subText.BackgroundTransparency = 1
subText.Text = "Host: " .. tostring(targetPlayerName);
subText.TextColor3 = Color3.new(1, 1, 1)
subText.Font = Enum.Font.SourceSans
subText.TextSize = 14  -- Increased text size
subText.Parent = mainFrame

local isVisible = true  -- Keeps track of GUI visibility

local function toggleGUI()
    isVisible = not isVisible
    mainFrame.Visible = isVisible
end

closeButton.MouseButton1Click:Connect(function()
    toggleGUI()
end)

game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.K then
        toggleGUI()
    end
end)


local gameTypeLabel = Instance.new("TextLabel")
gameTypeLabel.Size = UDim2.new(0.3, 0, 0, 30)
gameTypeLabel.Position = UDim2.new(0, 0, 0, 120)  -- Adjusted position
gameTypeLabel.BackgroundTransparency = 1
gameTypeLabel.Text = "Game Type: " .. tostring(gameType)  -- Replace 'gameType' with the actual variable
gameTypeLabel.TextColor3 = Color3.new(1, 1, 1)
gameTypeLabel.Font = Enum.Font.SourceSans
gameTypeLabel.TextSize = 14
gameTypeLabel.Parent = mainFrame

local altLabel = Instance.new("TextLabel")
altLabel.Size = UDim2.new(0.3, 0, 0, 30)
altLabel.Position = UDim2.new(0, 0, 0, 150)  -- Adjusted position
altLabel.BackgroundTransparency = 1
altLabel.Text = "Alt: " .. tostring(altself)  -- Replace 'altValue' with the actual variable
altLabel.TextColor3 = Color3.new(1, 1, 1)
altLabel.Font = Enum.Font.SourceSans
altLabel.TextSize = 14
altLabel.Parent = mainFrame

local settingsLabel = Instance.new("TextLabel")
settingsLabel.Size = UDim2.new(0.3, 0, 0.2, 30)
settingsLabel.Position = UDim2.new(0, 0, 0, 180)  -- Adjusted position
settingsLabel.BackgroundTransparency = 1
settingsLabel.Text = "Settings"
settingsLabel.TextColor3 = Color3.new(1, 1, 1)
settingsLabel.Font = Enum.Font.SourceSansBold
settingsLabel.TextSize = 16
settingsLabel.Parent = mainFrame

local enableFlickButton = Instance.new("TextButton")
enableFlickButton.Size = UDim2.new(0.3, 0, 0, 30)
enableFlickButton.Position = UDim2.new(0.05, 0.3, 0.2, 180)  -- Adjusted position
enableFlickButton.BackgroundColor3 = Color3.fromRGB(11, 11, 11)
enableFlickButton.Text = "View Commands"
enableFlickButton.TextColor3 = Color3.new(1, 1, 1)
enableFlickButton.Font = Enum.Font.SourceSansBold
enableFlickButton.TextSize = 14
enableFlickButton.BorderSizePixel = 0
enableFlickButton.Parent = mainFrame

local disableHostButton = Instance.new("TextButton")
disableHostButton.Size = UDim2.new(0.4, 0, 0, 30)
disableHostButton.Position = UDim2.new(0.3, 0, 1, -40)  -- Adjusted position
disableHostButton.AnchorPoint = Vector2.new(0.5, 0.5)
disableHostButton.BackgroundColor3 = Color3.fromRGB(11, 11, 11)
disableHostButton.Text = "Disable Host"
disableHostButton.TextColor3 = Color3.new(1, 1, 1)
disableHostButton.Font = Enum.Font.SourceSansBold
disableHostButton.TextSize = 14
disableHostButton.BorderSizePixel = 0
disableHostButton.Parent = mainFrame




local disableHostPanelVisible = false
local disableHostPanel = nil

local function createDisableHostPanel()
    disableHostPanel = Instance.new("Frame")
    disableHostPanel.Size = UDim2.new(0.15, 0, 0.15, 0)  -- Adjusted size
    disableHostPanel.Position = UDim2.new(0.35, 0, 0.375, 0)  -- Adjusted position
    disableHostPanel.AnchorPoint = Vector2.new(0.5, 0.5)
    disableHostPanel.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
    disableHostPanel.BorderSizePixel = 1
    disableHostPanel.Parent = gui
    
    local captionBarDisableHost = Instance.new("Frame")
    captionBarDisableHost.Size = UDim2.new(1, 0, 0, 30)
    captionBarDisableHost.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
    captionBarDisableHost.BorderSizePixel = 1
    captionBarDisableHost.Parent = disableHostPanel
    
    local titleDisableHost = Instance.new("TextLabel")
    titleDisableHost.Size = UDim2.new(1, -30, 1, 0)
    titleDisableHost.Position = UDim2.new(0, 10, 0, 0)
    titleDisableHost.BackgroundTransparency = 1
    titleDisableHost.Text = "Disable Host"
    titleDisableHost.TextColor3 = Color3.new(1, 1, 1)
    titleDisableHost.Font = Enum.Font.SourceSansBold
    titleDisableHost.TextSize = 16
    titleDisableHost.TextXAlignment = Enum.TextXAlignment.Left
    titleDisableHost.Parent = captionBarDisableHost
    
    local promptText = Instance.new("TextLabel")
    promptText.Size = UDim2.new(1, -30, 0.6, 0)
    promptText.Position = UDim2.new(0, 10, 0, 30)
    promptText.BackgroundTransparency = 1
    promptText.Text = "Would you like to Disable Host?"
    promptText.TextColor3 = Color3.new(1, 1, 1)
    promptText.Font = Enum.Font.SourceSansBold
    promptText.TextSize = 18
    promptText.TextWrapped = true
    promptText.Parent = disableHostPanel
    
    local yesButton = Instance.new("TextButton")
    yesButton.Size = UDim2.new(0.4, -10, 0, 40)
    yesButton.Position = UDim2.new(0.15, 0, 1, -45)
    yesButton.BackgroundColor3 = Color3.fromRGB(11, 11, 11)
    yesButton.Text = "Yes"
    yesButton.TextColor3 = Color3.new(1, 1, 1)
    yesButton.Font = Enum.Font.SourceSansBold
    yesButton.TextSize = 16
    yesButton.BorderSizePixel = 0
    yesButton.Parent = disableHostPanel
    
    local noButton = Instance.new("TextButton")
    noButton.Size = UDim2.new(0.4, -10, 0, 40)
    noButton.Position = UDim2.new(0.55, 0, 1, -45)
    noButton.BackgroundColor3 = Color3.fromRGB(11, 11, 11)
    noButton.Text = "No"
    noButton.TextColor3 = Color3.new(1, 1, 1)
    noButton.Font = Enum.Font.SourceSansBold
    noButton.TextSize = 16
    noButton.BorderSizePixel = 0
    noButton.Parent = disableHostPanel
    
    yesButton.MouseButton1Click:Connect(function()
        print("Hey")
        disableHostPanel.Visible = false
        disableHostPanelVisible = false
    end)
    
    noButton.MouseButton1Click:Connect(function()
        disableHostPanel.Visible = false
        disableHostPanelVisible = false
    end)
    
    disableHostPanel.Visible = true
    disableHostPanelVisible = true
end

disableHostButton.MouseButton1Click:Connect(function()
    if not disableHostPanelVisible then
        if not disableHostPanel then
            createDisableHostPanel()
        else
            disableHostPanel.Visible = true
            disableHostPanelVisible = true
        end
    end
end)




local commandsPanelVisible = false
local commandsPanel = nil

local function createCommandsPanel()
    commandsPanel = Instance.new("Frame")
    commandsPanel.Size = UDim2.new(0.25, 0, 0.85, 0)  -- Adjusted size
    commandsPanel.Position = UDim2.new(0.75, 0, 0.25, 0)  -- Adjusted position
    commandsPanel.AnchorPoint = Vector2.new(1, 0.5)
    commandsPanel.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
    commandsPanel.BorderSizePixel = 1
    commandsPanel.Active = true
    commandsPanel.Draggable = true
    commandsPanel.Visible = false
    commandsPanel.Parent = gui
    
    local captionBarCommands = Instance.new("Frame")
    captionBarCommands.Size = UDim2.new(1, 0, 0, 30)
    captionBarCommands.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
    captionBarCommands.BorderSizePixel = 1
    captionBarCommands.Parent = commandsPanel
    
    local titleCommands = Instance.new("TextLabel")
    titleCommands.Size = UDim2.new(1, -30, 1, 0)
    titleCommands.Position = UDim2.new(0, 10, 0, 0)
    titleCommands.BackgroundTransparency = 1
    titleCommands.Text = "Pyramid Commands"
    titleCommands.TextColor3 = Color3.new(1, 1, 1)
    titleCommands.Font = Enum.Font.SourceSansBold
    titleCommands.TextSize = 16
    titleCommands.TextXAlignment = Enum.TextXAlignment.Left
    titleCommands.Parent = captionBarCommands
    
    local closeButtonCommands = Instance.new("TextButton")
    closeButtonCommands.Size = UDim2.new(0, 30, 0, 30)
    closeButtonCommands.Position = UDim2.new(1, -30, 0, 0)
    closeButtonCommands.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
    closeButtonCommands.Text = "X"
    closeButtonCommands.TextColor3 = Color3.new(1, 1, 1)
    closeButtonCommands.Font = Enum.Font.SourceSansBold
    closeButtonCommands.TextSize = 16
    closeButtonCommands.BorderSizePixel = 0
    closeButtonCommands.Parent = captionBarCommands























































	
    local hiText = Instance.new("TextLabel")
    hiText.Size = UDim2.new(1, 0, 0, 20)
    hiText.Position = UDim2.new(0, 0, 0, 30)
    hiText.BackgroundTransparency = 1
    hiText.Text = "!bring  -  Brings Alt To Host"
    hiText.TextColor3 = Color3.new(1, 1, 1)
    hiText.Font = Enum.Font.SourceSans
    hiText.TextSize = 14
    hiText.Parent = commandsPanel

    	
    local hiText = Instance.new("TextLabel")
    hiText.Size = UDim2.new(1, 0, 0, 20)
    hiText.Position = UDim2.new(0, 0, 0, 30)
    hiText.BackgroundTransparency = 1
    hiText.Text = "!freeze  -  Freezes Alt"
    hiText.TextColor3 = Color3.new(1, 1, 1)
    hiText.Font = Enum.Font.SourceSans
    hiText.TextSize = 14
    hiText.Parent = commandsPanel








































	
    
    closeButtonCommands.MouseButton1Click:Connect(function()
        commandsPanel.Visible = false
        commandsPanelVisible = false
    end)
    
    commandsPanel.Visible = true
    commandsPanelVisible = true
end

enableFlickButton.MouseButton1Click:Connect(function()
    if not commandsPanelVisible then
        if not commandsPanel then
            createCommandsPanel()
        else
            commandsPanel.Visible = true
            commandsPanelVisible = true
        end
    end
end)






































local function airlock()
	local a1 = game.Players.LocalPlayer
local ax = a1.Character

local teleportOffset = Vector3.new(0, 5, 0)  -- Adjust the offset as per your requirement

-- Check if the character and HumanoidRootPart exist
if ax and ax:FindFirstChild("HumanoidRootPart") then
    local humanoidRootPart = ax.HumanoidRootPart

    -- Teleport the character
    humanoidRootPart.CFrame = humanoidRootPart.CFrame + teleportOffset

    -- Lock the character in the new position
  game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
end

end




local function unairlock()
	local a1 = game.Players.LocalPlayer
local ax = a1.Character

local teleportOffset = Vector3.new(0, 5, 0)  -- Adjust the offset as per your requirement

-- Check if the character and HumanoidRootPart exist
if ax and ax:FindFirstChild("HumanoidRootPart") then
    local humanoidRootPart = ax.HumanoidRootPart

    -- Teleport the character
    humanoidRootPart.CFrame = humanoidRootPart.CFrame + teleportOffset

    -- Lock the character in the new position
  game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
end

end





local StrafeSpeed = 0

local TargetStrafe = {
    Enabled = false,
    Speed = 30,
    Distance = 1,
    Height = 3
}

local function getPlr()
    StrafeSpeed = StrafeSpeed + TargetStrafe.Speed

    if TargetPlr then
        LocalPlr.Character.HumanoidRootPart.CFrame = TargetPlr.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(StrafeSpeed), 0) * CFrame.new(0, TargetStrafe.Height, TargetStrafe.Distance)
    end
end

local heartbeatConnection
heartbeatConnection = game:GetService("RunService").Heartbeat:Connect(getPlr)

local function getStop()
    heartbeatConnection:Disconnect()
end




-- Command Functions


local function tpHOST()
    local targetPlayer = Players:FindFirstChild(targetPlayerName)

    if targetPlayer then
        local targetCharacter = targetPlayer.Character
        if targetCharacter then
            local targetPosition = targetCharacter.PrimaryPart.Position




			local function teleportTo(position)
    local character = game.Players.LocalPlayer.Character
    if character then
        character:SetPrimaryPartCFrame(CFrame.new(position))
    end
end

local function getPreviousPosition()
    local character = game.Players.LocalPlayer.Character
    if character then
        return character.PrimaryPart.CFrame.Position
    end
end

local function handleTeleporting()
 
    local prevPosition = getPreviousPosition()

    -- Freeze the player
    local humanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
    if humanoid then
        humanoid.PlatformStand = true
    end

    -- Teleport the player 500 units away
    local teleportPosition = targetCharacter.PrimaryPart.Position
    teleportTo(teleportPosition)

    -- Wait for 1 second (you can adjust the duration as needed)
    wait(1)

    -- Attempt to teleport the player back to the previous position
    repeat
      
        wait()
    until (game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position - prevPosition).Magnitude <= 1

    -- Check if the player is still alive, if not, wait for them to respawn
    while game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Health <= 0 do
        wait()
    end

    -- Unfreeze the player after teleporting back and respawn
    if humanoid then
        humanoid.PlatformStand = false
    end

    -- Enable checking armor again once the armor value is above 10
end

handleTeleporting()


			


			
        end
    end
end



-- Function to freeze the character's movement
local function freeze()
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
end


local function unfreeze()
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
end










-- Command Executer




local function onPlayerChatted(message, player)
    if player.Name == targetPlayerName then
        print(string.format("[%s]: %s", player.Name, message))
        
        -- Command Yeti v2.7 By Badovh
        
        
        if message:lower() == "!bring" then
            print("Bringing Account!")
            tpHOST()
        end
        
        
          if message:lower() == "!freeze" then
            print("Freezing Account!")
            freeze()
        end
        
        
          if message:lower() == "!unfreeze" then
            print("Unfreezing Account!")
            unfreeze()
        end


         if message:sub(1, 5):lower() == "!get " then
            local playerName = message:sub(6) -- Extract the player name from the message

            if playerName ~= "" then
                print("Getting player: " .. playerName)
                SelectedPlayer = playerName -- Set the player name in the SelectedPlayer variable
                TargetPlr = Players:FindFirstChild(SelectedPlayer)
                getPlr() -- Start following the selected player
            else
                print("Invalid player name")
            end
        end

        if message:lower() == "!stopget" then
            print("Stopping!")
            getStop()
        end



		    if message:sub(1, 5):lower() == "!say " then
            local textr = message:sub(6) -- Extract the player name from the message

            if textr ~= "" then
                print("Saying player: " .. textr)
               game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(textr, "All")
            else
                print("Invalid player name")
            end
        end



		     if message:lower() == "!saymyname" then
            print("Usage")
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(targetPlayerName, "All")
        end



		    if message:lower() == "!version" then
            print("Usage")
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(version, "All")
        end


		    if message:lower() == "!airlock" then
            print("badovh says unmi beat")
            airlock()
        end

		  if message:lower() == "!unairlock" then
            print("badovh says unmi beat")
            unairlock()
        end


        


		

        
        
        
        
    end
end

















-- Control Jet

Players.PlayerAdded:Connect(function(player)
    if player.Name == targetPlayerName then
        player.Chatted:Connect(function(message)
            onPlayerChatted(message, player)
        end)
    end
end)

for _, player in ipairs(Players:GetPlayers()) do
    if player.Name == targetPlayerName then
        player.Chatted:Connect(function(message)
            onPlayerChatted(message, player)
        end)
    end
end













































