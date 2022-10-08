# HighlightESP
phere#4106

Simple, universal highlight ESP for ROBLOX.

-------------------------------------------
Usage: (Copy and paste into an executor of choice, I recommend ScriptWare or Synapse X)

-- Unnamed Universal Highlight ESP | phere#4106
-- /!\ KEYBIND FOR TOGGLING IS F3
_G.Toggled = true -- Determines if the esp is on or off.
_G.ShowFriendlies = true -- Disable to only highlight enemies.
_G.FriendColor = Color3.fromRGB(0, 255, 0)
_G.EnemyColor = Color3.fromRGB(255, 0, 0)
_G.RGBMode = true -- Toggle rainbow ESP.
_G.RGBSpeed = 10 -- The color changing speed for _G.RGBMode.
_G.UseTeamColor = false -- Use default ROBLOX team colors.
_G.FillTransparency = 0.65 -- Transparency of the color overlay on players (NOT the outline/highlight).

loadstring(game:HttpGet('https://raw.githubusercontent.com/Nicky004/HighlightESP/main/src.lua'))()
