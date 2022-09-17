-- vSam#3678 Hoopz Gui

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("vSam#3678 Hoopz Gui")

local b = w:CreateFolder("Main")

b:Button("vSam#3678 Aimbot",function()

-- Variables

local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
local UIS = game:GetService("UserInputService")
local VIM = game:GetService("VirtualInputManager")
local camera = game:GetService("Workspace").CurrentCamera
local cameraMode = game:GetService("Players").LocalPlayer.CameraMode

-- Gets Closest Hoop

function getClosest()
    local closestDistance = math.huge
    local closestRim = nil
    for i,v in pairs(game:GetService("Workspace").Courts:GetDescendants()) do
        if v.Name == "hoop" then
        local distance = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Position).magnitude
        if distance < closestDistance then
            closestDistance = distance
            closestRim = v
        end
        end
    end
    return closestRim
end




-- Aimbot Gui

local AimbotGui = Instance.new("ScreenGui")
local AimbotFrame = Instance.new("Frame")
local RangeText = Instance.new("TextLabel")
local Basketball = game:GetService("Players").LocalPlayer.Character:WaitForChild("Basketball")


AimbotGui.Name = "AimbotGui"
AimbotGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
AimbotGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

AimbotFrame.Name = "AimbotFrame"
AimbotFrame.Parent = AimbotGui
AimbotFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AimbotFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
AimbotFrame.Position = UDim2.new(0.389353633, 0, 0, 0)
AimbotFrame.Size = UDim2.new(0, 290, 0, 45)

RangeText.Name = "RangeText"
RangeText.Parent = AimbotFrame
RangeText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RangeText.BackgroundTransparency = 1.000
RangeText.BorderColor3 = Color3.fromRGB(0, 0, 0)
RangeText.Position = UDim2.new(0, 0, -0.111111283, 0)
RangeText.Size = UDim2.new(0, 290, 0, 50)
RangeText.Font = Enum.Font.SourceSans
RangeText.Text = "Out Of Range"
RangeText.TextColor3 = Color3.fromRGB(255, 0, 0)
RangeText.TextSize = 40.000
RangeText.TextWrapped = true


-- Opens And Closes Gui When Player Has/ Has Not Got The Ball

spawn(function()
while wait() do
if Basketball.Parent == game:GetService("Players").LocalPlayer.Character then
AimbotFrame.Visible = true
end
repeat wait() until Basketball.Parent ~= game:GetService("Players").LocalPlayer.Character
AimbotFrame.Visible = false
game:GetService("Players").LocalPlayer.Character:WaitForChild("Basketball")
AimbotFrame.Visible = true
end
end)









-- In Range And Out Of Range

spawn(function()
game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("AimbotGui")
while wait() do
local playerAndHoopDistance = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - getClosest().Position).magnitude
if playerAndHoopDistance <= 74 then
    RangeText.Text = "In Range"
    RangeText.TextColor3 = Color3.new(0, 255, 0)
elseif playerAndHoopDistance > 74 then
RangeText.Text = "Out Of Range"
RangeText.TextColor3 = Color3.new(255, 0, 0)
end
end
end)


-- Power Adjustment

function getClosest()
    local closestDistance = math.huge
    local closestRim = nil
    for i,v in pairs(game:GetService("Workspace").Courts:GetDescendants()) do
        if v.Name == "hoop" then
        local distance = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Position).magnitude
        if distance < closestDistance then
            closestDistance = distance
            closestRim = v
        end
        end
    end
    return closestRim
end



spawn(function()
    while wait() do
        if _G.aim then
        local power = game:GetService("Players").LocalPlayer.Power
        local playerAndHoopDistance2 = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - getClosest().Position).magnitude
        if playerAndHoopDistance2 <= 74 and playerAndHoopDistance2 > 61.9 then
            power.Value = 85
        elseif playerAndHoopDistance2 <= 61.9 and playerAndHoopDistance2 > 46.35 then
            power.Value = 80
        elseif playerAndHoopDistance2 <= 46.35 then
            power.Value = 75
            if _G.aim == false then return end
            end
        end
    end
end)











-- The Aimbot

