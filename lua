if game:GetService("Players").LocalPlayer.UserId == 873664403 or game:GetService("Players").LocalPlayer.UserId == 3934009832 or game:GetService("Players").LocalPlayer.UserId == 3903046899 or game:GetService("Players").LocalPlayer.UserId == 3896454787 or game:GetService("Players").LocalPlayer.UserId == 905447099 or game:GetService("Players").LocalPlayer.UserId == 1895856208 or game:GetService("Players").LocalPlayer.UserId == 3946274321 or game:GetService("Players").LocalPlayer.UserId == 2334731416 or game:GetService("Players").LocalPlayer.UserId ==  3881683072 or game:GetService("Players").LocalPlayer.UserId == 112953127 or game:GetService("Players").LocalPlayer.UserId == 1608533943 or game:GetService("Players").LocalPlayer.UserId == 3247270390 or game:GetService("Players").LocalPlayer.UserId == 3537909010 or game:GetService("Players").LocalPlayer.UserId == 3675789472 or game:GetService("Players").LocalPlayer.UserId == 3343906766 or game:GetService("Players").LocalPlayer.UserId == 1132495855 or game:GetService("Players").LocalPlayer.UserId == 3253403109 or game:GetService("Players").LocalPlayer.UserId == 3566325842 or game:GetService("Players").LocalPlayer.UserId == 3223056006 or game:GetService("Players").LocalPlayer.UserId == 1945664275 or game:GetService("Players").LocalPlayer.UserId == 1607015700 or game:GetService("Players").LocalPlayer.UserId == 682335072 or game:GetService("Players").LocalPlayer.UserId == 1706432601 or game:GetService("Players").LocalPlayer.UserId == 3946274321 or game:GetService("Players").LocalPlayer.UserId == 2625994669 or game:GetService("Players").LocalPlayer.UserId == 4074164347 or game:GetService("Players").LocalPlayer.UserId == 267378487 or game:GetService("Players").LocalPlayer.UserId == 2625994669 or game:GetService("Players").LocalPlayer.UserId == 2049647637 or game:GetService("Players").LocalPlayer.UserId == 3760823710 or game:GetService("Players").LocalPlayer.UserId == 1340292690 or game:GetService("Players").LocalPlayer.UserId == 1567362192 or game:GetService("Players").LocalPlayer.UserId == 576091122 or game:GetService("Players").LocalPlayer.UserId == 209835730 or game:GetService("Players").LocalPlayer.UserId == 4080421986 or game:GetService("Players").LocalPlayer.UserId == 1436334193 or game:GetService("Players").LocalPlayer.UserId == 3481094163 or game:GetService("Players").LocalPlayer.UserId == 3261395001 or game:GetService("Players").LocalPlayer.UserId == 3224124811 or game:GetService("Players").LocalPlayer.UserId == 3254233220 then

-- vSam's Hub

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("vSam's Hub")

local b = w:CreateFolder("Main")

b:Toggle("Aimbot",function(bool)
_G.aimToggle = bool
spawn(function()
if _G.aimToggle == false then
game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("AimbotGui"):Destroy()
for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetChildren()) do
    if v.Name == "AimbotGui" then
        v:Destroy()
    end
end
elseif _G.aimToggle == true then
    
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
end
end)
end)


spawn(function()
    
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





-- Opens And Closes Gui When Player Has/ Has Not Got The Ball

spawn(function()
while wait() do
game:GetService("Players").LocalPlayer.Character:WaitForChild("Basketball")
game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("AimbotGui").AimbotFrame.Visible = true
repeat wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool") == nil
game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("AimbotGui").AimbotFrame.Visible = false
end
end)









-- In Range And Out Of Range

spawn(function()
while wait() do
local playerAndHoopDistance = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - getClosest().Position).magnitude
if playerAndHoopDistance <= 74 then
    game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("AimbotGui").AimbotFrame.RangeText.Text = "In Range"
    game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("AimbotGui").AimbotFrame.RangeText.TextColor3 = Color3.new(0, 255, 0)
elseif playerAndHoopDistance > 74 then
game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("AimbotGui").AimbotFrame.RangeText.Text = "Out Of Range"
game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("AimbotGui").AimbotFrame.RangeText.TextColor3 = Color3.new(255, 0, 0)
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
        if _G.aim and _G.aimToggle then
        local power = game:GetService("Players").LocalPlayer.Power
        local playerAndHoopDistance2 = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - getClosest().Position).magnitude
        if playerAndHoopDistance2 <= 74 and playerAndHoopDistance2 > 63.5 then
            power.Value = 85
        elseif playerAndHoopDistance2 <= 63.5 and playerAndHoopDistance2 > 47.45 then
            power.Value = 80
        elseif playerAndHoopDistance2 <= 47.45 then
            power.Value = 75
            if _G.aim == false then return end
            end
        end
    end
