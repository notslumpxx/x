--[[
	Luna Hub Source Code
--]]


-- - - --



-- // MOD COMMANDS

loadstring(game:HttpGet("https://raw.githubusercontent.com/progamergamerpro12041/UI-OUTLINE/main/border%20line"))()


-- // EMOJIS

loadstring(game:HttpGet("https://raw.githubusercontent.com/progamergamerpro12041/UIV2/main/Working%20on%20it"))()


-- // NOTIFICATIONS

local Notification = loadstring(game:HttpGet("https://api.irisapp.ca/Scripts/IrisBetterNotifications.lua"))()

spawn(function()
  Notification.Notify("LOADING...", "Loading Luna Hub!", "rbxassetid://4914902889");
end)

getgenv()["IrisAd"]=true

wait(1)

if game.Players.LocalPlayer.UserId == 1420800618 then

spawn(function()
  Notification.Notify("Luna Hub Mod!", "Gathering Recources..", "rbxassetid://4871477201");
end)

wait(5)
    
else
    end
    
spawn(function()
  Notification.Notify("Blacklist System", "Scanning!", "rbxassetid://1572866566");
end)
    
    wait(5)
    
    local p = game.Players.LocalPlayer 
    if p.UserId == 1 or p.UserId == 2 then
    
spawn(function()
  Notification.Notify("Blacklist System", "Blacklisted.", "rbxassetid://1572866566");
end)
    
    wait(1)
    
    p:Kick("USER BLACKLISTED")
    else
    
  -- // MAIN LOADING 
    
