-- No-key version of loader2.lua
-- Instantly loads and runs GrowAGarden.lua

local success, result = pcall(function()
    local scriptUrl = "https://raw.githubusercontent.com/YOUR-USERNAME/YOUR-REPO/main/GrowAGarden.lua"
    local response = game:HttpGet(scriptUrl)
    loadstring(response)()
end)

if not success then
    warn("Failed to load GrowAGarden.lua:", result)
end
