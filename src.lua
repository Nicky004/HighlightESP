if _G.Status == "Restarting" then -- To detect if the script is restarting, preventing two of the same scripts running.
  return
end

_G.Status = "Enabled"
local coregui = game:GetService("CoreGui")
local players = game:GetService("Players")
local plr = players.LocalPlayer
local tick = tick
local fromHSV = Color3.fromHSV
local placeids = {292439477, 0}

if game:GetService("CoreGui"):FindFirstChild("Highlight Container") then
  _G.Status = "Restarting"
  _G.Status = "Enabled"
end

local highlights = {}
local Folder = Instance.new("Folder", game:GetService("CoreGui"))
Folder.Name = "Highlight Container"
if syn then
  if syn.protect_gui then
    syn.protect_gui(Folder)
  end
elseif gethui then
  Folder.Parent = gethui()
end

function esp(target, color)
  if not highlights[target] then
    local highlight = Instance.new("Highlight", Folder)
    highlight.Name = target.Name
    highlight.Adornee = target
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlight.OutlineColor = color
    highlight.FillColor = color
    highlight.FillTransparency = _G.FillTransparency
    highlights[target] = highlight
    if syn then
      if syn.protect_gui then
        syn.protect_gui(highlight)
      end
    end
    highlight.Adornee.Changed:Connect(function()
    if not highlight.Adornee or not highlight.Adornee.Parent then
      highlight:Destroy()
      highlights[target] = nil
    end
    end)
  else
    highlights[target].FillColor = color
  end
end

if not _G.UISEnabled then
  toggle = game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
  if input.KeyCode == Enum.KeyCode.F3 then
    if _G.Toggled == true then
      _G.Toggled = false
      for i, v in pairs(highlights) do
        if not string.find(v.Name, "Hidden") then
          v.Enabled = false
        end
      end
    elseif _G.Toggled == false then
      _G.Toggled = true
      for i, v in pairs(highlights) do
        if not string.find(v.Name, "Hidden") then
          v.Enabled = true
        end
      end
    end
  end
  end)
  _G.UISEnabled = true
end

if not table.find(placeids, game.PlaceId) then
  added = players.PlayerAdded:Connect(function(v)
  if v.Character then
    esp(v.Character, _G.UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and _G.FriendColor or _G.EnemyColor))
  else
    v.CharacterAdded:Connect(function()
    esp(v.Character, _G.UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and _G.FriendColor or _G.EnemyColor))
    end)
  end
  end)

  removed = players.PlayerRemoving:Connect(function(v)
  if highlights[v.Character] then
    highlights[v.Character]:Destroy()
    highlights[v.Character] = nil
  end
  end)

  for i, v in pairs(players:GetPlayers()) do
    if v ~= plr then
      local color = _G.UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and _G.FriendColor or _G.EnemyColor)
      v.CharacterAdded:Connect(function()
      local color = _G.UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and _G.FriendColor or _G.EnemyColor)
      esp(v.Character, color)
      end)

      esp(v.Character, color)
    end
  end

  while game:GetService("RunService").Heartbeat:Wait() do
    if _G.Status == "Enabled" then
      for i, v in pairs(highlights) do
        if _G.RGBMode and not _G.UseTeamColor then
          local hue = tick() % _G.RGBSpeed / _G.RGBSpeed
          local color = fromHSV(hue, 1, 1)
          v.OutlineColor = color
          v.FillColor = color
          v.FillTransparency = _G.FillTransparency
          esp(i, color)
        else
          local color = _G.UseTeamColor and players:GetPlayerFromCharacter(i).TeamColor.Color or ((plr.TeamColor.Color == players:GetPlayerFromCharacter(i).TeamColor.Color) and _G.FriendColor or _G.EnemyColor)
          v.OutlineColor = color
          v.FillColor = color
          v.FillTransparency = _G.FillTransparency
          esp(i, color)
        end
        if _G.ShowFriendlies then
          if _G.Toggled then
            if string.find(v.Name, "Hidden") then
              local SplitName = string.split(v.Name, "|")
              v.Name = SplitName[1]
            end
            v.Enabled = true
          else
            if not string.find(v.Name, "Hidden") then
              v.Name = v.Name .. "|Hidden"
            end
            v.Enabled = false
          end
        elseif not _G.ShowFriendlies then
          if players:GetPlayerFromCharacter(i).TeamColor.Color == plr.TeamColor.Color then
            if not string.find(v.Name, "Hidden") then
              v.Name = v.Name .. "|Hidden"
            end
            v.Enabled = false
          else
            if _G.Toggled then
              if string.find(v.Name, "Hidden") then
                local SplitName = string.split(v.Name, "|")
                v.Name = SplitName[1]
              end
              v.Enabled = true
            else
              if not string.find(v.Name, "Hidden") then
                v.Name = v.Name .. "|Hidden"
              end
              v.Enabled = false
            end
          end
        end
      end
    else
      Folder:Destroy()
      added:Disconnect()
      removed:Disconnect()
      break
    end
  end