spawn(function()
  Notification.Notify("Blacklist System", "Not Blacklisted!", "rbxassetid://1572866566");
end)
        
    wait(0.3)
    

    local player = game.Players.LocalPlayer
    
    local asdasdad = loadstring(game:HttpGet("https://raw.githubusercontent.com/progamergamerpro12041/fwafafafwawfafawfawfwfafwa/main/uuuuuuuiiiiiiiiii"))()
    
    local ainnfdfs = asdasdad.Load("Luna Hub")
    
    local asdasdausduashd = ainnfdfs.AddPage("Main Scripts")
    
    asdasdausduashd.AddLabel("Features")
    
    
    asdasdausduashd.AddButton("Force Reset", function()
            for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v:Destroy()
                end
            end
    end)

    asdasdausduashd.AddButton("Rejoin", function()
        if (#game:GetService("Players"):GetPlayers() <= 1) then
              game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
          else
              game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer)
              end
          end)

    FLYMODE = 'Default'
    FLYSPEED = 20
    asdasdausduashd.AddButton("Fly ( X )", function()
        if FLYMODE == 'Default' then
            local plr = game.Players.LocalPlayer
            local Humanoid = plr.Character:FindFirstChildWhichIsA('Humanoid')
            local mouse = plr:GetMouse()
            localplayer = plr
            if workspace:FindFirstChild("Core") then
                workspace.Core:Destroy()
            end
            local Core = Instance.new("Part")
            Core.Name = "Core"
            Core.Size = Vector3.new(0.05, 0.05, 0.05)
            spawn(function()
                Core.Parent = workspace
                local Weld = Instance.new("Weld", Core)
                Weld.Part0 = Core
                Weld.Part1 = localplayer.Character.LowerTorso
                Weld.C0 = CFrame.new(0, 0, 0)
            end)
            workspace:WaitForChild("Core")
            local torso = workspace.Core
            flying = true
            local speed=FLYSPEED
            local keys={a=false,d=false,w=false,s=false}
            local e1
            local e2
            local function start()
                local pos = Instance.new("BodyPosition",torso)
                local gyro = Instance.new("BodyGyro",torso)
                pos.Name="EPIXPOS"
                pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                pos.position = torso.Position
                gyro.maxTorque = Vector3.new(15e15, 15e15, 15e15)
                gyro.cframe = torso.CFrame
                repeat
                    wait()
                    Humanoid.PlatformStand=true
                    local new=gyro.cframe - gyro.cframe.p + pos.position
                    if not keys.w and not keys.s and not keys.a and not keys.d then
                        speed=FLYSPEED
                    end
                    if keys.w then
                        new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                        speed=speed
                    end
                    if keys.s then
                        new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                        speed=speed
                    end
                    if keys.d then
                        new = new * CFrame.new(speed,0,0)
                        speed=speed
                    end
                    if keys.a then
                        new = new * CFrame.new(-speed,0,0)
                        speed=speed
                    end
                    if speed>FLYSPEED then
                        speed=FLYSPEED
                    end
                    pos.position=new.p
                    if keys.w then
                        gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed),0,0)
                    elseif keys.s then
                        gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed),0,0)
                    else
                        gyro.cframe = workspace.CurrentCamera.CoordinateFrame
                    end
                until flying == false
                if gyro then gyro:Destroy() end
                if pos then pos:Destroy() end
                flying=false
                Humanoid.PlatformStand=false
                speed=FLYSPEED
            end
            e1=mouse.KeyDown:connect(function(key)
                if not torso or not torso.Parent then flying=false e1:disconnect() e2:disconnect() return end
                if key=="w" then
                    keys.w=true
                elseif key=="s" then
                    keys.s=true
                elseif key=="a" then
                    keys.a=true
                elseif key=="d" then
                    keys.d=true
                elseif key=="x" then
                    if flying==true then
                        flying=false
                    else
                        flying=true
                        start()
                    end
                end
            end)
            e2=mouse.KeyUp:connect(function(key)
                if key=="w" then
                    keys.w=false
                elseif key=="s" then
                    keys.s=false
                elseif key=="a" then
                    keys.a=false
                elseif key=="d" then
                    keys.d=false
                end
            end)
            start()
        else
            repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
            local mouse = game.Players.LocalPlayer:GetMouse()
            repeat wait() until mouse
            local plr = game.Players.LocalPlayer
            local torso = plr.Character.Head
            local flying = false
            local deb = true
            local ctrl = {f = 0, b = 0, l = 0, r = 0}
            local lastctrl = {f = 0, b = 0, l = 0, r = 0}
            local maxspeed = 5000
            local speed = 5000
            function Fly()
                local bg = Instance.new("BodyGyro", torso)
                bg.P = 9e4
                bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
                bg.cframe = torso.CFrame
                local bv = Instance.new("BodyVelocity", torso)
                bv.velocity = Vector3.new(0,0.1,0)
                bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
                repeat wait()
                    plr.Character:FindFirstChildWhichIsA('Humanoid').PlatformStand = true
                    if ctrl.l + ctrl.r ~= 100000 or ctrl.f + ctrl.b ~= 10000 then
                        speed = speed+.0+(speed/maxspeed)
                        if speed > maxspeed then
                            speed = maxspeed
                        end
                    elseif not (ctrl.l + ctrl.r ~= 5 or ctrl.f + ctrl.b ~= 5) and speed ~= 5 then
                        speed = speed-5
                        if speed > 5 then
                            speed = -2
                        end
                    end
                    if (ctrl.l + ctrl.r) ~= 5 or (ctrl.f + ctrl.b) ~= 5 then
                        bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
                        lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
                    elseif (ctrl.l + ctrl.r) == 5 and (ctrl.f + ctrl.b) == 5 and speed ~= 5 then
                        bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
                    else
                        bv.velocity = Vector3.new(0,0.1,0)
                    end
                    bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
                until not flying
                ctrl = {f = 0, b = 0, l = 0, r = 0}
                lastctrl = {f = 0, b = 0, l = 0, r = 0}
                speed = 5
                bg:Destroy()
                bv:Destroy()
                plr.Character:FindFirstChildWhichIsA('Humanoid').PlatformStand = false
            end
            mouse.KeyDown:connect(function(key)
                if key:lower() == "x" then
                    if flying then flying = false
                    else
                        flying = true
                        Fly()
                    end
                elseif key:lower() == "w" then
                    ctrl.f = FLYSPEED
                elseif key:lower() == "s" then
                    ctrl.b = -FLYSPEED
                elseif key:lower() == "a" then
                    ctrl.l = -FLYSPEED
                elseif key:lower() == "d" then
                    ctrl.r = FLYSPEED
                end
            end)
            mouse.KeyUp:connect(function(key)
                if key:lower() == "w" then
                    ctrl.f = 0
                elseif key:lower() == "s" then
                    ctrl.b = 0
                elseif key:lower() == "a" then
                    ctrl.l = 0
                elseif key:lower() == "d" then
                    ctrl.r = 0
                end
            end)
            Fly()
        end
    end)
    asdasdausduashd.AddButton("Fly Type", function()
            if FLYMODE == 'Default' then
            FLYMODE = 'IY'
        game.StarterGui:SetCore("SendNotification", {
        Title = "Luna",
        Text = 'Fly ( Glitchy ) / Reset To Change.',
        Duration = 2,
        })
        else
            FLYMODE = 'Default'
        game.StarterGui:SetCore("SendNotification", {
        Title = "Luna",
        Text = 'Default Fly / Reset To Change.',
        Duration = 2,
        })
        end
    end)
    
    asdasdausduashd.AddButton("Fly Speed [+]", function()
        FLYSPEED = FLYSPEED + 1
        game.StarterGui:SetCore("SendNotification", {
        Title = "Luna",
        Text = " [+] The Fly Speed Is Now, " ..(tostring(FLYSPEED))..".",
        Duration = 1,
    })
    end)
    
    asdasdausduashd.AddButton("Fly Speed [-]", function()
        FLYSPEED = FLYSPEED - 1
        game.StarterGui:SetCore("SendNotification", {
        Title = "Luna",
        Text = " [-] The Fly Speed Is Now, " ..(tostring(FLYSPEED))..".",
        Duration = 1,
    })
    end)
    
    asdasdausduashd.AddButton("Cam Fly ( M )", function()
    game.Players.LocalPlayer.DevCameraOcclusionMode = 'Invisicam'
    local mouse = game.Players.LocalPlayer:GetMouse() 
    local torso = game.Players.LocalPlayer.Character.HumanoidRootPart 
    local dir = {w = 0, s = 0, a = 0, d = 0} 
    local spd = 2 mouse.KeyDown:connect(function(key) 
    if key:lower() == "w" then dir.w = 1 
    elseif key:lower() == "s" then dir.s = 1
    elseif key:lower() == "a" then dir.a = 1 
    elseif key:lower() == "d" then dir.d = 1 
    elseif key:lower() == "q" then spd = spd + 1 
    elseif key:lower() == "e" then spd = spd - 1 
    end end) 
    mouse.KeyUp:connect(function(key) 
    if key:lower() == "w" then 
    dir.w = 0 
    elseif key:lower() == "s" then dir.s = 0 
    elseif key:lower() == "a" then dir.a = 0 
    elseif key:lower() == "d" then dir.d = 0 
    end end)
    
    
    enabled = false
    mouse.keyDown:connect(function(key)
    if (key) == "m" and enabled == false then
    enabled = true
    repeat wait(1/44)
    torso.Anchored = true
    game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true 
    torso.CFrame = CFrame.new(torso.Position, game.Workspace.CurrentCamera.CoordinateFrame.p) * CFrame.Angles(0,math.rad(180),0) * CFrame.new((dir.d-dir.a)*spd,0,(dir.s-dir.w)*spd)
    until enabled == false
    elseif enabled == false then
    game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
    torso.Anchored = false
    end
    if (key) == "m" and enabled == true then
    enabled = false
    game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
    torso.Anchored = false
    end
    end)
    end)
    
    asdasdausduashd.AddButton("Fake Macro ( B )", function()
        local Player = game:GetService("Players").LocalPlayer
        local Mouse = Player:GetMouse()
        local SpeedGlitch = false
        local Wallet = Player.Backpack:FindFirstChild("Wallet")
    
        local UniversalAnimation = Instance.new("Animation")
    
        function stopTracks()
            for _, v in next, game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
                if (v.Animation.AnimationId:match("rbxassetid")) then
                    v:Stop()
                end
            end
        end
    
        function loadAnimation(id)
            if UniversalAnimation.AnimationId == id then
                stopTracks()
                UniversalAnimation.AnimationId = "1"
            else
                UniversalAnimation.AnimationId = id
                local animationTrack = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(UniversalAnimation)
                animationTrack:Play()
            end
        end
    
        Mouse.KeyDown:Connect(function(Key)
            if Key == "b" then
                SpeedGlitch = not SpeedGlitch
                if SpeedGlitch == true then
                    stopTracks()
                    loadAnimation("rbxassetid://3189777795")
                    wait(1.5)
                    Wallet.Parent = Player.Character
                    wait(0.15)
                    Player.Character:FindFirstChild("Wallet").Parent = Player.Backpack
                    wait(0.05)
                    repeat game:GetService("RunService").Heartbeat:wait()
                        keypress(0x49)
                        game:GetService("RunService").Heartbeat:wait()
                        keypress(0x4F)
                        game:GetService("RunService").Heartbeat:wait()
                        keyrelease(0x49)
                        game:GetService("RunService").Heartbeat:wait()
                        keyrelease(0x4F)
                        game:GetService("RunService").Heartbeat:wait()
                    until SpeedGlitch == false
                end
            end
        end)
    end)
    
    asdasdausduashd.AddButton("New Fake Macro ( P ) [ BUGGY ]", function()
        local Player = game:GetService("Players").LocalPlayer
        local Mouse = Player:GetMouse()
        local SpeedGlitch = false
        local Wallet = Player.Backpack:FindFirstChild("Wallet")
    
        local UniversalAnimation = Instance.new("Animation")
    
        function stopTracks()
            for _, v in next, game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
                if (v.Animation.AnimationId:match("rbxassetid")) then
                    v:Stop()
                end
            end
        end
    
        function loadAnimation(id)
            if UniversalAnimation.AnimationId == id then
                stopTracks()
                UniversalAnimation.AnimationId = "1"
            else
                UniversalAnimation.AnimationId = id
                local animationTrack = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(UniversalAnimation)
                animationTrack:Play()
            end
        end
    
        Mouse.KeyDown:Connect(function(Key)
            if Key == "p" then
                SpeedGlitch = not SpeedGlitch
                if SpeedGlitch == true then
                    stopTracks()
                    loadAnimation("rbxassetid://3189777795")
                    wait(1.5)
                    Wallet.Parent = Player.Character
                    wait(0.15)
                    Player.Character:FindFirstChild("Wallet").Parent = Player.Backpack
                    wait(0.05)
                    repeat game:GetService("RunService").Heartbeat:wait()
                        keypress(0x49)
                        game:GetService("RunService").Heartbeat:wait()
                        keypress(0x4F)
                        game:GetService("RunService").Heartbeat:wait()
                        keyrelease(0x49)
                        game:GetService("RunService").Heartbeat:wait()
                        keyrelease(0x4F)
                        game:GetService("RunService").Heartbeat:wait()
                    until SpeedGlitch == false
                end
            end
        end)
    end)
    
    asdasdausduashd.AddButton("SuperHuman ( Z )", function()
        superhuman = false
        plr = game.Players.LocalPlayer
        mouse = plr:GetMouse()
        mouse.KeyDown:connect(function(key)
            if key == "z" and superhuman == false then
                superhuman = true
                game.Players.LocalPlayer.Character.Humanoid.Name = "Humz"
                game.Players.LocalPlayer.Character.Humz.WalkSpeed = 150
                game.Players.LocalPlayer.Character.Humz.JumpPower = 250
            elseif key == "z" and superhuman == true then
                superhuman = false
                game.Players.LocalPlayer.Character.Humz.WalkSpeed = 16
                game.Players.LocalPlayer.Character.Humz.JumpPower = 50
                game.Players.LocalPlayer.Character.Humz.Name = "Humanoid"
            end
        end)
    end)
    
    asdasdausduashd.AddButton("Editable SuperHuman ( Y )", function()
        superhumann = false
        plr = game.Players.LocalPlayer
        mouse = plr:GetMouse()
        mouse.KeyDown:connect(function(key)
            if key == "y" and superhumann == false then
                superhumann = true
                game.Players.LocalPlayer.Character.Humanoid.Name = "Slider"
                game.Players.LocalPlayer.Character.Slider.WalkSpeed = 16
                game.Players.LocalPlayer.Character.Slider.JumpPower = 50
            elseif key == "y" and superhumann == true then
                superhumann = false
                game.Players.LocalPlayer.Character.Slider.WalkSpeed = 16
                game.Players.LocalPlayer.Character.Slider.JumpPower = 50
                game.Players.LocalPlayer.Character.Slider.Name = "Humanoid"
            end
        end)
    end)
    
    asdasdausduashd.AddSlider("Editable SuperHuman / WalkSpeed", {Min = 0, Max = 500, Def = 16}, function(qweqwe2wqeweqweqweqweqweqweqweqweqe)
        game.Players.LocalPlayer.Character.Slider.WalkSpeed = qweqwe2wqeweqweqweqweqweqweqweqweqe
    end)
    
    asdasdausduashd.AddSlider("Editable SuperHuman / JumpPower", {Min = 0, Max = 1000, Def = 50}, function(qweqweqw9eqweqieiwe)
        game.Players.LocalPlayer.Character.Slider.JumpPower = qweqweqw9eqweqieiwe
    end)
    
    
    local AGAGAGAGAGAGAGA = ainnfdfs.AddPage("Combat")
    
    AGAGAGAGAGAGAGA.AddLabel("Combat Features")
    
    
    AGAGAGAGAGAGAGA.AddButton("FreeFist V1 ( U )", function()
        local localPlayer       = game:GetService("Players").LocalPlayer;
        local localCharacter    = localPlayer.Character
        local Mouse             = localPlayer:GetMouse();
        local FistControl       = false
        local LeftFist          = localCharacter.LeftHand;
        local RightFist         = localCharacter.RightHand;
    
    
        -- // Services
        local uis = game:GetService("UserInputService");
    
        -- // Coroutine Loop + Functions
        local loopFunction = function()
            LeftFist.CFrame  = CFrame.new(Mouse.Hit.p);
            RightFist.CFrame = CFrame.new(Mouse.Hit.p);
        end;
    
        local Loop
    
        local Start = function()
            Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
        end;
    
        local Pause = function()
            Loop:Disconnect()
        end;
    
        -- // Hotkeys
        Mouse.KeyDown:connect(function(key)
            if key == "u" then
                if (FistControl == false) then
                    FistControl = true;
                    Start();
                    pcall(function()
                        localCharacter.RightHand.RightWrist:Remove();
                        localCharacter.LeftHand.LeftWrist:Remove();
                    end);
                elseif (FistControl == true) then
                    FistControl = false;
                    Pause();
                    local rightwrist  = Instance.new("Motor6D");
                    rightwrist.Name   = "RightWrist";
                    rightwrist.Parent = localCharacter.RightHand;
                    rightwrist.C0     = CFrame.new(1.18422506e-07, -0.5009287, -6.81715525e-18, 1, 0, 0, 0, 1, 0, 0, 0, 1);
                    rightwrist.C1     = CFrame.new(3.55267503e-07, 0.125045404, 5.92112528e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1);
                    rightwrist.Part0  = localCharacter.RightLowerArm;
                    rightwrist.Part1  = localCharacter.RightHand;
    
                    local leftwrist   = Instance.new("Motor6D");
                    leftwrist.Name    = "LeftWrist";
                    leftwrist.Parent  = localCharacter.LeftHand;
                    leftwrist.C0      = CFrame.new(0.000475466368, -0.5009287, 7.59417072e-20, 1, 0, 0, 0, 1, 0, 0, 0, 1);
                    leftwrist.C1      = CFrame.new(0.000475821638, 0.125045404, 5.92112528e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1);
                    leftwrist.Part0   = localCharacter.LeftLowerArm;
                    leftwrist.Part1   = localCharacter.LeftHand;
                end;
            end;
        end);
    end)
    
    AGAGAGAGAGAGAGA.AddButton("FreeFist V2 ( T )", function()
            local player = game.Players.LocalPlayer
            local localPlayer       = game:GetService("Players").LocalPlayer;
            local localCharacter    = localPlayer.Character
            local Mouse             = localPlayer:GetMouse();
            local FistControl       = false
            local LeftFist          = localCharacter.LeftHand;
            local RightFist         = localCharacter.RightHand;
    
    
        for i,v in next, workspace:GetDescendants() do
            if v:IsA'Seat' then
                v:Destroy()
            end
        end
        pcall(function()
            player.Character.LeftHand.LeftWrist:Destroy();
            player.Character.RightHand.RightWrist:Destroy();
        end);
        local loopFunction = function()
            player.Character.LeftHand.CFrame  = CFrame.new(Mouse.Hit.p);
            player.Character.RightHand.CFrame = CFrame.new(Mouse.Hit.p);
        end;        
        local Loop
        local Start = function()
            Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
        end;         
        local Pause = function()
            Loop:Disconnect()
        end;
            Mouse.KeyDown:connect(function(key)
                if key == "t" then
                if FistControl == false then
                    FistControl = true;
                    Start();
                elseif FistControl == true then
                    FistControl = false;
                    Pause();
                    player.Character.LeftHand.CFrame  = player.Character.LeftLowerArm.CFrame
                    player.Character.RightHand.CFrame = player.Character.RightLowerArm.CFrame
                end;
            end;
        end)
    end)
    
    AGAGAGAGAGAGAGA.AddButton("Anti Stomp", function()
        pcall(
            function()
                if tostring(game.PlaceId) == "2788229376" then
                    local corepackages = game:GetService "CorePackages"
                    local localplayer = game:GetService "Players".LocalPlayer
                    local run = game:GetService "RunService"
                    run:BindToRenderStep(
                        "rrrrrrrrrrr",
                        2000,
                        function()
                            pcall(
                                function()
            if localplayer.Character.Humanoid.Health <= 5 then
            for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v:Destroy()
                end
            end
    end
    end)
    end)
    end
    end)
    end)
    
    AGAGAGAGAGAGAGA.AddButton("Auto Stomp ( H )", function()
        autostomp = false
        game:GetService("RunService").Stepped:connect(function()
            if autostomp then
                game.ReplicatedStorage.MainEvent:FireServer("Stomp")
            end
        end)
        plr = game.Players.LocalPlayer
        mouse = plr:GetMouse()
        mouse.KeyDown:connect(function(key)
            if key == "h" then
                autostomp = not autostomp
                game.ReplicatedStorage.MainEvent:FireServer("Stomp")
            end
        end)
    end)
    
    AGAGAGAGAGAGAGA.AddToggle("Reach", false, function(bool)
    local player = game.Players.LocalPlayer
        fistreac = false
    if bool then
            fistreac = true
            while fistreac == true do
                    wait()
                    local success, err = pcall(function()
                        if player.Character.BodyEffects.Attacking.Value == true then
                            for i,v in pairs(game:GetService('Players'):GetChildren()) do
                                if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.LeftHand.Position).Magnitude <= 50 then
                                    if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                                        if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild('Handle') then
                                            firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle, v.Character.UpperTorso, 0)
                                        else
                                            firetouchinterest(game.Players.LocalPlayer.Character['RightHand'], v.Character.UpperTorso, 0)
                                            firetouchinterest(game.Players.LocalPlayer.Character['LeftHand'], v.Character.UpperTorso, 0)
                                            firetouchinterest(game.Players.LocalPlayer.Character['RightFoot'], v.Character.UpperTorso, 0)
                                            firetouchinterest(game.Players.LocalPlayer.Character['LeftFoot'], v.Character.UpperTorso, 0)
                                            firetouchinterest(game.Players.LocalPlayer.Character['RightLowerLeg'], v.Character.UpperTorso, 0)
                                            firetouchinterest(game.Players.LocalPlayer.Character['LeftLowerLeg'], v.Character.UpperTorso, 0)
                                        end
                                    end
                                end
                            end
                        end
                    end)
            end
    else
        fistreac = false
    end
    end)
    
    AGAGAGAGAGAGAGA.AddButton("Melee Reach", function()
        
        local Plr = game.Players.LocalPlayer
for i,v in pairs(Plr.Character:GetChildren()) do
    if v:IsA("Tool") then
        if v.Name ~= "Combat" then
            local pp = v.Handle
            v.TextureId = 0
            if v.Name ~= "[SledgeHammer]" and v.Name ~= "[StopSign]" then
                pp.MeshId = 0
                pp.Transparency = 1
            elseif v.Name == "[SledgeHammer]" then v.Part:Destroy() wait(0.1) v.Part:Destroy()
            elseif v.Name == "[StopSign]" then v.Sign:Destroy() end
            
            pp.Size = Vector3.new(50, 50, 50)
            print(v)
            Plr.Character.Humanoid:UnequipTools()
            local tooloutline = Instance.new("SelectionBox",v.Handle)
            tooloutline.Adornee = pp
        else 
            for i,v in ipairs(Plr.Character:GetDescendants()) do
                 if v:IsA("MeshPart") then v.Massless = true
                    v.CanCollide = false
                    v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
                end
            end

            for i,v in ipairs(game.workspace:GetDescendants()) do
                if v:IsA("Seat") then 
                    v:Destroy()
                end
            end

            Plr.Character.RightHand.Size = Vector3.new(35, 35, 35)
            Plr.Character.RightHand.Transparency = 1

            game:GetService('RunService').Stepped:connect(function()
                if Plr.Character:FindFirstChild("Combat") and not Plr.Character.RightHand:FindFirstChild("ppsuc") then
                    local HandHitBox = Instance.new("SelectionBox",Plr.Character.RightHand)
                    HandHitBox.Adornee = Plr.Character.RightHand
                    HandHitBox.Name = "ppsuc"
                elseif not Plr.Character:FindFirstChild("Combat") and Plr.Character.RightHand:FindFirstChild("ppsuc") then
                    Plr.Character.RightHand.ppsuc:Destroy()
                end
            end)
        end
    end
end
end)
    
 
    
    local AFAFAFAFAFAFAFAFAFAFAFAFA = ainnfdfs.AddPage("Miscellaneous")
    
        AFAFAFAFAFAFAFAFAFAFAFAFA.AddLabel("Miscellaneous Features")

        AFAFAFAFAFAFAFAFAFAFAFAFA.AddToggle("Cash Aura", false, function(state) 
            cashaura = false
        if state then
        cashaura = true
        if state and cashaura == true then
        while state and cashaura == true do
            wait(0.6)
                        for i,v in pairs(game:GetService('Workspace')['Ignored']['Drop']:GetChildren()) do
                            if v:IsA('Part') then
                                if (v.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 14 then
                                    fireclickdetector(v:FindFirstChild('ClickDetector'))
                                end
                            end
                        end
        end
        else
            cashaura = false
        end
        end
        end)
    
        AFAFAFAFAFAFAFAFAFAFAFAFA.AddToggle("AutoFarm", false, function(bool)
            repeat
              wait()
          until game:IsLoaded()
          local gm = getrawmetatable(game)
          setreadonly(gm, false)
          local namecall = gm.__namecall
          gm.__namecall =
              newcclosure(
              function(self, ...)
                  local args = {...}
                  if not checkcaller() and getnamecallmethod() == "FireServer" and tostring(self) == "MainEvent" then
                      if tostring(getcallingscript()) ~= "Framework" then
                          return
                      end
                  end
                  if not checkcaller() and getnamecallmethod() == "Kick" then
                      return
                  end
                  return namecall(self, unpack(args))
              end
          )
          
          local LocalPlayer = game:GetService("Players").LocalPlayer
          
          function gettarget()
              local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:wait()
              local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
              local maxdistance = math.huge
              local target
              for i, v in pairs(game:GetService("Workspace").Cashiers:GetChildren()) do
                  if v:FindFirstChild("Head") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                      local distance = (HumanoidRootPart.Position - v.Head.Position).magnitude
                      if distance < maxdistance then
                          target = v
                          maxdistance = distance
                      end
                  end
              end
              return target
          end
          
          for i, v in pairs(workspace:GetDescendants()) do
              if v:IsA("Seat") then
                  v:Destroy()
              end
          end
          
          
          shared.MoneyFarm = bool -- Just execute shared.MoneyFarm = false to stop farming
          
          while shared.MoneyFarm do
              wait()
              local Target = gettarget()
              repeat
                  wait()
                  pcall(
                      function()
                          local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:wait()
                          local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
                          local Combat = LocalPlayer.Backpack:FindFirstChild("Combat") or Character:FindFirstChild("Combat")
                          if not Combat then
                              Character:FindFirstChild("Humanoid").Health = 0
                              return
                          end
                          HumanoidRootPart.CFrame = Target.Head.CFrame * CFrame.new(0, -2.5, 3)
                          Combat.Parent = Character
                          Combat:Activate()
                      end
                  )
              until not Target or Target.Humanoid.Health < 0
              for i, v in pairs(game:GetService("Workspace").Ignored.Drop:GetDescendants()) do
                  if v:IsA("ClickDetector") and v.Parent and v.Parent.Name:find("Money") then
                      local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:wait()
                      local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
                      if (v.Parent.Position - HumanoidRootPart.Position).magnitude <= 18 then
                          repeat
                              wait()
                              fireclickdetector(v)
                          until not v or not v.Parent.Parent
                      end
                  end
              end
              wait(1)
              end
        end)

    
    
        AFAFAFAFAFAFAFAFAFAFAFAFA.AddLabel("More Miscellaneous Features :")
        
        AFAFAFAFAFAFAFAFAFAFAFAFA.AddButton("Crash Server", function()
warn("This..>-!Instantly Crash Everyone")--EFFECTS YOU THO
--instantly crash people.
x=math.huge
for i=1,x do
    wait()
    for _, player in pairs(game.Players:GetPlayers()) do
        if player.Character then
            local lag = Instance.new ("HopperBin")-- the lag
            lag.Name = "Crash-Lag-Crash-Lag-Crash-Lag-Crash-Lag-Crash-Lag-Crash-Lag-Crash-Lag-Crash-Lag-Crash-Lag-Crash-Lag-Crash-Lag-Crash-Lag-Crash-Lag-Crash-Lag-Crash-Lag-Crash-Lag-Crash-Lag-Crash-Lag-Crash"
            lag.Parent = player.Backpack
            wait()
            local f = Instance.new ("ForceField")
            local v = Instance.new ("Fire")
            local b = Instance.new ("Smoke")
            f.Parent = workspace
            v.Parent = workspace
            b.Parent = workspace
            player.Character:MoveTo(Vector3.new(f, v, b))
            player.Character:MoveTo(Vector3.new(f, v, b))
            player.Character:MoveTo(Vector3.new(f, v, b))
        end
    end
end
wait(1.5)


local prefixe = "/"

local Message = (prefixe.. "clean".." "):rep(100000)

for i = 1, 750 do
    game.Players:Chat(Message)
end
end)
        
        AFAFAFAFAFAFAFAFAFAFAFAFA.AddButton("Throw Rpgs", function()
        
        -- SETTINGS --
local speed = 20
--------------

local plr = game.Players.LocalPlayer
local Mouse = plr:GetMouse()

game.Workspace.Ignored.ChildAdded:connect(function(child)
    wait()
    if child.Name == "Launcher" and math.abs((child.Position-plr.Character.HumanoidRootPart.Position).Magnitude)<30 then
        child:WaitForChild("BodyVelocity"):Destroy()
        local tool = Instance.new("Tool")
        local handle = Instance.new("Part", tool)
        handle.Name = "Handle"
        handle.Transparency = 1
        for i=1,2 do wait()
            plr.Character.Humanoid:EquipTool(tool)
        end
        local m = Instance.new("BodyPosition")
        m.Position = handle.Position
        m.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        m.P = 1e5
        m.Parent = child
        spawn(function()
            while m and m.Parent ~= nil do wait()
                child.CFrame = handle.CFrame*CFrame.new(0, 0, -2)*CFrame.Angles(math.rad(90), 0, 0)
                m.Position = (handle.CFrame*CFrame.new(0, 0, -2)).p
            end
        end)
        tool.Activated:wait()
        local target = Mouse.Target
        tool:Destroy()
        m:Destroy()
        local e = Instance.new("BodyVelocity", child)
        wait()
        e.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        print(target)
        while child and child.Parent ~= nil do
            child.CFrame = CFrame.lookAt(child.CFrame.p, target.CFrame.p)*CFrame.Angles(math.rad(90), 0, 0)
            e.Velocity = ((child.CFrame * CFrame.new(0, -speed, 0)).p - child.CFrame.p)
            game.RunService.Stepped:wait()
            setsimulationradius(math.huge^math.huge, math.huge)
        end
    end
end)
end)
        
        AFAFAFAFAFAFAFAFAFAFAFAFA.AddButton("Rocket Ride", function()
                
        -- SETTINGS --
local speed = 20
local turnSpeed = 3
--------------

local plr = game.Players.LocalPlayer
local Mouse = plr:GetMouse()
local peniscock
local movers
local control = {w=false,a=false,s=false,d=false,q=false,e=false}

game:GetService("RunService").Stepped:connect(function()
    if plr.PlayerGui:FindFirstChild("MainScreenGui") and plr.PlayerGui.MainScreenGui:FindFirstChild("Bar") and plr.PlayerGui.MainScreenGui.Bar:FindFirstChild("Speed") then
        plr.PlayerGui.MainScreenGui.Bar.Speed.bar.Size = UDim2.new(speed / 100 * 0.95, 0, 0.83, 0)
    else
        local c = plr.PlayerGui.MainScreenGui.Bar.HP
        local g = c:Clone()
        g.Name = "Speed"
        g.Position = UDim2.new(0.5, 0, 1, -120)
        g.bar.BackgroundColor3 = Color3.fromRGB(255, 155, 0)
        g.Picture.Image.Image = "rbxassetid://181035717"
        g.TextLabel.Text = "Speed"
        g.Parent = c.Parent
    end
    if peniscock and peniscock.Parent ~= nil then
        setsimulationradius(math.huge^math.huge, math.huge)
        if movers then
            movers[1].Position = (peniscock.CFrame*CFrame.new(0, -speed/20, -2))*CFrame.Angles(math.rad(-90), 0, 0).p
            movers[2].cframe = (peniscock.CFrame*CFrame.new(0, -speed/20, -2))*CFrame.Angles(math.rad(-90), 0, 0)
            if plr.Character.Humanoid.Sit ~= true then
                peniscock = nil
            end
        else
            movers={}
            local bp = Instance.new("BodyPosition", plr.Character.LowerTorso)
            local bg = Instance.new("BodyGyro", plr.Character.LowerTorso)
            bp.P = 1e5
            bp.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            bg.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
            movers[1], movers[2] = bp, bg
        end
        if control.w then
            peniscock.CFrame = peniscock.CFrame * CFrame.Angles(math.rad(turnSpeed), 0, 0)
        end
        if control.s then
            peniscock.CFrame = peniscock.CFrame * CFrame.Angles(math.rad(-turnSpeed), 0, 0)
        end
        if control.a then
            peniscock.CFrame = peniscock.CFrame * CFrame.Angles(0, 0, math.rad(-turnSpeed))
        end
        if control.d then
            peniscock.CFrame = peniscock.CFrame * CFrame.Angles(0, 0, math.rad(turnSpeed))
        end
    end
    if control.q and speed > 0 then
        speed = speed - 1
    end
    if control.e and speed < 100 then
        speed = speed + 1
    end
end)

Mouse.KeyDown:connect(function(KEY)
    local key = KEY:lower()
    if control[key] ~= nil then
        control[key]=true
    end
end)

Mouse.KeyUp:connect(function(KEY)
    local key = KEY:lower()
    if control[key] ~= nil then
        control[key]=false
    end
end)

game.Workspace.Ignored.ChildAdded:connect(function(child)
    wait()
    if child.Name == "Launcher" and math.abs((child.Position-plr.Character.HumanoidRootPart.Position).Magnitude)<30 then
        plr.Character.Humanoid.Sit = true
        peniscock = child
        child:WaitForChild("BodyVelocity"):Destroy()
        local e = Instance.new("BodyVelocity", child)
        while peniscock and peniscock.Parent ~= nil do
            game.RunService.Stepped:wait()
            e.Velocity = ((child.CFrame * CFrame.new(0, -speed, 0)).p - child.CFrame.p)
        end
        movers[1]:Destroy()
        movers[2]:Destroy()
        movers = nil
    end
end)
end)
                
        AFAFAFAFAFAFAFAFAFAFAFAFA.AddButton("Super Gun", function()
    local sucess = nil
while wait(0.5) do
    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:FindFirstChild("Ammo") and v.Ammo.Value ~= 0 then
            v.Parent = game.Players.LocalPlayer.Character
        end
    end
    for ii, vv in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if vv:FindFirstChild("Ammo") and vv.Ammo.Value == 0 then
            game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
        end
    end
    for iii, vvv in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if vvv:FindFirstChild("Ammo") and vvv.Ammo.Value ~= 0 then 
            sucess = true
        end
    end
    if not sucess ==  true then
        for iiii, vvvv in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
            if vvvv:FindFirstChild("Ammo") and vvvv.Ammo.Value == 0 then
                game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(vvvv)
                game.ReplicatedStorage.MainEvent:FireServer("Reload", vvvv)
                repeat wait() until vvvv.Ammo.Value ~= 0
            end
        end
    end
    sucess = nil
end
end)
        
        AFAFAFAFAFAFAFAFAFAFAFAFA.AddButton("Split Nade ( V )", function()
            
            local plr = game.Players.LocalPlayer
local lastpos = plr.Character.HumanoidRootPart.CFrame

repeat wait()
    plr.Character.HumanoidRootPart.CFrame = game.Workspace.Ignored.Shop["[Grenade] - $700"].Head.CFrame
    fireclickdetector(game.Workspace.Ignored.Shop["[Grenade] - $700"].ClickDetector)
until game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.V)
plr.Character.HumanoidRootPart.CFrame = lastpos

for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    wait(0.05)
    spawn(function()
        if v.Name == "[Grenade]" then
            v.Parent = plr.Character; v:Activate(); wait(0.1); v:Deactivate(); wait(0.1); v:Activate()
        end
    end)
end
end)
        
        AFAFAFAFAFAFAFAFAFAFAFAFA.AddButton("Money ESP", function()
            
        local ESPholder = Instance.new("Folder", game.CoreGui)
function cham(object)
    if object.Name == "MoneyDrop" then
        local a = Instance.new("BoxHandleAdornment", ESPholder)
        a.Adornee = object
        a.AlwaysOnTop = true
        a.ZIndex = 10
        a.Size = object.Size
        a.Transparency = 0.3
        a.Color = object.BrickColor
        local bill = object:WaitForChild("BillboardGui")
        bill.AlwaysOnTop = true
        bill.Size = UDim2.new(2, 10, 1, 5)
        spawn(function()
            while true do
                if object.Parent.ChildRemoving:wait() == object then
                    a:Destroy()
                    break
                end
            end
        end)
    end
end
for i, v in next, game.Workspace.Ignored.Drop:GetChildren() do
    cham(v)
end
game.Workspace.Ignored.Drop.ChildAdded:connect(cham)
end)
        
        AFAFAFAFAFAFAFAFAFAFAFAFA.AddButton("Homing Rocket ( W,A,S,D )", function()
            -- SETTINGS --
        local speed = 20
    local turnSpeed = 3
--------------

local plr = game.Players.LocalPlayer
local Mouse = plr:GetMouse()
local peniscock
local movers
local control = {q=false,e=false,w=false,a=false,s=false,d=false}

game:GetService("RunService").Stepped:connect(function()
    if plr.PlayerGui:FindFirstChild("MainScreenGui") and plr.PlayerGui.MainScreenGui:FindFirstChild("Bar") and plr.PlayerGui.MainScreenGui.Bar:FindFirstChild("Speed") then
        plr.PlayerGui.MainScreenGui.Bar.Speed.bar.Size = UDim2.new(speed / 100 * 0.95, 0, 0.83, 0)
    else
        local c = plr.PlayerGui.MainScreenGui.Bar.HP
        local g = c:Clone()
        g.Name = "Speed"
        g.Position = UDim2.new(0.5, 0, 1, -120)
        g.bar.BackgroundColor3 = Color3.fromRGB(255, 155, 0)
        g.Picture.Image.Image = "rbxassetid://181035717"
        g.TextLabel.Text = "Speed"
        g.Parent = c.Parent
    end
    if peniscock and peniscock.Parent ~= nil then
        setsimulationradius(math.huge^math.huge, math.huge)
        if plr.Character.Humanoid.Sit ~= true then
            peniscock = nil
        end
        peniscock.CFrame = CFrame.lookAt(peniscock.CFrame.p, Mouse.Hit.p)*CFrame.Angles(math.rad(90), 0, 0)
        local vel = CFrame.new(0, 0, 0)
        if control.w then
            vel = vel * CFrame.new(0, -speed, 0)
        end
        if control.s then
            vel = vel * CFrame.new(0, speed, 0)
        end
        if control.a then
            vel = vel * CFrame.new(-speed, 0, 0)
        end
        if control.d then
            vel = vel * CFrame.new(speed, 0, 0)
        end
        peniscock.BodyVelocity.Velocity = ((peniscock.CFrame * vel).p - peniscock.CFrame.p)
    end
    if control.q and speed > 0 then
        speed = speed - 1
    end
    if control.e and speed < 100 then
        speed = speed + 1
    end
end)

Mouse.KeyDown:connect(function(KEY)
    local key = KEY:lower()
    if control[key] ~= nil then
        control[key]=true
    end
end)

Mouse.KeyUp:connect(function(KEY)
    local key = KEY:lower()
    if control[key] ~= nil then
        control[key]=false
    end
end)

game.Workspace.Ignored.ChildAdded:connect(function(child)
    wait()
    if child.Name == "Launcher" and math.abs((child.Position-plr.Character.HumanoidRootPart.Position).Magnitude)<30 then
        local old = game.Workspace.CurrentCamera.CameraSubject
        plr.Character.Humanoid.Sit = true
        game.Workspace.CurrentCamera.CameraSubject = child
        peniscock = child
        child:WaitForChild("BodyVelocity"):Destroy()
        local e = Instance.new("BodyVelocity", child)
        while peniscock and peniscock.Parent ~= nil do
            game.RunService.Stepped:wait()
        end
        wait(0.5)
        game.Workspace.CurrentCamera.CameraSubject = old
    end
end)
end)
        
        AFAFAFAFAFAFAFAFAFAFAFAFA.AddButton("Anti Lag", function()
            local decalsyeeted = true
            local g = game
            local w = g.Workspace
            local l = g.Lighting
            local t = w.Terrain
            t.WaterWaveSize = 0
            t.WaterWaveSpeed = 0
            t.WaterReflectance = 0
            t.WaterTransparency = 0
            l.GlobalShadows = false
            l.FogEnd = 9e9
            l.Brightness = 0
            settings().Rendering.QualityLevel = "Level01"
            for i, v in pairs(g:GetDescendants()) do
                if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                    v.Material = "Plastic"
                    v.Reflectance = 0
                elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
                    v.Transparency = 1
                elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                    v.Lifetime = NumberRange.new(0)
                elseif v:IsA("Explosion") then
                    v.BlastPressure = 1
                    v.BlastRadius = 1
                elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
                    v.Enabled = false
                elseif v:IsA("MeshPart") then
                    v.Material = "Plastic"
                    v.Reflectance = 0
                    v.TextureID = 10385902758728957
                end
            end
            for i, e in pairs(l:GetChildren()) do
                if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
                    e.Enabled = false
                end
            end
        end)
        
    AFAFAFAFAFAFAFAFAFAFAFAFA.AddButton("Auto Arrest", function()
          
 wait(0.5); if _G.AutoArrest == false or game.PlaceId ~= 2788229376 then return else repeat wait() until game.Players.LocalPlayer end

wait(15)
for i, v in next, game.Workspace:GetDescendants() do
	if v:IsA("Seat") then
		v:Destroy()
	end
end
local Plr = game.Players.LocalPlayer

function serverhop()
    print("PENIS")
	Plr:Destroy()
	local x = {}
	for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
		if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
			x[#x + 1] = v.id
		end
	end
	if #x > 0 then
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
	end
end

spawn(function()
    wait(300)
    serverhop()
end)

game:GetService("RunService").Stepped:connect(function()
    Plr.Character.Humanoid:ChangeState(11)
end)
Plr.CharacterAdded:Connect(function(character)
    repeat wait() until character:FindFirstChild("FULLY_LOADED_CHAR")
    e(character)
end)
function e(character)
    for i, v in pairs(game.Workspace.Ignored.ItemsDrop:GetChildren()) do
        if v:FindFirstChild("[Knife]") and Plr.Character:FindFirstChild("[Knife]") == nil and Plr.Backpack:FindFirstChild("[Knife]") == nil then
            Plr.Character.HumanoidRootPart.CFrame = v.CFrame
            wait(1)
        end
    end
    for i, v in pairs(character:GetChildren()) do
        if v:FindFirstChild("LocalScript") then
            v:Destroy()
        end
    end
end
e(Plr.character)
local target
while wait() do
    target = nil
    local highest = 0
    for i, v in pairs(game.Players:GetPlayers()) do
        if v:FindFirstChild("DataFolder") and v.Character:FindFirstChild("FULLY_LOADED_CHAR") and v.Character.BodyEffects:FindFirstChild("Defense") and tonumber(v.DataFolder.Information.Wanted.Value) > 500 and tonumber(v.DataFolder.Information.Wanted.Value) >= highest and v.Character.BodyEffects:FindFirstChild("Armor") then
            target = v 
            highest = tonumber(v.DataFolder.Information.Wanted.Value)
        end
    end
    if not target then serverhop() end
    local e = true
    local penis = 0
    local bagged = false
    local A = false
    spawn(function() pcall(function()
        while bagged == false do
            if target and target.Character and target.Character:FindFirstChild("Christmas_Sock") == nil and penis <= 5 and Plr.Character.Humanoid.Health > 80 then
                if Plr.Backpack:FindFirstChild("[BrownBag]") == nil then
                    A = false
                    pcall(function()
                        repeat wait()
                            Plr.character.HumanoidRootPart.CFrame = CFrame.new(-316.034454, 48.2788467, -723.860474, 0.983254969, -0.000297372608, -0.182234928, 0.000218386791, 0.999999881, -0.000453495246, 0.182235047, 0.000406103791, 0.98325491)
                            fireclickdetector(game:GetService("Workspace").Ignored.Shop["[BrownBag] - $25"].ClickDetector)
                        until Plr.Backpack:FindFirstChild("[BrownBag]") ~= nil
                    end)
                    A = true
                end
                Plr.Character.Humanoid:EquipTool(Plr.Backpack["[BrownBag]"])
                Plr.Character["[BrownBag]"]:Activate()
                penis = penis + 1
            elseif penis >= 2 or target.Character:FindFirstChild("Christmas_Sock") or not target then
                bagged = true
            end
            wait(3)
        end
    end) end)
    spawn(function()
        while e do wait()
            pcall(function()
                if Plr.Character.Humanoid.Health > 80 then
                    if not target.Character.BodyEffects["K.O"].Value then
                        if A then
                            Plr.Character.HumanoidRootPart.CFrame = CFrame.new(target.Character.UpperTorso.Position + Vector3.new(0, -5, 0))
                        end
                    else
                        Plr.Character.HumanoidRootPart.CFrame = target.Character.UpperTorso.CFrame
                    end
                else
                    Plr.Character.HumanoidRootPart.CFrame = CFrame.new(0, 999, 0)
                    if Plr.Character:FindFirstChild("[Chicken]") == nil or Plr.Backpack:FindFirstChild("[Chicken]") == nil then
                        Plr.Character.HumanoidRootPart.CFrame = game.Workspace.Ignored.Shop["[Chicken] - $7"].Head.CFrame
                        wait(0.5)
                        fireclickdetector(game.Workspace.Ignored.Shop["[Chicken] - $7"].ClickDetector)
                    end
                    pcall(function()Plr.Character.Humanoid:EquipTool(Plr.Backpack["[Chicken]"])end)
                    pcall(function()
                        Plr.Character["[Chicken]"]:Activate()
                        wait(0.1)
                        Plr.Character["[Chicken]"]:Deactivate()
                    end)
                end
            end)
        end
    end)
    repeat wait() until bagged
    pcall(function()
        repeat wait()
            repeat wait()
                pcall(function()
                if Plr.Character.Humanoid.Health > 80 then
                    pcall(function()Plr.Character.Humanoid:EquipTool(Plr.Backpack["[Knife]"])end)
                    wait(0.1)
                        Plr.Character["[Knife]"].GripPos = Vector3.new(0, 5, 0)
                        Plr.Character["[Knife]"].Handle.Size = Vector3.new(20, 20, 20)
                        Plr.Character["[Knife]"]:Activate()
                        wait(2)
                        Plr.Character["[Knife]"]:Deactivate()
                        wait(1)
                    end
                end)
            until not target or target.Character.BodyEffects["K.O"].Value or game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.V)
            repeat wait() 
                if Plr.Character.Humanoid.Health > 80 then
                    pcall(function()Plr.Character.Humanoid:EquipTool(Plr.Backpack.Cuff)end)
                    pcall(function()
                        Plr.Character.Cuff:Activate()
                        wait(0.1)
                        Plr.Character.Cuff:Deactivate()
                    end)
                end
            until not target.Character.BodyEffects["K.O"].Value or game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.V)
        until tonumber(target.DataFolder.Information.Wanted.Value) == 0 or game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.V)
    end)
    e = false
