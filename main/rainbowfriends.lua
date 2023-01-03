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
