if getgenv().Status == "Restarting" then -- To detect if the script is restarting, preventing two of the same scripts running.
  return
end

getgenv().Status = "Enabled"
local coregui = game:GetService("CoreGui")
local players = game:GetService("Players")
local plr = players.LocalPlayer
local tick = tick
local fromHSV = Color3.fromHSV
local placeids = {292439477, 0}

if game:GetService("CoreGui"):FindFirstChild("Highlight Container") then
  getgenv().Status = "Restarting"
  getgenv().Status = "Enabled"
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
    highlight.FillTransparency = getgenv().FillTransparency
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

if not getgenv().UISEnabled then
  toggle = game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
  if input.KeyCode == getgenv().ToggleBind then
    if getgenv().Toggled == true then
      getgenv().Toggled = false
      for i, v in pairs(highlights) do
        if not string.find(v.Name, "Hidden") then
          v.Enabled = false
        end
      end
    elseif getgenv().Toggled == false then
      getgenv().Toggled = true
      for i, v in pairs(highlights) do
        if not string.find(v.Name, "Hidden") then
          v.Enabled = true
        end
      end
    end
  end
  end)
  getgenv().UISEnabled = true
end

if not table.find(placeids, game.PlaceId) then
  added = players.PlayerAdded:Connect(function(v)
  if v.Character then
    esp(v.Character, getgenv().UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and getgenv().FriendColor or getgenv().EnemyColor))
  else
    v.CharacterAdded:Connect(function()
    esp(v.Character, getgenv().UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and getgenv().FriendColor or getgenv().EnemyColor))
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
      local color = getgenv().UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and getgenv().FriendColor or getgenv().EnemyColor)
      v.CharacterAdded:Connect(function()
      local color = getgenv().UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and getgenv().FriendColor or getgenv().EnemyColor)
      esp(v.Character, color)
      end)
      esp(v.Character, color)
    end
  end

  while game:GetService("RunService").Heartbeat:Wait() do
    if getgenv().Status == "Enabled" then
      for i, v in pairs(highlights) do
        if getgenv().RGBMode and not getgenv().UseTeamColor then
          local hue = tick() % getgenv().RGBSpeed / getgenv().RGBSpeed
          local color = fromHSV(hue, 1, 1)
          v.OutlineColor = color
          v.FillColor = color
          v.FillTransparency = getgenv().FillTransparency
        else
          local color = getgenv().UseTeamColor and players:GetPlayerFromCharacter(i).TeamColor.Color or ((plr.TeamColor.Color == players:GetPlayerFromCharacter(i).TeamColor.Color) and getgenv().FriendColor or getgenv().EnemyColor)
          v.OutlineColor = color
          v.FillColor = color
          v.FillTransparency = getgenv().FillTransparency
        end
        if getgenv().ShowFriendlies then
          if getgenv().Toggled then
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
        elseif not getgenv().ShowFriendlies then
          if players:GetPlayerFromCharacter(i).TeamColor.Color == plr.TeamColor.Color then
            if not string.find(v.Name, "Hidden") then
              v.Name = v.Name .. "|Hidden"
            end
            v.Enabled = false
          else
            if getgenv().Toggled then
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
    if getgenv().Status == "Enabled" then
      for i, v in pairs(highlights) do
        if getgenv().RGBMode and not getgenv().UseTeamColor then
          local hue = tick() % getgenv().RGBSpeed / getgenv().RGBSpeed
          local color = fromHSV(hue, 1, 1)
          v.OutlineColor = color
          v.FillColor = color
          v.FillTransparency = getgenv().FillTransparency
        else
          if getgenv().UseTeamColor then
            if string.find(string.lower(i.Parent.Name), "blue") then
              v.OutlineColor = BrickColor.new("Bright blue").Color
              v.FillColor = BrickColor.new("Bright blue").Color
              v.FillTransparency = getgenv().FillTransparency
            elseif string.find(string.lower(i.Parent.Name), "orange") then
              v.OutlineColor = BrickColor.new("Bright orange").Color
              v.FillColor = BrickColor.new("Bright orange").Color
              v.FillTransparency = getgenv().FillTransparency
            end
          else
            if i.Parent.Name == tostring(plr.TeamColor) then
              v.OutlineColor = getgenv().FriendColor
              v.FillColor = getgenv().FriendColor
              v.FillTransparency = getgenv().FillTransparency
            else
              v.OutlineColor = getgenv().EnemyColor
              v.FillColor = getgenv().EnemyColor
              v.FillTransparency = getgenv().FillTransparency
            end
          end
        end
        if getgenv().ShowFriendlies then
          if getgenv().Toggled then
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
        elseif not getgenv().ShowFriendlies then
          if i.Parent.Name == tostring(plr.TeamColor) then
            if not string.find(v.Name, "Hidden") then
              v.Name = v.Name .. "|Hidden"
            end
            v.Enabled = false
          else
            if getgenv().Toggled then
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
