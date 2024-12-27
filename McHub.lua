local Player = game:GetService("Players")local LocalPlayer = Player.LocalPlayerlocal Char = LocalPlayer.Characterlocal Humanoid = Char.Humanoidlocal VirtualInputManager = game:GetService("VirtualInputManager")local ReplicatedStorage = game:GetService("ReplicatedStorage")local GuiService = game:GetService("GuiService")equipitem = function(v)if LocalPlayer.Backpack:FindFirstChild(v) thenlocal a = LocalPlayer.Backpack:FindFirstChild(v)Humanoid:EquipTool(a)endendlocal Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()local Window = Fluent:CreateWindow({Title = "Fisch " .. Fluent.Version,SubTitle = "Mc Hub",TabWidth = 160,Size = UDim2.fromOffset(580, 460),Acrylic = true, Theme = "Dark",MinimizeKey = Enum.KeyCode.LeftControl})


local Tabs = {
    Home = Window:AddTab({ Title = "Home", Icon = "" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Fluent.Options


    Fluent:Notify({
        Title = "Loading sccripting",
        Content = "This is a script map Fisch",
        SubContent = "Mc Hub Make!",
        Duration = 5
    })

	
    Tabs.Home:AddParagraph({
        Title = "Auto Fischs",
        Content = "Auto Farm Fischs in the game to you playing in the game Fisch you"
    })

	
    local Toggle = Tabs.Home:AddToggle("Toggle", {Title = "AutoCast"})

    Toggle:OnChanged(function(v)

    _G.AutoCast = v
     pcall(function()
while _G.AutoCast do wait()
    local Rod = Char:FindFirstChildOfClass("Tool")
                task.wait(.1)
                    Rod.events.cast:FireServer(100,1)
        end
    end)
    end)

	
    local Toggle = Tabs.Home:AddToggle("MyToggle", {Title = "AutoShake"})

    Toggle:OnChanged(function(v)
        _G.AutoShake = v
pcall(function()
while _G.AutoShake do wait()
              task.wait(0.01)
                local PlayerGUI = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
                local shakeUI = PlayerGUI:FindFirstChild("shakeui")
                if shakeUI and shakeUI.Enabled then
                    local safezone = shakeUI:FindFirstChild("safezone")
                    if safezone then
                        local button = safezone:FindFirstChild("button")
                        if button and button:IsA("ImageButton") and button.Visible then
                                GuiService.SelectedObject = button
                                VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
                                VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
                    end
                end
            end
        end
    end)
    end)

	local Toggle = Tabs.Home:AddToggle("MyToggle", {Title = "AutoReel"})

    Toggle:OnChanged(function(v)
        _G.AutoReel = v
pcall(function()
    while _G.AutoReel do wait()
            for i,v in pairs(LocalPlayer.PlayerGui:GetChildren()) do
                if v:IsA "ScreenGui" and v.Name == "reel"then
                    if v:FindFirstChild "bar" then
                        wait(.15)
                            ReplicatedStorage.events.reelfinished:FireServer(100,true)
                    end
                end
            end
        end
    end)
    end)
    
	spawn(function()
    while wait() do
        if _G.AutoCast then
            pcall(function()
                for i,v in pairs(LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA ("Tool") and v.Name:lower():find("rod") then
                    equipitem(v.Name)
                    end
                end
            end)
        end
    end
end)

local Toggle = Tabs.Home:AddToggle("MyToggle", {Title = "Freeze"})

    Toggle:OnChanged(function(v)
        Char.HumanoidRootPart.Anchored = v
    end)

