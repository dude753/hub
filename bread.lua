    local ab = 10710676163
    local _b = game:service'VirtualUser'
    if game.PlaceId == ab then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Ix Channel's HUB / Game:SPTS:ORIGIN", "BloodTheme")
    
    
    --lol
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
    MainSection:NewToggle("Auto train FS", "Reset to disable", function(v)
    while v do
        if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
            break
        end
        wait(0.4)
        local args = {
    [1] = {
        [1] = "Add_FS_Request"
    }
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
end
end)
MainSection:NewToggle("Auto train Speed and jump", "Reset to disable", function(state)
while state do
    if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
        break
    end
    local args = {
    [1] = {
        [1] = "Add_MS_Request"
    }
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
end
end)


    --plr
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")
    PlayerSection:NewSlider("Walkspeed", "SliderInfo", 250, 16, function(v) -- g
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)
    PlayerSection:NewSlider("Jumppower", "SliderInfo", 250, 50, function(v) -- lol
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
            PlayerSection:NewButton("Anti afk", "anti kick", function()
    game:service'Players'.LocalPlayer.Idled:connect(function()
_b:CaptureController()bb:ClickButton2(Vector2.new())
end)
end)
    end)

    local info = Window:NewTab("Info")
    local InfoSection = info:NewSection("Info")
    InfoSection:NewLabel("this script in dev")
    InfoSection:NewLabel("UI: Kavo xHeptc")
    InfoSection:NewLabel("Script: Morz1ic")
end