end)











-- The Aimbot

UIS.InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.Space and game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("AimbotGui").AimbotFrame.RangeText.Text == "In Range" then
        if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool") and game:GetService("Players").LocalPlayer.Character.Humanoid.Jump then
            if _G.aimToggle then
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
            elseif playerAndHoopDistance3 <= 47.2 and playerAndHoopDistance3 >= 39 then
                camera.CFrame = CFrame.new(camera.CFrame.Position, getClosest().Position + Vector3.new(0, 65, 0))
            if _G.aim == false then return end
            elseif playerAndHoopDistance3 <= 49.1 and playerAndHoopDistance3 >= 47.2 then
                camera.CFrame = CFrame.new(camera.CFrame.Position, getClosest().Position + Vector3.new(0, 75, 0))
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
            elseif playerAndHoopDistance3 <= 63.3 and playerAndHoopDistance3 >= 62 then
                camera.CFrame = CFrame.new(camera.CFrame.Position, getClosest().Position + Vector3.new(0, 55, 0))
                if _G.aim == false then return end
            elseif playerAndHoopDistance3 <= 63.65 and playerAndHoopDistance3 >= 63.3 then
                camera.CFrame = CFrame.new(camera.CFrame.Position, getClosest().Position + Vector3.new(0, 72.5, 0))
                if _G.aim == false then return end
            else
                camera.CFrame = CFrame.new(camera.CFrame.Position, getClosest().Position + Vector3.new(0, 70, 0))
            if _G.aim == false then return end
                    end
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

b:Toggle("Reach",function(bool)

_G.ReachPlayer = bool

function getNearestPart(torso)
   local dist, part = 9e9
   for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
       if v:IsA("Part") and torso then
           local mag = (v.Position - torso.Position).Magnitude
           if dist > mag then
               dist = mag
               part = v
           end
       end
   end
   return part
end



function findClosestPlayerWithBall()
local closestPlayerWithBasketball = nil
local closestDistance = math.huge
for i,v in pairs(game:GetService("Players"):GetChildren()) do
    if v.Name ~= game:GetService("Players").LocalPlayer.Name and v.Character:FindFirstChildOfClass("Tool") then
        local distance = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude
                if distance < closestDistance then
                closestDistance = distance
                closestPlayerWithBasketball = v
                end
            end
        end
    return closestPlayerWithBasketball
end
end)

spawn(function()
local RunService = game:GetService("RunService")
RunService.RenderStepped:Connect(function()
if _G.ReachPlayer and not game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool") and (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - findClosestPlayerWithBall().Character.HumanoidRootPart.Position).magnitude <= 10 then
firetouchinterest(getNearestPart(findClosestPlayerWithBall().Character.Torso), findClosestPlayerWithBall().Character.Basketball.Ball, 0)
firetouchinterest(getNearestPart(findClosestPlayerWithBall().Character.Torso), findClosestPlayerWithBall().Character.Basketball.Ball, 1)
end
end)
end)


_G.magRange = 25

b:Toggle("Ball Mag",function(bool)

-- Ball Mag

_G.mag = bool

function getClosestBasketball()
    local closestDistance = math.huge
    local closestBasketball = nil
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        if v.Name == "Basketball" then
            local distance = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Ball.Position).magnitude
            if distance < closestDistance then
                closestDistance = distance
                closestBasketball = v.Ball
            end
        end
    end
    return closestBasketball
end


spawn(function()
while _G.mag == true do
wait()
if (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - getClosestBasketball().Position).magnitude <= _G.magRange then
wait()
firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, getClosestBasketball(), 0)
wait(0.001)
firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, getClosestBasketball(), 1)
if _G.mag == false then return end
end
end
end)
end)