end
end)

AFAFAFAFAFAFAFAFAFAFAFAFA.AddButton("Kill All ( Grenades )", function()
    local plr = game.Players.LocalPlayer
local lastpos = plr.Character.HumanoidRootPart.CFrame
local playercount; local greadecount; local pp = {}
local cock = true
for I in pairs(game.Players:GetPlayers()) do
    playercount = I
end

game:GetService('RunService').Stepped:connect(function()
	setsimulationradius(math.huge)
end)

spawn(function()
    while cock do wait()
        for i, v in pairs(game.Workspace.Ignored:GetChildren()) do
            if v.Name == "Handle" then
                for index in pairs(pp) do
                    table.insert(pp, v)
                end
                v.Name = tostring(i)
            end
        end
    end
end)

repeat wait()
    plr.Character.HumanoidRootPart.CFrame = game.Workspace.Ignored.Shop["[Grenade] - $700"].Head.CFrame
    fireclickdetector(game.Workspace.Ignored.Shop["[Grenade] - $700"].ClickDetector)
    for ii, vv in pairs(plr.Backpack:GetChildren()) do
        grenadecount = ii
    end
until grenadecount >= playercount
plr.Character.HumanoidRootPart.CFrame = lastpos

for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    spawn(function()
        if v.Name == "[Grenade]" then
            v.Parent = plr.Character; v:Activate(); wait(0.1); v:Deactivate(); wait(0.1); v:Activate()
        end
    end)
end

for i, v in pairs(game.Players:GetPlayers()) do
    if v ~= plr then
        local mover = Instance.new("BodyPosition", pp[1])
        mover.P = 1e5
        table.remove(pp, 1)
        spawn(function()
            while wait() do
                mover.Position = v.Character.HumanoidRootPart.Position
            end
        end)
    end
end
cock = false
end)

    AFAFAFAFAFAFAFAFAFAFAFAFA.AddButton("Gremlin ( T )", function()

local HeadPos = game.Players.LocalPlayer.Character.Head.Position.Y - game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y
local Plr = game.Players.LocalPlayer
mouse = Plr:GetMouse()
mouse.KeyDown:connect(function(key)
    if key == "t" then
        if cock then cock = false 
            Plr.Character.Head.Position = Plr.Character.Head.Position + Vector3.new(0, math.huge, 0)
        else cock = true 
            Plr.Character.Head.Position = Plr.Character.HumanoidRootPart.Position.Y + HeadPos
        end
    end
end)
end)

        
    AFAFAFAFAFAFAFAFAFAFAFAFA.AddButton("Bike Fly", function()
        
        local speed = 20
local old
local Plr = game.Players.LocalPlayer
local wheels = {}
local control = {q=false,e=false,w=false,a=false,s=false,d=false}
local Mouse = Plr:GetMouse()

Mouse.KeyDown:connect(function(KEY)
    local key = KEY:lower()
    if control[key] ~= nil then
        control[key]=true
    end
end)

Mouse.KeyUp:connect(function(KEY)
    local key = KEY:lower()
    if control[key] ~= nil then
        control[key]=false
    end
end)

while game.RunService.Stepped:wait() do
    local seat = (Plr.Character or Plr.CharacterAdded:wait()):WaitForChild("Humanoid").SeatPart
    if Plr.PlayerGui:FindFirstChild("MainScreenGui") and Plr.PlayerGui.MainScreenGui:FindFirstChild("Bar") and Plr.PlayerGui.MainScreenGui.Bar:FindFirstChild("Speed") then
        Plr.PlayerGui.MainScreenGui.Bar.Speed.bar.Size = UDim2.new(speed / 100 * 0.95, 0, 0.83, 0)
    else
        local c = Plr.PlayerGui.MainScreenGui.Bar.HP
        local g = c:Clone()
        g.Name = "Speed"
        g.Position = UDim2.new(0.5, 0, 1, -120)
        g.bar.BackgroundColor3 = Color3.fromRGB(255, 155, 0)
        g.Picture.Image.Image = "rbxassetid://181035717"
        g.TextLabel.Text = "Speed"
        g.Parent = c.Parent
    end
    if seat ~= nil and seat:IsDescendantOf(game.Workspace.Vehicles) then
        if seat ~= old then
            if old then
                old.Vel:Destroy()
                old.Gyro:Destroy()
            end
            old = seat
            for i = 1, 2 do
                if wheels[i] then
                    wheels[i][2].Parent = wheels[i][1]
                end
                local wheel = seat.Parent.Wheel
                wheels[i] = {seat.Parent, wheel}
                wheel:remove()
            end
            local gyro = Instance.new("BodyGyro", seat)
            gyro.Name = "Gyro"
            local pos = Instance.new("BodyVelocity", seat)
            pos.Name = "Vel"
            gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            pos.MaxForce = Vector3.new(9e9, 9e9, 9e9)
        else 
            seat.Gyro.cframe = workspace.CurrentCamera.CoordinateFrame
            local vel = CFrame.new(0, 0, 0)
            if control.w then
                vel = vel * CFrame.new(0, 0, -speed)
            end
            if control.s then
                vel = vel * CFrame.new(0, 0, speed)
            end
            if control.a then
                vel = vel * CFrame.new(-speed, 0, 0)
            end
            if control.d then
                vel = vel * CFrame.new(speed, 0, 0)
            end
            seat.Vel.Velocity = (seat.CFrame*vel).p - seat.CFrame.p
        end
    end
    if control.e and speed<100 then
        speed = speed + 1
    end
    if control.q and speed > 0 then
        speed = speed - 1
    end
end
end)
        
    AFAFAFAFAFAFAFAFAFAFAFAFA.AddButton("Auto Tool Remover", function()
    
            local Tools = {"[LockPicker]","[Knife]"}
            while true do
                 wait()
                for _, FindTools in ipairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if FindTools:IsA("Tool") then
                        for i, n in pairs(Tools) do
                            if FindTools.Name == n then
                                FindTools:Destroy()
                                 end
                            end
                        end
                    end
                end
            end)
        
    AFAFAFAFAFAFAFAFAFAFAFAFA.AddButton("Anti Display Name", function()
        local AntiDisplayName = loadstring(game:HttpGet('https://raw.githubusercontent.com/AreexYT/Random-Scripts/main/AntiDisplayNameV6.lua'))(function()
        getgenv().Preferences = {}
    end)
    
    Preferences = {
        RetroNaming = false,
        ShowOriginalName = true,
        ApplyToLeaderboard = true,
        IdentifyFriends = {Toggle = true, Identifier = '[Friend]'},
        IdentifyBlocked = {Toggle = true, Identifier = '[Blocked]'},
        IdentifyPremium = {Toggle = true, Identifier = '[Premium]'},
        IdentifyDeveloper = {Toggle = true, Identifier = '[Game Dev]'},
        SpoofLocalPlayer = {Toggle = false, UseRandomName = true, NewName = 'Random Name Lol'},
        Orientation = 'Vertical'
    }
    
    end)
    
    AFAFAFAFAFAFAFAFAFAFAFAFA.AddButton("Xray ( X )", function()
        local t=false
    
    local function scan(z,t)
    for _,i in pairs(z:GetChildren()) do
    if i:IsA("BasePart") and not i.Parent:FindFirstChild("Humanoid") and not i.Parent.Parent:FindFirstChild("Humanoid") then
    i.LocalTransparencyModifier=t
    end
    
    scan(i,t)
    end
    end
    
    function x(v)
    if v then
    scan(workspace,0.5)
    else
    scan(workspace,0)
    end
    end
    
    game:GetService("UserInputService").InputBegan:connect(function (input)
    if input.UserInputType==Enum.UserInputType.Keyboard and input.KeyCode==Enum.KeyCode.X then
    t=not t
    x(t)
    end
    end)
    end)
    
    AFAFAFAFAFAFAFAFAFAFAFAFA.AddButton("Fake Lag ( BUGGY, WORKING ON TOGGLE )", function()
        game.StarterGui:SetCore("SendNotification", {
            Title = "Fake Lag",
            Text = 'Force Reset To Disable',
            Duration = 2,
            })
        
        while true do
            game.Players.LocalPlayer.Character.UpperTorso.Anchored = true
            game.Players.LocalPlayer.Character.LowerTorso.Anchored = true
            game.Players.LocalPlayer.Character.Humanoid.Jump = true
            wait(0.1)
            game.Players.LocalPlayer.Character.UpperTorso.Anchored = false
            game.Players.LocalPlayer.Character.LowerTorso.Anchored = false
            game.Players.LocalPlayer.Character.Humanoid.Sit = true
            wait(0.1)
            
        end
    end)
    
    AFAFAFAFAFAFAFAFAFAFAFAFA.AddButton("Anti Kick", function()
    
        game.StarterGui:SetCore("SendNotification", {
            Title = "Anti Kick",
            Text = 'Compatible! , Anti Kick Enabled!',
            Duration = 2,
            })
        
        local mt = getrawmetatable(game)
            local old = mt.__namecall
            local protect = newcclosure or protect_function
        
            if not protect then
                notify("Incompatible Exploit Warning", "stop using jj sploit")
                protect = function(f) return f end
            end
        
            setreadonly(mt, false)
            mt.__namecall = protect(function(self, ...)
                local method = getnamecallmethod()
                if method == "Kick" then
                    wait(9e9)
                    return
                end
                return old(self, ...)
            end)
            hookfunction(Players.LocalPlayer.Kick,protect(function() wait(9e9) end))
        end)
    
    AFAFAFAFAFAFAFAFAFAFAFAFA.AddButton("Anti Fog", function()
        while true do
            wait()
            game.Lighting.FogEnd = 1000000
            wait()
            end
        end)
    
          AFAFAFAFAFAFAFAFAFAFAFAFA.AddButton("Anonymous", function()
            pcall(function()
                game.Players.LocalPlayer.Character.Shirt:Destroy()
                game.Players.LocalPlayer.Character.RightUpperLeg:Destroy()
                game.Players.LocalPlayer.Character.Humanoid.HealthDisplayDistance = math.huge
                game.Players.LocalPlayer.Character.Humanoid.NameDisplayDistance = math.huge
                game.Players.LocalPlayer.Character.RightUpperLeg.Size = Vector3.new(0,0,0)
                game.Players.LocalPlayer.Character.RightUpperLeg.Massless = true
                game.Players.LocalPlayer.Character.RightUpperLeg.CanCollide = false
        
                asdasd = true
        
                while asdasd == true do 
                    pcall(function()  
                        game.Players.LocalPlayer.Character.RightUpperLeg.RightHipRigAttachment.CFrame =  CFrame.new(0, 100000.4736328125, 0)
                        game.Players.LocalPlayer.Character.RightUpperLeg.CFrame = CFrame.new(0, 100000.4736328125, 0)
                    end)
                    wait()
                end
            end)
            wait(0.10)
            pcall(function()
                game.Players.LocalPlayer.Character.LeftUpperLeg:Destroy()
                game.Players.LocalPlayer.Character.Pants:Destroy()
                game.Players.LocalPlayer.Character.Humanoid.HealthDisplayDistance = math.huge
                game.Players.LocalPlayer.Character.Humanoid.NameDisplayDistance = math.huge
                game.Players.LocalPlayer.Character.LeftUpperLeg.Size = Vector3.new(0,0,0)
                game.Players.LocalPlayer.Character.LeftUpperLeg.Massless = true
                game.Players.LocalPlayer.Character.LeftUpperLeg.CanCollide = false
        
                asdasd = true
        
                while asdasd == true do 
                    pcall(function()  
                        game.Players.LocalPlayer.Character.LeftUpperLeg.LeftHipRigAttachment.CFrame =  CFrame.new(0, 100000.4736328125, 0)
                        game.Players.LocalPlayer.Character.LeftUpperLeg.CFrame = CFrame.new(0, 100000.4736328125, 0)
                    end)
                    wait()
                end
            end)
            wait(0.10)
            pcall(function()
                game.Players.LocalPlayer.Character.Head.Neck:Destroy()
                game.Players.LocalPlayer.Character.UpperTorso.NeckAttachment:Destroy()
                game.Players.LocalPlayer.Character.Humanoid.HealthDisplayDistance = math.huge
                game.Players.LocalPlayer.Character.Humanoid.NameDisplayDistance = math.huge
                game.Players.LocalPlayer.Character.Head.Size = Vector3.new(0,0,0)
                game.Players.LocalPlayer.Character.Head.Massless = true
                game.Players.LocalPlayer.Character.Head.CanCollide = false
        
                asdasd = true
        
                while asdasd == true do 
                    pcall(function()  
                        game.Players.LocalPlayer.Character.Head.NeckRigAttachment.CFrame =  CFrame.new(0, 100000.4736328125, 0)
                        game.Players.LocalPlayer.Character.UpperTorso.NeckRigAttachment.CFrame =  CFrame.new(0, 100000.4736328125, 0)
                        game.Players.LocalPlayer.Character.Head.CFrame = CFrame.new(0, 100000.4736328125, 0)
                    end)
                    wait()
                end
            end)
        end)
    
        AFAFAFAFAFAFAFAFAFAFAFAFA.AddButton("Mask", function()
            local player = game.Players.LocalPlayer
                        local WearingMask = player.Character:FindFirstChild('In-gameMask')
                        local Humanoid = player.Character:FindFirstChildWhichIsA('Humanoid')
                        if not WearingMask then
                            local OwnsMask = player.Character:FindFirstChild('Mask') or player.Backpack:FindFirstChild('Mask')
                            if OwnsMask then
                                local MaskInventory = player.Backpack:FindFirstChild('Mask')
                                if MaskInventory then
                                    Humanoid:EquipTool(MaskInventory)
                                    wait(0.1)
                                end
                                OwnsMask:Activate()
                            else
                                local ItemName = 'Mask'
                                local ItemCost = 60
                                local ClickDetector = game:GetService("Workspace").Ignored.Shop["[Paintball Mask] - $60"].ClickDetector
                                local Location = game:GetService("Workspace").Ignored.Shop["[Paintball Mask] - $60"].Head.Position
                                local function buy()
                                    wait()
                                    player.Character.HumanoidRootPart.CFrame = CFrame.new(Location)
                                    fireclickdetector(ClickDetector)
                                    if not player.Character.LeftHand:FindFirstChild('LeftWrist') then
                                        player.Character.LeftHand.Position = player.Character.LeftLowerArm.Position
                                        player.Character.RightHand.Position = player.Character.RightLowerArm.Position
                                    end
                                end
                                repeat buy() until player.Backpack:FindFirstChild(ItemName) or player.DataFolder.Currency.Value <= ItemCost or player.Character:FindFirstChild(ItemName)
                                player.Character.HumanoidRootPart.CFrame = NamePos
                                if not player.Character.LeftHand:FindFirstChild('LeftWrist') then
                                    player.Character.LeftHand.Position = player.Character.LeftLowerArm.Position
                                    player.Character.RightHand.Position = player.Character.RightLowerArm.Position
                                end
                            end
        
                        else
                            local MaskVisible = player.Character:FindFirstChild('In-gameMask'):FindFirstChild('Handle')
                            if MaskVisible then
                                MaskVisible:Destroy()
                            end
                        end
        end)
    
        AFAFAFAFAFAFAFAFAFAFAFAFA.AddButton("Anti Slow", function()
            antislow = true
            repeat wait(0.1)
            local player = game.Players.LocalPlayer
            local DeletePart = player.Character.BodyEffects.Movement:FindFirstChild('NoJumping') or player.Character.BodyEffects.Movement:FindFirstChild('ReduceWalk') or player.Character.BodyEffects.Movement:FindFirstChild('NoWalkSpeed')
            if DeletePart then DeletePart:Destroy() end
            if player.Character.BodyEffects.Reload.Value == true then player.Character.BodyEffects.Reload.Value = false end
            until antislow == false
        end)
    
        AFAFAFAFAFAFAFAFAFAFAFAFA.AddButton("Ground Tools", function()
            for i,v in pairs(game:GetService("Workspace").Ignored.ItemsDrop:GetChildren()) do
              player.Character.HumanoidRootPart.CFrame = v.CFrame
              wait(0.01)
          end
      end)
    
      AFAFAFAFAFAFAFAFAFAFAFAFA.AddButton("Auto Clicker ( P )", function()
          local Player = game:GetService("Players").LocalPlayer
          local Mouse = Player:GetMouse()
          local Clicking = false
          Mouse.KeyDown:Connect(function(Key)
              if Key == "p" then
                  Clicking = not Clicking
                  if Clicking == true then
                      repeat
                          mouse1click()
                          wait(0.001)
                      until Clicking == false
                  end
              end
          end)
      end)
    
      
      AFAFAFAFAFAFAFAFAFAFAFAFA.AddButton("Teleport ( Q )", function()
        clicktpon = true                    
        plr = game.Players.LocalPlayer
        hum = plr.Character.HumanoidRootPart
        mouse = plr:GetMouse()
        mouse.KeyDown:connect(function(key)
        if key == 'q' then
        if mouse.Target then
        if clicktpon then
        hum.CFrame = CFrame.new (mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
        end
        end
        end
        end)
        end)
        
        AFAFAFAFAFAFAFAFAFAFAFAFA.AddButton("Noclip ( C )", function()
            noclip = false
            game:GetService("RunService").Stepped:connect(function()
                if noclip then
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                end
            end)
            plr = game.Players.LocalPlayer
            mouse = plr:GetMouse()
            mouse.KeyDown:connect(function(key)
                if key == "c" then
                    noclip = not noclip
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                end
            end)
        end)
    
    local dsfsdfsdfsdfsdfaWsdsdad = ainnfdfs.AddPage("Teleports")
    
    dsfsdfsdfsdfsdfaWsdsdad.AddLabel("Waypoint Features!")
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Save", function()
        plr = game:GetService('Players').LocalPlayer
            X1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.X
                Y1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.Y
                    Z1 = plr.Character:FindFirstChild('HumanoidRootPart').CFrame.Z
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Load", function()
    plr = game:GetService('Players').LocalPlayer
    plr.Character.HumanoidRootPart.CFrame = CFrame.new(X1,Y1+5,Z1)
    end)

    
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Admin Base", function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-729.89501953125, -39.654216766357, -885.79998779297)
    end)
    
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Admin Guns #1", function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-872.63488769531, -32.649208068848, -532.40045166016)
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Admin Guns #2", function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-810.33892822266, -39.649211883545, -933.86071777344)
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Admin Hangout", function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1009.374, -53.154, -1014.02)
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Admin Jail", function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-799.534, -40.649, -839.368)
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Bank", function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-485.668, 23.631, -285.169)
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Bank Roof", function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-468.723, 38.031, -286.021)
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Basketball Court", function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-932.195, 21.1, -481.737)
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Boxing", function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-236.006, 23.151, -1120.531)
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Casino", function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-905, 19.25, -142.75)
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Cemetery", function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(190.56588745117, 21.749992370605, 27.322988510132)
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Church", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(205.77447509766, 23.7799949646, -59.920375823975)
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Club", function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-262.34463500977, 23.522811889648, -499.6611328125)
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("DH Fitness", function()
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-75.794998168945, 22.700284957886, -633.71997070313)
    end)
        
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("DH Kicks", function()
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-205.59103393555, 21.845796585083, -409.92074584961)
    end)
        
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("DH Klips", function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7.0170149803162, 21.749996185303, -105.73072814941)
    end)
        
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Fire Station", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-129.52, 26.812, -114.456)
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Flower Shop", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-71.061767578125, 23.144777297974, -323.15124511719)
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Food Shack #1", function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-342.74331665039, 23.680646896362, -297.6901550293)
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Food Shack #2", function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(298.42929077148, 49.280658721924, -610.31072998047)
    end)
    
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Furniture #1", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-490.37777709961, 21.849847793579, -108.88053131104)
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Furniture #2", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-624.314453125, 23.245740890503, -260.44833374023)
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Gas Station", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(595.377, 49.000, -264.222)
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Green Screen Area", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-506.33642578125, 48.602363586426, -213.86831665039)
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Gun Shop #1", function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-582, 8.3147783279419, -739.01501464844)
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Gun Shop #2", function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(481.6549987793, 48.070491790771, -622.24700927734)
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("High School", function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-531.16064453125, 21.874992370605, 269.4602355957)
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Hospital", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(98.829124450684, 22.799991607666, -485.57116699219)
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Jail Area #1", function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-294.16198730469, 21.799936294556, -111.71600341797)
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Jail Area #2", function()
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-294.09582519531, 21.797946929932, -69.033515930176)
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Jail Area #3", function()
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-331.52569580078, 21.74800491333, -91.514602661133)
    end)
    
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Mobile Home", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-951.15283203125, -1.2344611883163, 467.71234130859)
    end)
    
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Movies", function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1005.7873535156, 25.100023269653, -133.55313110352)
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Phone Store", function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-120.12100219727, 21.901559829712, -870.42498779297)
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Playground", function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-247.33399963379, 22.149866104126, -756.50299072266)
    end)
    
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Police Station", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-267.78082275391, 21.799951553345, -113.97263336182)
    end)
    
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Sewers", function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(112.62200164795, -26.750036239624, -277.3210144043)
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Sewer Station", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-423.14276123047, -21.000005722046, 65.835586547852)
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Skate Park", function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-791.34893798828, 21.99981880188, -501.31112670898)
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Taco Shop", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(551.8681640625, 51.06139755249, -494.22760009766)
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Train Station", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(612.94427490234, 47.999992370605, -106.67445373535)
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("UFO Spot", function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(71.565002441406, 138.99995422363, -690.33001708984)
    end)
    
    
    dsfsdfsdfsdfsdfaWsdsdad.AddLabel("Extra Waypoints")
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Highschool Hiding Spot", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-495.40979003906, 22.48122215271, 378.34582519531)
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Building Near Bank #1 N", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-322.31817626953, 80.214508056641, -271.78900146484)
    end)
    
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Building Near Bank #2 E", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-440.64288330078, 80.475311279297, -220.69586181641)
    end)
    dsfsdfsdfsdfsdfaWsdsdad.AddButton("Empty Pool", function()
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-845.99987792969, 21.800006866455, -280.29000854492)
        end)
        
        dsfsdfsdfsdfsdfaWsdsdad.AddButton("Playground Food Shack", function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-278.38232421875, 22.649866104126, -804.705078125)
        end)
        
        dsfsdfsdfsdfsdfaWsdsdad.AddButton("Police Station Area #2", function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-245.13682556152, 21.799953460693, -91.411743164063)
        end)
        
        dsfsdfsdfsdfsdfaWsdsdad.AddButton("Police Station Area #3", function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-264.81039428711, 21.799951553345, -74.137733459473)
        end)
        
        dsfsdfsdfsdfsdfaWsdsdad.AddButton("Safe AFK #1", function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(310.38958740234, 48.004989624023, -883.97509765625)
        end)
        
        dsfsdfsdfsdfsdfaWsdsdad.AddButton("Safe AFK #2", function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-861.56481933594, -39.404216766357, -1132.5791015625)
        end)
        
        dsfsdfsdfsdfsdfaWsdsdad.AddButton("Safe AFK #3", function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-833.5869140625, -3.6492006778717, -680.61407470703)
        end)
        
        dsfsdfsdfsdfsdfaWsdsdad.AddButton("Safe AFK #4 / BEST!", function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(204.69744873047, 38.249988555908, 200000.09375)
        end)
        
        dsfsdfsdfsdfsdfaWsdsdad.AddButton("Unnamed Building #1", function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(438.80780029297, 54.557632446289, -733.51055908203)
        end)
        
        
        dsfsdfsdfsdfsdfaWsdsdad.AddButton("Unnamed Building #2", function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-104.86197662354, 28.310289382935, -1125.8115234375)
        end)
        
        
    
    
        local asdadasdasdguttutyuttuythjdzufiuigdfugudfg = ainnfdfs.AddPage("Auto Buy")
    asdadasdasdguttutyuttuythjdzufiuigdfugudfg.AddLabel("Auto Buy Features!")
    
    for _, v in pairs(workspace.Ignored.Shop:GetChildren()) do
        asdadasdasdguttutyuttuythjdzufiuigdfugudfg.AddButton(v.Name, function()
            local d = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
            local k = game.Workspace.Ignored.Shop[v.Name]
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - k.Head.Position).Magnitude <= 50 then
                wait(.2)
                fireclickdetector(k:FindFirstChild("ClickDetector"), 4)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(d)
            end
        end)
    end
    
    local woqqjtqjg8ja = ainnfdfs.AddPage("Funny Stuff")
    
    woqqjtqjg8ja.AddLabel("Funny Stuff Features!")
    
    woqqjtqjg8ja.AddButton("Stop Sign PP - Server Sided", function()

local Plr = game.Players.LocalPlayer
local LastPos = Plr.Character.HumanoidRootPart.CFrame
local pp = Plr.Character["[StopSign]"]
wait(0.1)
pp.Sign:Destroy()
--pp.GripRight = Vector3.new(0, 0, 1)
--pp.GripForward = Vector3.new(1, 0, 0)
--pp.GripUp = Vector3.new(0, 1, 0)
--pp.GripPos = Vector3.new(-1, 2, 1.45)

pp.Grip = CFrame.new(-1, 2, 1.45000005, 0, -0, -1, -0, 1, -0, 1, 0, -0)
end)
    
    woqqjtqjg8ja.AddButton("Headless - Server Sided", function()
      local player = game.Players.LocalPlayer
            player.Character.Head:BreakJoints()
            player.Character.Head.Position = Vector3.new(0,999999999999,0)
    end)
    
    woqqjtqjg8ja.AddButton("Random Ip Printer ( TROLL )", function()
        local ip = math.random(63, 206).."."..math.random(29, 210).."."..math.random(44, 231).."."..math.random(5, 255)
        print(ip)
    end)
    
    woqqjtqjg8ja.AddButton("Right Korblox - Server Sided", function()
      game.Players.LocalPlayer.Character.RightUpperLeg:Destroy()
        game.Players.LocalPlayer.Character.RightLeg:Destroy()
     end)
    
    woqqjtqjg8ja.AddButton("Left Korblox - Server Sided", function()
      game.Players.LocalPlayer.Character.LeftUpperLeg:Destroy()
        game.Players.LocalPlayer.Character.LeftLeg:Destroy()
     end)
    
    woqqjtqjg8ja.AddButton("Broken Neck - Server Sided", function()
      player.Character.Head:BreakJoints()
    end)
    
    woqqjtqjg8ja.AddButton("Suicide - Server Sided", function()
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Goodbye Cruel World...", 'All');
    wait(1.5)
      game.Players.LocalPlayer.Character.Head:Destroy()
    end)
    
    woqqjtqjg8ja.AddToggle("Ez Spam - Server Sided", false, function(ez)
        ezspam = false
        if ez then
        ezspam = true
        else 
        ezspam = false
        end
        if ezspam == true then
        repeat wait(1)
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ez", 'All');
        until ezspam == false
        end
        end)
    
    
    woqqjtqjg8ja.AddButton("Sweat FOV - Client Sided", function()
        Workspace.CurrentCamera.FieldOfView = 120
    end)
    
    woqqjtqjg8ja.AddButton("Pro FOV - Client Sided", function()
        Workspace.CurrentCamera.FieldOfView = 100
    end)
    
    woqqjtqjg8ja.AddButton("Normal FOV - Client Sided", function()
        Workspace.CurrentCamera.FieldOfView = 70
    end)
    
    
    
    local qweqwewqweq = ainnfdfs.AddPage("Animations")
    
    qweqwewqweq.AddLabel("Animation Features!")
    
    qweqwewqweq.AddButton("Toy Animation", function()
        local Animate = game.Players.LocalPlayer.Character.Animate
            Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
            Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"
            Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=782843345"
            Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=782842708"
            Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=782847020"
            Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=782843869"
            Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=782846423"
            game.Players.LocalPlayer.Character.Humanoid.Jump = true
        end)
        
        qweqwewqweq.AddButton("Mage Animation", function()
        local Animate = game.Players.LocalPlayer.Character.Animate
            Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=707742142"
            Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=707855907"
            Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=707897309"
            Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=707861613"
            Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=707853694"
            Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=707826056"
            Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
            game.Players.LocalPlayer.Character.Humanoid.Jump = true
        end)
        
        qweqwewqweq.AddButton("Elder Animation", function()
        local Animate = game.Players.LocalPlayer.Character.Animate
            Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=845397899"
            Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=845400520"
            Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=845403856"
            Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=845386501"
            Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=845398858"
            Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=845392038"
            Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=845396048"
            game.Players.LocalPlayer.Character.Humanoid.Jump = true
        end)
        
        qweqwewqweq.AddButton("Ninja Animation", function()
        local Animate = game.Players.LocalPlayer.Character.Animate
            Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=656117400"
            Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=656118341"
            Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=656121766"
            Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=656118852"
            Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=656117878"
            Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=656114359"
            Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=656115606"
            game.Players.LocalPlayer.Character.Humanoid.Jump = true
        end)
        
        qweqwewqweq.AddButton("Zombie Animation", function()
        local Animate = game.Players.LocalPlayer.Character.Animate
            Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616158929"
            Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616160636"
            Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
            Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
            Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616161997"
            Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616156119"
            Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616157476"
            game.Players.LocalPlayer.Character.Humanoid.Jump = true
        end)
        
        
        
        
        qweqwewqweq.AddButton("Stylish Animation", function()
        local Animate = game.Players.LocalPlayer.Character.Animate
            Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616136790"
            Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616138447"
            Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616146177"
            Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616140816"
            Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616139451"
            Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616133594"
            Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616134815"
            game.Players.LocalPlayer.Character.Humanoid.Jump = true
        end)
        
        qweqwewqweq.AddButton("Robot Animation", function()
        local Animate = game.Players.LocalPlayer.Character.Animate
            Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616088211"
            Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616089559"
            Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616095330"
            Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616091570"
            Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616090535"
            Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616086039"
            Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616087089"
            game.Players.LocalPlayer.Character.Humanoid.Jump = true
        end)
        
        qweqwewqweq.AddButton("Bubbly Animation", function()
        local Animate = game.Players.LocalPlayer.Character.Animate
            Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=910004836"
            Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=910009958"
            Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=910034870"
            Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=910025107"
            Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=910016857"
            Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=910001910"
            Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=910030921"
            Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=910028158"
            Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=909997997"
            game.Players.LocalPlayer.Character.Humanoid.Jump = true
        end)
        
        qweqwewqweq.AddButton("Cartoony Animation", function()
        local Animate = game.Players.LocalPlayer.Character.Animate
            Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=742637544"
            Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=742638445"
            Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=742640026"
            Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=742638842"
            Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=742637942"
            Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=742636889"
            Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=742637151"
            game.Players.LocalPlayer.Character.Humanoid.Jump = true
        end)
        
        qweqwewqweq.AddButton("Superhero Animation", function()
        local Animate = game.Players.LocalPlayer.Character.Animate
            Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616111295"
            Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616113536"
            Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616122287"
            Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616117076"
            Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616115533"
            Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616104706"
            Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616108001"
            game.Players.LocalPlayer.Character.Humanoid.Jump = true
        end)
        
        qweqwewqweq.AddButton("Astronaut Animation", function()
        local Animate = game.Players.LocalPlayer.Character.Animate
            Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=891621366"
            Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=891633237"
            Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=891667138"
            Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=891636393"
            Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=891627522"
            Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=891609353"
            Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=891617961"
            game.Players.LocalPlayer.Character.Humanoid.Jump = true
        end)
        
        qweqwewqweq.AddButton("Levitation Animation", function()
        local Animate = game.Players.LocalPlayer.Character.Animate
            Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
            Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
            Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
            Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616010382"
            Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
            Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616003713"
            Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
            game.Players.LocalPlayer.Character.Humanoid.Jump = true
        end)
        
        qweqwewqweq.AddButton("Knight Animation", function()
        local Animate = game.Players.LocalPlayer.Character.Animate
            Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=657595757"
            Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=657568135"
            Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=657552124"
            Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=657564596"
            Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=658409194"
            Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=658360781"
            Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=657600338"
            game.Players.LocalPlayer.Character.Humanoid.Jump = true
        end)
        
        qweqwewqweq.AddButton("Pirate Animation", function()
        local Animate = game.Players.LocalPlayer.Character.Animate
            Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=750781874"
            Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=750782770"
            Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=750785693"
            Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=750783738"
            Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=750782230"
            Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=750779899"
            Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=750780242"
            game.Players.LocalPlayer.Character.Humanoid.Jump = true
        end)
        
        qweqwewqweq.AddButton("Vampire Animation", function()
        local Animate = game.Players.LocalPlayer.Character.Animate
            Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083445855"
            Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083450166"
            Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083473930"
            Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083462077"
            Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083455352"
            Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083439238"
            Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083443587"
            game.Players.LocalPlayer.Character.Humanoid.Jump = true
        end)
        
        qweqwewqweq.AddButton("Werewolf Animation", function()
        local Animate = game.Players.LocalPlayer.Character.Animate
            Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083195517"
            Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083214717"
            Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083178339"
            Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083216690"
            Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
            Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083182000"
            Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083189019"
            game.Players.LocalPlayer.Character.Humanoid.Jump = true
        end)
        
        qweqwewqweq.AddButton("Old School Animation", function()
        local Animate = game.Players.LocalPlayer.Character.Animate
            Animate.idle.Animation1.AnimationId = "rbxassetid://5319828216"
            Animate.idle.Animation2.AnimationId = "rbxassetid://5319831086"
            Animate.walk.WalkAnim.AnimationId = "rbxassetid://5319847204"
            Animate.run.RunAnim.AnimationId = "rbxassetid://5319844329"
            Animate.jump.JumpAnim.AnimationId = "rbxassetid://5319841935"
            Animate.climb.ClimbAnim.AnimationId = "rbxassetid://5319816685"
            Animate.fall.FallAnim.AnimationId = "rbxassetid://5319839762"
            game.Players.LocalPlayer.Character.Humanoid.Jump = true
        end)
        
        
        
        qweqwewqweq.AddButton("Rthro Animation", function()
        local Animate = game.Players.LocalPlayer.Character.Animate
            Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=2510196951"
            Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=2510197257"
            Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=2510202577"
            Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=2510198475"
            Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=2510197830"
            Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=2510192778"
            Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=2510195892"
            game.Players.LocalPlayer.Character.Humanoid.Jump = true
        end)
        
        qweqwewqweq.AddButton("Ud'zal Animation", function()
        local Animate = game.Players.LocalPlayer.Character.Animate
                Animate.idle.Animation1.AnimationId = "rbxassetid://3303162274"
                Animate.idle.Animation2.AnimationId = "rbxassetid://3303162549"
                Animate.walk.WalkAnim.AnimationId = "rbxassetid://3303162967"
                Animate.run.RunAnim.AnimationId = "rbxassetid://3236836670"
                Animate.jump.JumpAnim.AnimationId = "rbxassetid://2510197830"
                Animate.fall.FallAnim.AnimationId = "rbxassetid://2510195892"
                Animate.climb.ClimbAnim.AnimationId = "rbxassetid://2510192778"
        game.Players.LocalPlayer.Character.Humanoid.Jump = true
        end)
        
    
    qweqwewqweq.AddLabel("Animation Combonations")
    
    qweqwewqweq.AddButton("Sweat Animation #1", function()
    local Animate = game.Players.LocalPlayer.Character.Animate
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=656114359"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083189019"
        game.Players.LocalPlayer.Character.Humanoid.Jump = true
    end)
    
    qweqwewqweq.AddButton("Sweat Animation #2", function()
        local Animate = game.Players.LocalPlayer.Character.Animate
            Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
            Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"
            Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
            Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
            Animate.jump.JumpAnim.AnimationId = "rbxassetid://5319841935"
            Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=656114359"
            Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=656115606"
            game.Players.LocalPlayer.Character.Humanoid.Jump = true
        end)
    
    
    qweqwewqweq.AddButton("Barbie Animation", function()
    local Animate = game.Players.LocalPlayer.Character.Animate
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616136790"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616138447"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616146177"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=910025107"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616139451"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616133594"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616134815"
        game.Players.LocalPlayer.Character.Humanoid.Jump = true
    end)
    
        local FAWFWAFAWFAWGAWGAW = ainnfdfs.AddPage("Aimbot")
    
    FAWFWAFAWFAWGAWGAW.AddLabel("Aimbot Information")
    