UIS.InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.Space and RangeText.Text == "In Range" then
        if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool") then
        _G.aim = true
        spawn(function()
            local ping = game:GetService("Players").LocalPlayer.Ping
        if ping.Value <= 83 then
        wait(0.195)
        VIM:SendMouseButtonEvent(Mouse.X, Mouse.Y, 0, true, game, 1)
        VIM:SendMouseButtonEvent(Mouse.X, Mouse.Y, 0, false, game, 1)
        elseif ping.Value >= 83 and ping.Value <= 120 then
        wait(0.155)
        VIM:SendMouseButtonEvent(Mouse.X, Mouse.Y, 0, true, game, 1)
        VIM:SendMouseButtonEvent(Mouse.X, Mouse.Y, 0, false, game, 1)
        elseif ping.Value >= 120 then
        wait(0.125)
        VIM:SendMouseButtonEvent(Mouse.X, Mouse.Y, 0, true, game, 1)
        VIM:SendMouseButtonEvent(Mouse.X, Mouse.Y, 0, false, game, 1)
        end
        end)
        while wait() do
            local playerAndHoopDistance3 = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - getClosest().Position).magnitude
            if playerAndHoopDistance3 <= 61.999999 and playerAndHoopDistance3 >= 59 then
            camera.CFrame = CFrame.new(camera.CFrame.Position, getClosest().Position + Vector3.new(0, 60, 0))
            if _G.aim == false then return end
            elseif playerAndHoopDistance3 <= 45.999999 and playerAndHoopDistance3 >= 42 then
                camera.CFrame = CFrame.new(camera.CFrame.Position, getClosest().Position + Vector3.new(0, 65, 0))
            if _G.aim == false then return end
            elseif playerAndHoopDistance3 <= 58.999999 and playerAndHoopDistance3 >= 55 then
                camera.CFrame = CFrame.new(camera.CFrame.Position, getClosest().Position + Vector3.new(0, 65, 0))
            if _G.aim == false then return end
            elseif playerAndHoopDistance3 <= 74 and playerAndHoopDistance3 >= 71 then
                camera.CFrame = CFrame.new(camera.CFrame.Position, getClosest().Position + Vector3.new(0, 50, 0))
            if _G.aim == false then return end
            elseif playerAndHoopDistance3 <= 71 and playerAndHoopDistance3 >= 68 then
                camera.CFrame = CFrame.new(camera.CFrame.Position, getClosest().Position + Vector3.new(0, 60, 0))
            if _G.aim == false then return end
            elseif playerAndHoopDistance3 <= 68 and playerAndHoopDistance3 >= 66 then
                camera.CFrame = CFrame.new(camera.CFrame.Position, getClosest().Position + Vector3.new(0, 65, 0))
            if _G.aim == false then return end
            else
                camera.CFrame = CFrame.new(camera.CFrame.Position, getClosest().Position + Vector3.new(0, 70, 0))
            if _G.aim == false then return end
                end
            end
        end
    end
end)








-- The Aimbot

UIS.InputEnded:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.Space then
        _G.aim = false
    end
end)

-- Locking FirstPerson

spawn(function()
while wait() do
if _G.aim == true then
    game:GetService("Players").LocalPlayer.CameraMode = Enum.CameraMode.LockFirstPerson
wait(0.2)
game:GetService("Players").LocalPlayer.CameraMode = Enum.CameraMode.Classic
end
end
end)
end)



b:Toggle("Ball Mag",function(bool)

-- Ball Mag

getgenv().mag = bool

getgenv().magRange = 0


function getClosestBasketball()
    local closestDistance = math.huge
    local closestBasketball = nil
    for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if v.Name == "Ball" then
            local distance = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Position).magnitude
            if distance < closestDistance then
                closestDistance = distance
                closestBasketball = v
            end
        end
    end
    return closestBasketball
end


local humRootPart = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart


spawn(function()
while mag do
wait(0.1)
local magDistance = (humRootPart.Position - getClosestBasketball().Position).magnitude
if magDistance <= magRange then
firetouchinterest(humRootPart, getClosestBasketball(), 0)
wait(0.001)
firetouchinterest(humRootPart, getClosestBasketball(), 1)
end
end
end)
end)








