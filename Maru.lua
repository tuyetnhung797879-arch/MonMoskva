-- [[ ANTI-BAN SYSTEM ]]
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    if method == "Kick" or method == "kick" then
        return nil
    end
    return old(self, ...)
end)
setreadonly(mt, true)

-- [[ UI FLUENT ]]
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "MARU HUB PRENIUM [MON MOSKVA]", 
    Subtitle = "by Mon Moskva",
    TabWidth = 160,
    Size = UDim2.fromOffset(450, 300),
    Acrylic = true, 
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.RightControl
})

-- [[ AUTHENTICATION ]]
local LoginTab = Window:AddTab({ Title = "Авторизация", Icon = "lock" })

LoginTab:AddInput("Input", {
    Title = "ВЕРИФИКАЦИЯ БЕЗОПАСНОСТИ",
    Default = "",
    Placeholder = "", -- Fix lỗi đè chữ theo quy tắc
    Callback = function(Value)
        -- Password: C0ffee.Louis*Moon9.
        if Value == "C0ffee.Louis*Moon9." then 
            Fluent:Notify({
                Title = "УСПЕХ",
                Content = "Добро пожаловать, Mon Moskva!",
                Duration = 5
            })
            Window:Destroy() 
            -- [[ MAIN SCRIPT ]]
            loadstring(game:HttpGet("https://raw.githubusercontent.com/HyMythic/my-script/main/MaruHub.lua"))()
        else
            Fluent:Notify({
                Title = "ОШИБКА",
                Content = "Неверный ключ!",
                Duration = 5
            })
        end
    end
})

-- [[ FLOATING LOGO M1 ]]
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
local ImageButton = Instance.new("ImageButton", ScreenGui)
local UICorner = Instance.new("UICorner", ImageButton)

ImageButton.Image = "rbxassetid://10618903337" -- ID logo sạch
ImageButton.Size = UDim2.new(0, 60, 0, 60)
ImageButton.Position = UDim2.new(0.12, 0, 0.09, 0)
ImageButton.Draggable = true -- Quy tắc: Phải di chuyển được
ImageButton.BackgroundTransparency = 0.3
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
UICorner.CornerRadius = UDim.new(0, 10)

ImageButton.MouseButton1Click:Connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.RightControl, false, game)
end)