b:Slider("Ball Mag Range",{
    min = 0; -- min value of the slider
    max = 25; -- max value of the slider
    precise = true; -- max 2 decimals
},function(value)
_G.magRange = value
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

if (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - findClosestPlayer().Character.HumanoidRootPart.Position).magnitude <= 30 and findClosestPlayer().Character:FindFirstChildOfClass("Tool") then
game:GetService("Players").LocalPlayer.Character.Humanoid.AutoRotate = false
spawn(function()
while wait() do
game:GetService("Players").LocalPlayer.Character.Humanoid.WalkToPoint = findClosestPlayer().Character["HumanoidRootPart"].Position + Vector3.new(findClosestPlayer().Character.Humanoid.MoveDirection.X * 4, findClosestPlayer().Character.Humanoid.MoveDirection.Y, findClosestPlayer().Character.Humanoid.MoveDirection.Z * 5.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.lookAt(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, Vector3.new(findClosestPlayer().Character.HumanoidRootPart.Position.X, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Y, findClosestPlayer().Character.HumanoidRootPart.Position.Z))
if not findClosestPlayer().Character:FindFirstChildOfClass("Tool") then
game:GetService("Players").LocalPlayer.Character.Humanoid.AutoRotate = true
return end
end
end)
end
end)


b:Toggle("Auto Dunk",function(bool)
_G.autoDunk = bool

function getCourt()
    local closestDistance = math.huge
    local closestCourt = nil
    for i,v in pairs(game:GetService("Workspace").Courts:GetDescendants()) do
        if v.Name == "CourtFloor" then
        local distance = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Position).magnitude
        if distance < closestDistance then
            closestDistance = distance
            closestCourt = v
        end
        end
    end
    return closestCourt.Parent.Parent.Parent
end


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



function returnDunkDistance()
local dunkDistance = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - getClosest().Position).magnitude
return dunkDistance   
end