b:Slider("Ball Mag Range",{
    min = 0; -- min value of the slider
    max = 25; -- max value of the slider
    precise = true; -- max 2 decimals
},function(value)
magRange = value
end)







b:Bind("Auto Guard",Enum.KeyCode.X,function()

        
function findClosestPlayer()
    closestPlayer2 = nil
    closestDistance2 = math.huge
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        if v ~= game:GetService("Players").LocalPlayer then
            local distance2 = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude
            if distance2 < closestDistance2 then
                closestDistance2 = distance2
                closestPlayer2 = v
            end
        end
    end
    return closestPlayer2
end




spawn(function()
if (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - findClosestPlayer().Character.HumanoidRootPart.Position).magnitude <= 30 and findClosestPlayer().Character:FindFirstChild("Basketball") then
repeat
wait()
game:GetService("Players").LocalPlayer.Character.Humanoid.WalkToPoint = findClosestPlayer().Character["HumanoidRootPart"].Position + Vector3.new(findClosestPlayer().Character.Humanoid.MoveDirection.X * 4, findClosestPlayer().Character.Humanoid.MoveDirection.Y, findClosestPlayer().Character.Humanoid.MoveDirection.Z * 5.5)
until game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool") or findClosestPlayer().Character:FindFirstChildOfClass("Tool") == nil
end
end)
end)

b:Toggle("Anti Travel",function(bool)

		local mt = getrawmetatable(game)
	local namecall = mt.__namecall
	setreadonly(mt,false)
	mt.__namecall = function(self,...)
		local args = {...}
		local method = getnamecallmethod()

		if tostring(self) == "shootingEvent" and method == "FireServer" and args[1] == "xd" then
		    if bool == false then
			args[1] = "xd"
			return self.FireServer(self, unpack(args))
		    elseif bool == true then
		    return;
			end
		end
		return namecall(self,...)
	end
end)


local b = w:CreateFolder("Dunks")

b:Dropdown("Dunk Animations",{"Dunk_1HClutchReverse_L","Dunk_2HWindmill_U","Dunk_360BTL_R","Dunk_360Scoop_E","Dunk_360MailMan_L","Dunk_360Pump_E","Dunk_360Windmill_Special","Dunk_360_R","Dunk_BTB2HReverse_E","Dunk_BTBScorpion_E","Dunk_BTB_U","Dunk_BTLReverse2H_Special","Dunk_BTLBTB_E","Dunk_Backscratcher_C","Dunk_BTL_R","Dunk_Cradle_E","Dunk_CuffCradle_E","Dunk_Default","Dunk_DoubleBTL_E","Dunk_FakeBTB_Special","Dunk_FakeBTL_Special","Dunk_FrontClutch_C","Dunk_Inverter_Special","Dunk_LostAndFound_Special","Dunk_MJ_L","Dunk_MailMan_U","Dunk_PumpReverse_R","Dunk_Pendulum_R","Dunk_Reverse2HWindmill_U","Dunk_Reverse360BTB2H_Special","Dunk_Reverse360BTL_E","Dunk_Reverse360BTB_E","Dunk_Scorpion2_R","Dunk_Reverse_C","Dunk_Scorpion_R","Dunk_Switcheroo_C","Dunk_UberTomahawk_U","Dunk_Tomahawk_C","Dunk_UnderTheLegs_R","Dunk_VinceCarter360_E","Dunk_Windmill_U"},true,function(mob) --true/false, replaces the current title "Dropdown" with the option that t
    game:GetService("Players").LocalPlayer.Equipping.Dunk.Value = mob
    game:GetService("Players").LocalPlayer.Equipping.Dunk2.Value = mob
    game:GetService("Players").LocalPlayer.Equipping.Dunk3.Value = mob
end)




local b = w:CreateFolder("Miscellaneous")




b:Slider("WalkSpeed",{
    min = 16;
    max = 19;
    precise = true;
},function(value)
function getWalkSpeed()
    return value
end
while wait() do
    game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = getWalkSpeed()
    end
end)




b:Slider("JumpPower",{
    min = 50;
    max = 60;
    precise = true;
},function(value)
function getJumpPower()
    return value
end
while wait() do
    game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = getJumpPower()
    end
end)
