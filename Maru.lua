-- [[ MARU HUB PRENIUM [MON MOSKVA] - GLOBAL VERSION ]] --
-- LICENSED TO: Con.Chien.Cua.Ngai (TikTok)

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

-- LOGIN INTERFACE
local Window = Fluent:CreateWindow({
    Title = "MARU HUB PRENIUM",
    SubTitle = "by Mon Moskva",
    TabWidth = 160,
    Size = UDim2.fromOffset(450, 300),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.RightControl
})

local LoginTab = Window:AddTab({ Title = "Authorization", Icon = "lock" })

-- FIXED: Clean Input (No more duplicate text)
LoginTab:AddInput("Input", {
    Title = "ENTER YOUR ACCESS KEY",
    Default = "",
    Placeholder = "Key is: C0ffee.Louis*Moon9",
    Callback = function(Value)
        -- USE SAVED PASSWORD
        if Value == "C0ffee.Louis*Moon9" then
            Fluent:Notify({
                Title = "ACCESS GRANTED",
                Content = "Welcome, Mon Moskva! Loading script...",
                Duration = 5
            })
            Window:Destroy()
            
            -- LOAD MAIN SCRIPT
            loadstring(game:HttpGet("https://raw.githubusercontent.com/HuyMythic/my-script/main/MaruHub.lua"))()
        else
            Fluent:Notify({
                Title = "INVALID KEY",
                Content = "Please check your key or contact TikTok @Con.Chien.Cua.Ngai",
                Duration = 5
            })
        end
    end
})

-- MOVABLE LOGO BUTTON (FOR MOBILE)
local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")

ScreenGui.Parent = game.CoreGui
ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1.0
ImageButton.Position = UDim2.new(0.1, 0, 0.1, 0)
ImageButton.Size = UDim2.new(0, 60, 0, 60)
ImageButton.Image = "rbxassetid://15124033031" 
ImageButton.Draggable = true 

ImageButton.MouseButton1Click:Connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.RightControl, false, game)
end)
