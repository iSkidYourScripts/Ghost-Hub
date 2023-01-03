if game.PlaceId == 7991339063 then -- RAINBOW FRIENDS LOADER [KEYLESS]
    local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/laderite/bleklib/main/library.lua"))()
    local window = library:Create({
        Name = "👻 | Rainbow Friends",
        StartupSound = {
            Toggle = true,
            SoundID = "rbxassetid://6958727243",
            TimePosition = 1
        }
    })
    local main = window:Tab('Main')
    local character = window:Tab('Character')
    local visuals = window:Tab('Visuals')
    local extra = window:Tab('Extra')
    main:Button('Collect all', function()
       for i, v in pairs(game.workspace.Map_C1.ItemSpawns:GetDescendants()) do
        if v.name == "ItemSpawn" then
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
          wait(0.1)
        end
       end
    end)
    main:Button('Deposit items', function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(371.54364013671875, 45.604129791259766, 132.65687561035156)
    end)
    visuals:Toggle('Fullbright', function(v)
        if v then
        game:GetService("Lighting").Brightness = 2
        game:GetService("Lighting").ClockTime = 14
        game:GetService("Lighting").FogEnd = 100000
        game:GetService("Lighting").GlobalShadows = false
        game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(128, 128, 128)
      end
    end)
    visuals:Toggle('Monster ESP', function(v)
        if v == true then
        for _,i in pairs(workspace.Monsters:GetChildren()) do
          local highlight = Instance.new("Highlight", i)
          highlight.FillColor = Color3.fromRGB(255, 0, 0)
        end
      else
        for _,i in pairs(workspace.Monsters:GetChildren()) do
          if i:FindFirstChild("Highlight") then
            i.Highlight:Destroy()
          end
        end
      end
    end)
    visuals:Toggle('Player ESP', function(v)
        if v == true then
        for _,i in pairs(game.Players:GetChildren()) do
          if i.Character then
            local highlight = Instance.new("Highlight", i.Character)
            highlight.FillColor = Color3.fromRGB(0, 255, 0)
          end
        end
      else
        for _,i in pairs(game.Players:GetChildren()) do
          if i.Character:FindFirstChild("Highlight") then
            i.Character.Highlight:Destroy()
          end
        end
      end
    end)
    visuals:Slider('FOV', 70, 50, 120, function(v)
      workspace.CurrentCamera.FieldOfView = v
    end)
    character:Slider('WalkSpeed', 16, 16, 100, function(v)
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)
    character:Slider('JumpPower', 50, 50, 100, function(v)
      game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
      game.Players.LocalPlayer.Character.Humanoid.UseJumpPower = true
    end)
    character:Toggle('Godmode', function(v)
      game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
    end)
    character:Button('Invisible', function()
      Local = game:GetService('Players').LocalPlayer
      Char  = Local.Character
      touched,tpdback = false, false
      Local.CharacterAdded:connect(function(char)
        if script.Disabled ~= true then
          wait(.25)
          loc = Char.HumanoidRootPart.Position
          Char:MoveTo(box.Position + Vector3.new(0,.5,0))
        end
      end)
      game:GetService('UserInputService').InputBegan:connect(function(key)
        if key.KeyCode == Enum.KeyCode.Equals then
          if script.Disabled ~= true then
            script.Disabled = true
            print'you may re-execute'
          end
        end
      end)
      box = Instance.new('Part',workspace)
      box.Anchored = true
      box.CanCollide = true
      box.Size = Vector3.new(10,1,10)
      box.Position = Vector3.new(0,10000,0)
      box.Touched:connect(function(part)
        if (part.Parent.Name == Local.Name) then
          if touched == false then
            touched = true
            function apply()
              if script.Disabled ~= true then
                no = Char.HumanoidRootPart:Clone()
                wait(.25)
                Char.HumanoidRootPart:Destroy()
                no.Parent = Char
                Char:MoveTo(loc)
                touched = false
              end end
            if Char then
              apply()
            end
          end
        end
      end)
      repeat wait() until Char
      loc = Char.HumanoidRootPart.Position
      Char:MoveTo(box.Position + Vector3.new(0,.5,0))
    end)
    extra:Button('Serverhop', function()
      game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Serverhop",
        Text = "Finding new server..",
        Duration = 5
      })
      local serverList = {}

        for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
          if v.playing and type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
            serverList[#serverList + 1] = v.id
          end
        end

        if #serverList > 0 then
          game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, serverList[math.random(1, #serverList)])
        else
            error("No servers found")
        end
    end)
    extra:Label('Ghost Hub v1.04 - StoneNicolas93#0001')
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Ghost Hub",
        Text = "Successfully loaded.",
        Duration = 5
    })
  elseif game.PlaceId == 155615604 then -- PRISION LIFE SCRIPT [KEY SYSTEM REQUIRED]
    local KeyUI = Instance.new("ScreenGui")
  local Frame = Instance.new("Frame")
  local Frame_2 = Instance.new("Frame")
  local TextLabel = Instance.new("TextLabel")
  local TextLabel_2 = Instance.new("TextLabel")
  local TextLabel_3 = Instance.new("TextLabel")
  local TextBox = Instance.new("TextBox")
  local check = Instance.new("TextButton")

  --Properties:

  KeyUI.Name = "KeyUI"
  KeyUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
  KeyUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

  Frame.Parent = KeyUI
  Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
  Frame.Position = UDim2.new(0.37118867, 0, 0.313432813, 0)
  Frame.Size = UDim2.new(0.257180721, 0, 0.373134315, 0)

  Frame_2.Parent = KeyUI
  Frame_2.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
  Frame_2.BorderColor3 = Color3.fromRGB(60, 60, 60)
  Frame_2.Position = UDim2.new(0.3711887, 0, 0.313432813, 0)
  Frame_2.Size = UDim2.new(0.257180721, 0, 0.0507462695, 0)

  TextLabel.Parent = Frame_2
  TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  TextLabel.BackgroundTransparency = 1.000
  TextLabel.Position = UDim2.new(0, 0, 0.0784313753, 0)
  TextLabel.Size = UDim2.new(1, 0, 0.843137264, 0)
  TextLabel.Font = Enum.Font.SourceSansBold
  TextLabel.Text = " Key Required"
  TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
  TextLabel.TextScaled = true
  TextLabel.TextSize = 14.000
  TextLabel.TextWrapped = true
  TextLabel.TextXAlignment = Enum.TextXAlignment.Left

  TextLabel_2.Parent = Frame_2
  TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  TextLabel_2.BackgroundTransparency = 1.000
  TextLabel_2.Position = UDim2.new(0.0584192425, 0, 1.58823526, 0)
  TextLabel_2.Size = UDim2.new(0.883161485, 0, 1.68627453, 0)
  TextLabel_2.Font = Enum.Font.SourceSans
  TextLabel_2.Text = "To get a key, join the discord server and copy the key, then paste it here."
  TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
  TextLabel_2.TextScaled = true
  TextLabel_2.TextSize = 14.000
  TextLabel_2.TextWrapped = true
  TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

  TextLabel_3.Parent = Frame_2
  TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  TextLabel_3.BackgroundTransparency = 1.000
  TextLabel_3.Position = UDim2.new(0.05841925, 0, 3.25490236, 0)
  TextLabel_3.Size = UDim2.new(0.883161485, 0, 0.843137264, 0)
  TextLabel_3.Font = Enum.Font.SourceSansBold
  TextLabel_3.Text = "discord.gg/89jkjqnVWK"
  TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
  TextLabel_3.TextScaled = true
  TextLabel_3.TextSize = 14.000
  TextLabel_3.TextWrapped = true

  TextBox.Parent = KeyUI
  TextBox.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
  TextBox.BorderSizePixel = 0
  TextBox.Position = UDim2.new(0.389748126, 0, 0.543283582, 0)
  TextBox.Size = UDim2.new(0.220061868, 0, 0.0338308476, 0)
  TextBox.ClearTextOnFocus = false
  TextBox.Font = Enum.Font.Code
  TextBox.PlaceholderText = "Enter Key Here"
  TextBox.Text = ""
  TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
  TextBox.TextSize = 17.000
  TextBox.TextWrapped = true

  check.Name = "check"
  check.Parent = KeyUI
  check.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
  check.BorderSizePixel = 0
  check.Position = UDim2.new(0.408749431, 0, 0.605970144, 0)
  check.Size = UDim2.new(0.182059214, 0, 0.0497512445, 0)
  check.Font = Enum.Font.SourceSansBold
  check.Text = "Check Key"
  check.TextColor3 = Color3.fromRGB(255, 255, 255)
  check.TextScaled = true
  check.TextSize = 14.000
  check.TextWrapped = true

  local key = game:HttpGet("https://pastebin.com/raw/E18wMiHc")
  check.MouseButton1Click:Connect(function()
    if TextBox.Text == key then
      loadstring(game:HttpGet(("https://pastebin.com/raw/kJQeCm8Z"), true))()
      KeyUI:Destroy()
    else
      print("Incorrect Key!")
    end
  end)
    end
end