elseif game.PlaceId == 292439477 then
  added = workspace.Players.DescendantAdded:Connect(function(v)
  if string.find(string.lower(v.Parent.Name), "blue") then
    esp(v, BrickColor.new("Bright blue").Color)
  elseif string.find(string.lower(v.Parent.Name), "orange") then
    esp(v, BrickColor.new("Bright orange").Color)
  end
  end)

  removed = workspace.Players.DescendantRemoving:Connect(function(v)
  if highlights[v] then
    highlights[v]:Destroy()
    highlights[v] = nil
  end
  end)

  for i, v in pairs(workspace.Players:GetDescendants()) do
    if v ~= plr.Character and v:IsA("Model") then
      if string.find(string.lower(v.Parent.Name), "blue") then
        esp(v, BrickColor.new("Bright blue").Color)
      elseif string.find(string.lower(v.Parent.Name), "orange") then
        esp(v, BrickColor.new("Bright orange").Color)
      end
    end
  end

  while game:GetService("RunService").Heartbeat:Wait() do
    if _G.Status == "Enabled" then
      for i, v in pairs(highlights) do
        if _G.RGBMode and not _G.UseTeamColor then
          local hue = tick() % _G.RGBSpeed / _G.RGBSpeed
          local color = fromHSV(hue, 1, 1)
          v.OutlineColor = color
          v.FillColor = color
          v.FillTransparency = _G.FillTransparency
          esp(i, color)
        else
          if _G.UseTeamColor then
            if string.find(string.lower(i.Parent.Name), "blue") then
              v.OutlineColor = BrickColor.new("Bright blue").Color
              v.FillColor = BrickColor.new("Bright blue").Color
              v.FillTransparency = _G.FillTransparency
              esp(i, BrickColor.new("Bright blue").Color)
            elseif string.find(string.lower(i.Parent.Name), "orange") then
              v.OutlineColor = BrickColor.new("Bright orange").Color
              v.FillColor = BrickColor.new("Bright orange").Color
              v.FillTransparency = _G.FillTransparency
              esp(i, BrickColor.new("Bright orange").Color)
            end
          else
            if i.Parent.Name == tostring(plr.TeamColor) then
              v.OutlineColor = _G.FriendColor
              v.FillColor = _G.FriendColor
              v.FillTransparency = _G.FillTransparency
              esp(i, _G.FriendColor)
            else
              v.OutlineColor = _G.EnemyColor
              v.FillColor = _G.EnemyColor
              v.FillTransparency = _G.FillTransparency
              esp(i, _G.EnemyColor)
            end
          end
        end
        if _G.ShowFriendlies then
          if _G.Toggled then
            if string.find(v.Name, "Hidden") then
              local SplitName = string.split(v.Name, "|")
              v.Name = SplitName[1]
            end
            v.Enabled = true
          else
            if not string.find(v.Name, "Hidden") then
              v.Name = v.Name .. "|Hidden"
            end
            v.Enabled = false
          end
        elseif not _G.ShowFriendlies then
          if i.Parent.Name == tostring(plr.TeamColor) then
            if not string.find(v.Name, "Hidden") then
              v.Name = v.Name .. "|Hidden"
            end
            v.Enabled = false
          else
            if _G.Toggled then
              if string.find(v.Name, "Hidden") then
                local SplitName = string.split(v.Name, "|")
                v.Name = SplitName[1]
              end
              v.Enabled = true
            else
              if not string.find(v.Name, "Hidden") then
                v.Name = v.Name .. "|Hidden"
              end
              v.Enabled = false
            end
          end
        end
      end
    else
      Folder:Destroy()
      added:Disconnect()
      removed:Disconnect()
      break
    end
  end
end
