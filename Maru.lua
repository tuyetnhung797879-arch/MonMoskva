-- [[ MARU HUB PRENIUM [MON MOSKVA] - OFFICIAL RELEASE ]] --
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

local LoginTab = Window:AddTab({ Title = "Auth", Icon = "lock" })

LoginTab:AddInput("Input", {
    Title = "VERIFICATION",
    Default = "",
    Placeholder = "Enter Key...",
    Callback = function(Value)
        -- SỬ DỤNG MẬT KHẨU ĐÃ LƯU: C0ffee.Louis*Moon9
        if Value == "C0ffee.Louis*Moon9" then
            Fluent:Notify({
                Title = "SUCCESS",
                Content = "Access Granted! Loading...",
                Duration = 5
            })
            Window:Destroy()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/HuyMythic/my-script/main/MaruHub.lua"))()
        else
            Fluent:Notify({ Title = "WRONG KEY", Content = "Check TikTok @Con.Chien.Cua.Ngai", Duration = 5 })
        end
    end
})

-- LOGO "M1" CỦA ÔNG (VỚI ID CHUẨN)
local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Name = "MonMoskvaGui"
ScreenGui.Parent = game.CoreGui
ScreenGui.ResetOnSpawn = false

ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BackgroundTransparency = 0.2
ImageButton.Position = UDim2.new(0.12, 0, 0.09, 0)
ImageButton.Size = UDim2.new(0, 60, 0, 60)

-- SỬ DỤNG ID ÔNG VỪA CUNG CẤP
ImageButton.Image = "rbxassetid://97913781532351" 

ImageButton.Draggable = true 
UICorner.CornerRadius = UDim2.new(0, 15)
UICorner.Parent = ImageButton

ImageButton.MouseButton1Click:Connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.RightControl, false, game)
end)
