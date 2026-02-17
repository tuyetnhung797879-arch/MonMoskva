-- [[ MARU HUB PRENIUM [MON MOSKVA] - EXCLUSIVE VERSION ]] --
-- LICENSED TO: Con.Chien.Cua.Ngai (TikTok)

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

-- LOGIN INTERFACE
local Window = Fluent:CreateWindow({
    Title = "MARU HUB PRENIUM [MON MOSKVA]",
    SubTitle = "TikTok: @Con.Chien.Cua.Ngai",
    TabWidth = 160,
    Size = UDim2.fromOffset(450, 300),
    Acrylic = true,
    Theme = "Dark"
})

local LoginTab = Window:AddTab({ Title = "Авторизация", Icon = "lock" })

LoginTab:AddParagraph({
    Title = "КУПИТЬ КЛЮЧ / BUY KEY",
    Content = "Contact TikTok: @Con.Chien.Cua.Ngai to get your access key."
})

LoginTab:AddInput("Input", {
    Title = "Введите ключ (Enter Key)",
    Default = "",
    Placeholder = "Password...",
    Callback = function(Value)
        -- MASTER PASSWORD: C0ffee.Louis*Moon9
        if Value == "C0ffee.Louis*Moon9" then
            Fluent:Notify({Title = "ДОСТУП ОДОБРЕН", Content = "Welcome, Premium User!", Duration = 5})
            Window:Destroy()
            
            -- SECURITY: HWID BYPASS
            local old; old = hookmetamethod(game, "__namecall", function(self, ...)
                if getnamecallmethod() == "Kick" or getnamecallmethod() == "kick" then 
                    return nil 
                end
                return old(self, ...)
            end)
            
            -- INITIALIZE CORE DATA
            getgenv().Key = "MARU-OI9DX-TX34-3C3K-W8PHQ-17VV6"
            getgenv().id = "1314913266761339003"
            
            -- EXECUTE ORIGINAL MARU
            task.spawn(function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MaruBitkub/main/Mobile.lua"))()
            end)
            
            -- INTERFACE OVERRIDE (MARU LAYOUT + MOSKVA TEXT)
            task.spawn(function()
                while task.wait(0.5) do
                    for _, v in pairs(game:GetService("CoreGui"):GetDescendants()) do
                        if v:IsA("TextLabel") or v:IsA("TextButton") then
                            -- MAIN TITLE TAG WITH YOUR TIKTOK
                            if v.Text:find("Maru") or v.Text:find("Hub") or v.Text:find("Premium") then
                                v.Text = "MARU HUB PRENIUM [MON MOSKVA] | TikTok: @Con.Chien.Cua.Ngai"
                            end
                            -- MOSKVA LOCALIZATION
                            local moscow = {
                                ["Main"] = "Главный",
                                ["Farm"] = "Ферма",
                                ["Auto Farm"] = "Авто Ферма",
                                ["Select Weapon"] = "Выбрать оружие",
                                ["Teleport"] = "Телепортация",
                                ["Stats"] = "Статистика",
                                ["Settings"] = "Настройки",
                                ["Elite Hunter"] = "Охотник на элиту",
                                ["Shop"] = "Магазин",
                                ["Raid"] = "Рейд"
                            }
                            if moscow[v.Text] then v.Text = moscow[v.Text] end
                        end
                    end
                end
            end)
        end
    end
})