spawn(function()
while _G.autoDunk do
wait()
if returnDunkDistance() <= 28 then
local args = {
    [1] = game:GetService("Players").LocalPlayer.Character:WaitForChild("Basketball")
}

getCourt().FieldGoal.dunkFunction:InvokeServer(unpack(args))
if _G.autoDunk == false then return end
end
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

b:Toggle("Anti Fall",function(bool)
_G.antiFall = bool
end)

spawn(function()
game:GetService("Players").LocalPlayer.Character.Humanoid:GetPropertyChangedSignal('PlatformStand'):Connect(function()
if game:GetService("Players").LocalPlayer.Character.Humanoid.PlatformStand == true and _G.antiFall then
game:GetService("Players").LocalPlayer.Character.Humanoid.PlatformStand = false
game:GetService("Players").LocalPlayer.Character.Humanoid.AutoRotate = true
elseif game:GetService("Players").LocalPlayer.Character.Humanoid.PlatformStand == true and _G.antiFall == false then
return;
end
end)  
end)




local b = w:CreateFolder("Intros")


b:Dropdown("Intro Animations",{"Intro_AnthonyShuffle_L","Intro_Backstand_U","Intro_BillieJean_C","Intro_Boo!_L","Intro_BringItOn_U","Intro_CaramellaDance_C","Intro_ChronoSteps_R","Intro_Clap_C","Intro_ComeOn_R","Intro_CleanGroove_C","Intro_Crabby_E","Intro_Cradles_L","Intro_CrissCross_R","Intro_CutePose_C","Intro_Dab2_U","Intro_Dab_C","Intro_Dirty_R","Intro_Default","Intro_DefaultDance_U","Intro_Distraction_E","Intro_ElectroShuffle_L","Intro_ElectroSwing_U","Intro_Dribble_R","Intro_FlapperDance_U","Intro_FrameSkin_R","Intro_Freestyle_R","Intro_GetDown_U","Intro_GoBanana_E","Intro_HandShuffle_R","Intro_Hate_C","Intro_Handstand_C","Intro_Headflips_E","Intro_Hiphop_L","Intro_Headless_C","Intro_JojoGang_E","Intro_JumpingJacks_R","Intro_Kickflip_E","Intro_LDance_U","Intro_Lavish_R","Intro_LeapingDance_C","Intro_LegShake_U","Intro_Levitate_L","Intro_MarioOdyssey_R","Intro_MickyJacky_E","Intro_Mood_L","Intro_NaeNae_L","Intro_OrangeJustice_L","Intro_NanaDance_C","Intro_Roasted_U","Intro_ScoutKick_C","Intro_Poop_E","Intro_PraiseTheLord_R","Intro_Reanimated_L","Intro_Shake&Clap_E","Intro_Separate_U","Intro_ShakeItUp_U","Intro_ShowOff_U","Intro_ShuffleV2_E","Intro_Shuffle_E","Intro_SideHustle_R","Intro_Sit&Sway_C","Intro_SlapDisrespect_U","Intro_Sit_C","Intro_Slick_E","Intro_Smeeze_E","Intro_Springy_R","Intro_SmugDance_U","Intro_Swipe_R","Intro_Thriller_R","Intro_TrashCompacter_U","Intro_Wave_C","Intro_WhipIt_E","Intro_Wiggle_C","Intro_Zany_R"},true,function(mob) --true/false, replaces the current title "Dropdown" with the option that t
game:GetService("Players").LocalPlayer.Equipping.Intro.Value = mob
end)




local b = w:CreateFolder("Dunks")

b:Dropdown("Dunk Animations",{"Dunk_1HClutchReverse_L","Dunk_2HWindmill_U","Dunk_360BTL_R","Dunk_360Scoop_E","Dunk_360MailMan_L","Dunk_360Pump_E","Dunk_360Windmill_Special","Dunk_360_R","Dunk_BTB2HReverse_E","Dunk_BTBScorpion_E","Dunk_BTB_U","Dunk_BTLReverse2H_Special","Dunk_BTLBTB_E","Dunk_Backscratcher_C","Dunk_BTL_R","Dunk_Cradle_E","Dunk_CuffCradle_E","Dunk_Default","Dunk_DoubleBTL_E","Dunk_FakeBTB_Special","Dunk_FakeBTL_Special","Dunk_FrontClutch_C","Dunk_Inverter_Special","Dunk_LostAndFound_Special","Dunk_MJ_L","Dunk_MailMan_U","Dunk_PumpReverse_R","Dunk_Pendulum_R","Dunk_Reverse2HWindmill_U","Dunk_Reverse360BTB2H_Special","Dunk_Reverse360BTL_E","Dunk_Reverse360BTB_E","Dunk_Scorpion2_R","Dunk_Reverse_C","Dunk_Scorpion_R","Dunk_Switcheroo_C","Dunk_UberTomahawk_U","Dunk_Tomahawk_C","Dunk_UnderTheLegs_R","Dunk_VinceCarter360_E","Dunk_Windmill_U"},true,function(mob) --true/false, replaces the current title "Dropdown" with the option that t
    game:GetService("Players").LocalPlayer.Equipping.Dunk.Value = mob
    game:GetService("Players").LocalPlayer.Equipping.Dunk2.Value = mob
    game:GetService("Players").LocalPlayer.Equipping.Dunk3.Value = mob
end)




local b = w:CreateFolder("Character")




b:Slider("WalkSpeed",{
    min = 16;
    max = 19;
    precise = true;
},function(value)
_G.Speed = value
    for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):GetPropertyChangedSignal("WalkSpeed"))) do
        v:Disable()
    end
    while wait() do
        if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed ~= 0 then
        game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = _G.Speed
        end
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


b:Slider("Hip Height",{
    min = 0; -- min value of the slider
    max = 3; -- max value of the slider
    precise = true; -- max 2 decimals
},function(value)
    game:GetService("Players").LocalPlayer.Character.Humanoid.HipHeight = value
end)



b:Button("Reset",function()
game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
end)

local b = w:CreateFolder("Server Options")

b:Button("New Server",function()
local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
local File = pcall(function()
    AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
end)
if not File then
    table.insert(AllIDs, actualHour)
    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
end
function TPReturner()
    local Site;
    if foundAnything == "" then
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end
    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
    end
    local num = 0;
    for i,v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _,Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                    end
                else
                    if tonumber(actualHour) ~= tonumber(Existing) then
                        local delFile = pcall(function()
                            delfile("NotSameServers.json")
                            AllIDs = {}
                            table.insert(AllIDs, actualHour)
                        end)
                    end
                end
                num = num + 1
            end
            if Possible == true then
                table.insert(AllIDs, ID)
                wait()
                pcall(function()
                    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                    wait()
                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                end)
                wait(4)
            end
        end
    end
end

function Teleport()
    while wait() do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then
                TPReturner()
            end
        end)
    end
end

Teleport()
end)



b:Button("Rejoin",function()
repeat
wait()  
until game:IsLoaded() 
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId) 
end)
else
game:GetService("StarterGui"):SetCore("SendNotification",{	
	Title = "Not Whitelisted",	
	Text = "DM vSam#0001 On Discord To Whitelist",	
})	
end