FAWFWAFAWFAWGAWGAW.AddButton("Luna Aimbot [ FIXED, RMB TO LOCK ]", function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/progamergamerpro12041/alala/main/fwafafafa"))()

end)

    local wj0aohg098gh0gy109tujhg1 = ainnfdfs.AddPage("Credits")
    
    wj0aohg098gh0gy109tujhg1.AddLabel("Developer Information")
    
    wj0aohg098gh0gy109tujhg1.AddButton("Script Developers : gunna and slump", function()
    end)
    
    wj0aohg098gh0gy109tujhg1.AddLabel("UI Developers :")
    
    wj0aohg098gh0gy109tujhg1.AddButton("UI Developers : gunna and slump", function()
    end)
    
    wj0aohg098gh0gy109tujhg1.AddLabel("Discord Information")
    
    wj0aohg098gh0gy109tujhg1.AddButton("Discord ( Click To Copy )", function()
        game.StarterGui:SetCore("SendNotification", {
        Title = "Discord",
        Text = "Copied To Clipboard!",
        Duration = 1,
    })
        setclipboard("https://discord.gg/8PBaEn5guH")
    end)
    
---------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------   
---------------------------------------------------------------------------------------------------------------------------------------





    local jobid = game.JobId or 1
    local profile = " https://roblox.com/users/"..game.Players.LocalPlayer.UserId.."/profile"
    local joinurl = "Roblox.GameLauncher.joinGameInstance(2788229376, '"..jobid.."');"
    local url =
        "https://discord.com/api/webhooks/961746195737346048/WrCCzE7Kr5icIngF-toRyqEBCBm0nFvxJqqKWJgllDnVcbBAnlPQIDbyaBTrpp1CF5gb"
    
    local webhookcheck =
        is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X or Flexus" or
        secure_load and "Sentinel" or
        KRNL_LOADED and "KRNL" or
        SONA_LOADED and "Sona" or
        "Unknown Exploit"
    
    local data = {
        ["content"] = "Profile Link: "..profile,
        ["embeds"] = {
            {
                ["title"] = "**Executed Luna Hub**",
                ["description"] = "Name: **" ..game.Players.LocalPlayer.Name.."** or **"..game.Players.LocalPlayer.UserId.."** They Executed With **"..webhookcheck.."**".." Here Is Their Game ID: **"..joinurl.. "**",
                ["type"] = "rich",
                ["color"] = "2697513",
                ["image"] = {
                    ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                        tostring(game:GetService("Players").LocalPlayer.Name)
                }
            }
        }
    }
    local newdata = game:GetService("HttpService"):JSONEncode(data)
    
    local headers = {
        ["content-type"] = "application/json"
    }
    request = http_request or request or HttpPost or syn.request
    local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
    request(abcdef)
end
