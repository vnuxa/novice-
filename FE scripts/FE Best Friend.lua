-- Hats cost(0/Free) || these are the hats for the same FE as in the video- 
-- Next video, will give hats to other FE in this hathub
 
-- https://www.roblox.com/catalog/376527115/Jade-Necklace-with-Shell-Pendant
-- https://www.roblox.com/catalog/1103003368/Orange-Beanie-with-Black-Hair
-- https://www.roblox.com/catalog/3992084515/International-Fedora-Vietnam
-- https://www.roblox.com/catalog/48474294/ROBLOX-Girl-Hair
-- https://www.roblox.com/catalog/451220849/Lavender-Updo
-- https://www.roblox.com/catalog/62724852/Chestnut-Bun
-- https://www.roblox.com/catalog/62234425/Brown-Hair
-- https://www.roblox.com/catalog/63690008/Pal-Hair
 
-- key
-- E -> try itself
-- Y -> try itself
-- U -> try itself
-- F -> try itself
-- G -> try itself
-- H -> try itself
-- J -> try itself 
-- K -> try itself 
 
 
local api = loadstring(game:HttpGet("https://raw.githubusercontent.com/BruhMoment-s/novice-/main/NoviceScriptsApi", true))()
api.addons:DisplayHats([[
    -- https://www.roblox.com/catalog/376527115/Jade-Necklace-with-Shell-Pendant
-- https://www.roblox.com/catalog/1103003368/Orange-Beanie-with-Black-Hair
-- https://www.roblox.com/catalog/3992084515/International-Fedora-Vietnam
-- https://www.roblox.com/catalog/48474294/ROBLOX-Girl-Hair
-- https://www.roblox.com/catalog/451220849/Lavender-Updo
-- https://www.roblox.com/catalog/62724852/Chestnut-Bun
-- https://www.roblox.com/catalog/62234425/Brown-Hair
-- https://www.roblox.com/catalog/63690008/Pal-Hair

]])
 
 
--this script to make your hats turn into blocks
local hairAccessoriesWithoutHairInName = {
['RedBeanieWithHair'] = true;
['VarietyShades10'] = true;
}
 
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v:IsA("Accessory","LongStraightHair") and not hairAccessoriesWithoutHairInName[v.Name] and v.Handle:FindFirstChild("Mesh") then
    ag = v.Handle:FindFirstChild("Mesh")
    ag:Destroy()
    end
    end
 
     for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v:IsA("Accessory","LongStraightHair") and not hairAccessoriesWithoutHairInName[v.Name] and v.Handle:FindFirstChild("SpecialMesh") then
    ag = v.Handle:FindFirstChild("SpecialMesh")
    ag:Destroy()
    end
    end
 
 
 
 
    loadstring(game:HttpGet(("https://pastebin.com/raw/8hueixfc"),true))()

    --//=================================\\
    --|| 	    𝙎𝙀𝙏𝙐𝙋 𝙁𝙐𝙉𝘾𝙏𝙄𝙊𝙉
    --\\=================================//
    
    local unanchoredparts = {}
    local movers = {}
    local tog = true
    local move = false
    local Player = game:GetService("Players").LocalPlayer
    local Character = Player.Character
    local mov = {};
    local mov2 = {};
    
    local x = -0.011   --Edit Position for head n +left and -Right
    local y = -0.587   --Edit Position for head up and down
    local z = -3.1534 --Edit Position for head x3
    
    local Hats = {
        head = Character:WaitForChild("InternationalFedora"),
        torso1 = Character:WaitForChild("Hat1"),
        torso2 = Character:WaitForChild("Kate Hair"),
        leftarm = Character:WaitForChild("LavanderHair"),
        rightarm = Character:WaitForChild("Necklace"),
        leftleg = Character:WaitForChild("Pal Hair"),
        rightleg = Character:WaitForChild("Pink Hair"),
        hair = Character:WaitForChild("RedBeanieWithHair"),
    }
    
    --Dont touch below
    
    for i,v in next, Hats do
        v.Handle.AccessoryWeld:Remove()
        for _,mesh in next, v:GetDescendants() do
            if mesh:IsA("Mesh") or mesh:IsA("SpecialMesh") then
                if mesh.Parent.Parent.Name == "Hat1" or mesh.Parent.Parent.Name == "Kate Hair" then
                    mesh.Parent.Parent.Handle.Color = Color3.new(0.666667, 0, 1)
                    mesh:Destroy()
                else
                    if mesh.Parent.Parent.Name == "RedBeanieWithHair" then
                        mesh.Parent.Parent.Handle.Color = Character.Head.Color
                    else 
                        mesh.Parent.Parent.Handle.Color = Character.Head.Color
                        mesh:Destroy()
                    end
                end
            end
        end
    end
    
    
    
    function ftp(str)
        local pt = {};
        if str ~= 'me' and str ~= 'random' then
            for i, v in pairs(game.Players:GetPlayers()) do
                if v.Name:lower():find(str:lower()) then
                    table.insert(pt, v);
                end
            end
        elseif str == 'me' then
            table.insert(pt, plr);
        elseif str == 'random' then
            table.insert(pt, game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]);
        end
        return pt;
    end
    
    local function align(i,v)
        local att0 = Instance.new("Attachment", i)
        att0.Position = Vector3.new(0,0,0)
        local att1 = Instance.new("Attachment", v)
        att1.Position = Vector3.new(0,0,0)
        local AP = Instance.new("AlignPosition", i)
        AP.Attachment0 = att0
        AP.Attachment1 = att1
        AP.RigidityEnabled = false
        AP.ReactionForceEnabled = false
        AP.ApplyAtCenterOfMass = true
        AP.MaxForce = 9999999
        AP.MaxVelocity = math.huge
        AP.Responsiveness = 65
        local AO = Instance.new("AlignOrientation", i)
        AO.Attachment0 = att0
        AO.Attachment1 = att1
        AO.ReactionTorqueEnabled = true
        AO.PrimaryAxisOnly = false
        AO.MaxTorque = 9999999
        AO.MaxAngularVelocity = math.huge
        AO.Responsiveness = 50
    end
    
    --Dont touch above
    
    --//=================================\\
    --|| 	 𝘼𝙏𝙏𝘼𝘾𝙃𝙈𝙀𝙉𝙏 𝘾𝙊𝙍𝙍𝙀𝘾𝙏𝙄𝙊𝙉𝙎
    --\\=================================//
    
    align(Hats.head.Handle, Character["HumanoidRootPart"])
    align(Hats.torso1.Handle, Character["HumanoidRootPart"])
    align(Hats.torso2.Handle, Character["HumanoidRootPart"])
    align(Hats.leftarm.Handle, Character["HumanoidRootPart"])
    align(Hats.rightarm.Handle, Character["HumanoidRootPart"])
    align(Hats.leftleg.Handle, Character["HumanoidRootPart"])
    align(Hats.rightleg.Handle, Character["HumanoidRootPart"])
    align(Hats.hair.Handle, Character["HumanoidRootPart"])
    
    Character:WaitForChild("HumanoidRootPart"):FindFirstChild("Attachment").Name = "Head"
    Character:WaitForChild("HumanoidRootPart"):FindFirstChild("Attachment").Name = "Torso1"
    Character:WaitForChild("HumanoidRootPart"):FindFirstChild("Attachment").Name = "Torso2"
    Character:WaitForChild("HumanoidRootPart"):FindFirstChild("Attachment").Name = "LeftArm"
    Character:WaitForChild("HumanoidRootPart"):FindFirstChild("Attachment").Name = "RightArm"
    Character:WaitForChild("HumanoidRootPart"):FindFirstChild("Attachment").Name = "LeftLeg"
    Character:WaitForChild("HumanoidRootPart"):FindFirstChild("Attachment").Name = "RightLeg"
    Character:WaitForChild("HumanoidRootPart"):FindFirstChild("Attachment").Name = "Hair"
    
    --//=================================\\
    --|| 	         𝙇𝙊𝘾𝘼𝙇𝙎
    --\\=================================//
    
    local QuickFix = 0
    local m = game.Players.LocalPlayer:GetMouse()
    local UIS = game:GetService("UserInputService")
    
    local face = Instance.new("Decal", Hats.head.Handle)
    local headmesh = Instance.new("SpecialMesh", Hats.head.Handle)
    
    headmesh.Scale = Vector3.new(1.155, 1.155, 1.155)
    
    face.Name = "face"
    face.Texture = "http://www.roblox.com/asset/?id=6014775299"
    
    local Idle = false -- ✔
    local Jump = false -- ✔
    local WalkingW = false -- ✔
    local WalkingA = false -- ✔
    local WalkingS = false -- ✔
    local WalkingD = false -- ✔
    
    local HairFix = false -- ✔
    local Dance1 = false -- ✔
    local Dance2 = false -- [REDACTED]
    local HeadStand = false -- ✔
    local Backflip = false -- ✔
    local FrontFlip = false -- ✔
    local FunnyBackflip = false -- ✔
    local PiggyBack = false -- ✔
    local Hug = false -- ✔
    local Sit = false -- ✔
    
    --//=================================\\
    --|| 	      𝙋𝘼𝙍𝙏 𝙇𝙊𝘾𝘼𝙇𝙎
    --\\=================================//
    
    local Head = Character:WaitForChild("HumanoidRootPart"):FindFirstChild("Head")
    local Torso1 = Character:WaitForChild("HumanoidRootPart"):FindFirstChild("Torso1")
    local Torso2 = Character:WaitForChild("HumanoidRootPart"):FindFirstChild("Torso2")
    local LeftArm = Character:WaitForChild("HumanoidRootPart"):FindFirstChild("LeftArm")
    local RightArm = Character:WaitForChild("HumanoidRootPart"):FindFirstChild("RightArm")
    local LeftLeg = Character:WaitForChild("HumanoidRootPart"):FindFirstChild("LeftLeg")
    local RightLeg = Character:WaitForChild("HumanoidRootPart"):FindFirstChild("RightLeg")
    local Hair = Character:WaitForChild("HumanoidRootPart"):FindFirstChild("Hair")
    
    --//=================================\\
    --|| 	       𝙁𝙐𝙉𝘾𝙏𝙄𝙊𝙉𝙎
    --\\=================================//
    
    --[[
    
        --
        Hair.Orientation = Vector3.new()
        Hair.Position = Vector3.new()
        --
        Head.Orientation = Vector3.new()
        Head.Position = Vector3.new()
        --
        LeftArm.Orientation = Vector3.new()
        LeftArm.Position = Vector3.new()
        --
        LeftLeg.Orientation = Vector3.new()
        LeftLeg.Position = Vector3.new()
        --
        RightArm.Orientation = Vector3.new()
        RightArm.Position = Vector3.new()
        --
        RightLeg.Orientation = Vector3.new()
        RightLeg.Position = Vector3.new()
        --
        Torso1.Orientation = Vector3.new()
        Torso1.Position = Vector3.new()
        --
        Torso2.Orientation = Vector3.new()
        Torso2.Position = Vector3.new()
        --
    
    ]]--
    
    wait(QuickFix)
    
    local function ShooDance()
        while wait(.2) do
            if HairFix or HeadStand or PiggyBack or FunnyBackflip == true or Dance1 == false then return end
            --
            Hair.Orientation = Vector3.new(-8.597, -0, 0)
            Hair.Position = Vector3.new(-2.153, 0.918, 0.806)
            --
            Head.Orientation = Vector3.new(-8.597, -0, 0)
            Head.Position = Vector3.new(-2.153, 1.465, 0.63)
            --
            LeftArm.Orientation = Vector3.new(-1.537, -179.801, 179.201)
            LeftArm.Position = Vector3.new(-0.751, 0.452, -0.058)
            --
            LeftLeg.Orientation = Vector3.new(69.086, 180, -180)
            LeftLeg.Position = Vector3.new(-1.748, -1.672, 0.376)
            --
            RightArm.Orientation = Vector3.new(-1.483, -176.148, 179.105)
            RightArm.Position = Vector3.new(-3.773, 0.408, 0.028)
            --
            RightLeg.Orientation = Vector3.new(89.621, -0, -0)
            RightLeg.Position = Vector3.new(-2.727, -2.062, 1.026)
            --
            Torso1.Orientation = Vector3.new(81.403, 0, 0)
            Torso1.Position = Vector3.new(-1.748, -0.001, 0.851)
            --
            Torso2.Orientation = Vector3.new(81.403, 0, 0)
            Torso2.Position = Vector3.new(-2.727, 0, 0.851)
            --
            wait(.2)
            if HairFix or HeadStand or PiggyBack or FunnyBackflip == true or Dance1 == false then return end
            --
            Hair.Orientation = Vector3.new(0, 0, 0)
            Hair.Position = Vector3.new(-2.1534, 0.862, 0.985)
            --
            Head.Orientation = Vector3.new(0, 0, 0)
            Head.Position = Vector3.new(-2.1534, 1.429, 0.892)
            --
            LeftArm.Orientation = Vector3.new(-1.537, -179.801, 179.201)
            LeftArm.Position = Vector3.new(-0.749, 0.434, 0.615)
            --
            LeftLeg.Orientation = Vector3.new(89.622, 0, 0)
            LeftLeg.Position = Vector3.new(-1.748, -2.018, 0.994)
            --
            RightArm.Orientation = Vector3.new(-1.483, -176.148, 179.105)
            RightArm.Position = Vector3.new(-3.771, 0.39, 0.701)
            --
            RightLeg.Orientation = Vector3.new(89.622, -0, -0)
            RightLeg.Position = Vector3.new(-2.727, -2.062, 1.026)
            --
            Torso1.Orientation = Vector3.new(90, -0, 0)
            Torso1.Position = Vector3.new(-1.748, -0.053, 0.892)
            --
            Torso2.Orientation = Vector3.new(90, -0, 0)
            Torso2.Position = Vector3.new(-2.727, -0.052, 0.892)
            --
            wait(.2)
            if HairFix or HeadStand or PiggyBack or FunnyBackflip == true or Dance1 == false then return end
            --
            Hair.Orientation = Vector3.new(-8.597, -0, 0)
            Hair.Position = Vector3.new(-2.153, 0.918, 0.806)
            --
            Head.Orientation = Vector3.new(-8.597, -0, 0)
            Head.Position = Vector3.new(-2.153, 1.465, 0.63)
            --
            LeftArm.Orientation = Vector3.new(-1.537, -179.801, 179.201)
            LeftArm.Position = Vector3.new(-0.751, 0.452, -0.058)
            --
            LeftLeg.Orientation = Vector3.new(89.622, 0, 0)
            LeftLeg.Position = Vector3.new(-1.748, -2.018, 0.994)
            --
            RightArm.Orientation = Vector3.new(-1.483, -176.148, 179.105)
            RightArm.Position = Vector3.new(-3.773, 0.408, 0.028)
            --
            RightLeg.Orientation = Vector3.new(69.086, -180, 180)
            RightLeg.Position = Vector3.new(-2.763, -1.672, 0.376)
            --
            Torso1.Orientation = Vector3.new(81.403, 0, 0)
            Torso1.Position = Vector3.new(-1.748, -0.001, 0.851)
            --
            Torso2.Orientation = Vector3.new(81.403, 0, 0)
            Torso2.Position = Vector3.new(-2.727, 0, 0.851)
            --
            wait(.2)
            if HairFix or HeadStand or PiggyBack or FunnyBackflip == true or Dance1 == false then return end
            --
            Hair.Orientation = Vector3.new(0, 0, 0)
            Hair.Position = Vector3.new(-2.1534, 0.862, 0.985)
            --
            Head.Orientation = Vector3.new(0, 0, 0)
            Head.Position = Vector3.new(-2.1534, 1.429, 0.892)
            --
            LeftArm.Orientation = Vector3.new(-1.537, -179.801, 179.201)
            LeftArm.Position = Vector3.new(-0.749, 0.434, 0.615)
            --
            LeftLeg.Orientation = Vector3.new(89.622, 0, 0)
            LeftLeg.Position = Vector3.new(-1.748, -2.018, 0.994)
            --
            RightArm.Orientation = Vector3.new(-1.483, -176.148, 179.105)
            RightArm.Position = Vector3.new(-3.771, 0.39, 0.701)
            --
            RightLeg.Orientation = Vector3.new(89.622, -0, -0)
            RightLeg.Position = Vector3.new(-2.727, -2.062, 1.026)
            --
            Torso1.Orientation = Vector3.new(90, -0, 0)
            Torso1.Position = Vector3.new(-1.748, -0.053, 0.892)
            --
            Torso2.Orientation = Vector3.new(90, -0, 0)
            Torso2.Position = Vector3.new(-2.727, -0.052, 0.892)
            --
        end
    end
    
    local function startPos()
        --
        Hair.Orientation = Vector3.new(0, 0, 0)
        Hair.Position = Vector3.new(-2.1534, 0.862, 0.985)
        --
        Head.Orientation = Vector3.new(0, 0, 0)
        Head.Position = Vector3.new(-2.1534, 1.429, 0.892)
        --
        LeftArm.Orientation = Vector3.new(88.602, 90, 90)
        LeftArm.Position = Vector3.new(-0.737, -0.039, 0.892)
        --
        LeftLeg.Orientation = Vector3.new(90, -0, 0)
        LeftLeg.Position = Vector3.new(-1.748, -2.03, 0.892)
        --
        RightArm.Orientation = Vector3.new(87.746, -90, -90)
        RightArm.Position = Vector3.new(-3.761, -0.036, 0.892)
        --
        RightLeg.Orientation = Vector3.new(90, -0, 0)
        RightLeg.Position = Vector3.new(-2.727, -2.026, 0.892)
        --
        Torso1.Orientation = Vector3.new(90, -0, 0)
        Torso1.Position = Vector3.new(-1.748, -0.053, 0.892)
        --
        Torso2.Orientation = Vector3.new(90, -0, 0)
        Torso2.Position = Vector3.new(-2.727, -0.052, 0.892)
        --
    end
    
    local function IdlePos1()
        --
        Hair.Orientation = Vector3.new(3.591, -0, 0)
        Hair.Position = Vector3.new(-2.1534, 0.909, 1.1509)
        --
        Head.Orientation = Vector3.new(3.591, -0, 0)
        Head.Position = Vector3.new(-2.1534, 1.481, 1.052)
        --
        LeftArm.Orientation = Vector3.new(86.1547, 158.711, 158.754)
        LeftArm.Position = Vector3.new(-0.737, 0.015, 0.96)
        --
        LeftLeg.Orientation = Vector3.new(90, -0, 0)
        LeftLeg.Position = Vector3.new(-1.748, -2.03, 0.892)
        --
        RightArm.Orientation = Vector3.new(85.761, -147.852, -147.923)
        RightArm.Position = Vector3.new(-3.761, 0.018, 0.96)
        --
        RightLeg.Orientation = Vector3.new(90, -0, 0)
        RightLeg.Position = Vector3.new(-2.727, -2.026, 0.892)
        --
        Torso1.Orientation = Vector3.new(86.409, 180, 180)
        Torso1.Position = Vector3.new(-1.748, 0.001, 0.959)
        --
        Torso2.Orientation = Vector3.new(86.409, 180, 180)
        Torso2.Position = Vector3.new(-2.727, 0.002, 0.959)
        --
    end
    
    local function IdlePos2()
        --
        Hair.Orientation = Vector3.new(3.591, -0, 0)
        Hair.Position = Vector3.new(-2.1534, 0.909, 1.1509)
        --
        Head.Orientation = Vector3.new(3.591, -0, 0)
        Head.Position = Vector3.new(-2.1534, 1.481, 1.052)
        --
        LeftArm.Orientation = Vector3.new(84.832, 164.1577, 164.392)
        LeftArm.Position = Vector3.new(-0.735, 0.061, 0.965)
        --
        LeftLeg.Orientation = Vector3.new(90, -0, 0)
        LeftLeg.Position = Vector3.new(-1.748, -2.03, 0.892)
        --
        RightArm.Orientation = Vector3.new(84.536, -155.612, -155.655)
        RightArm.Position = Vector3.new(-3.759, 0.064, 0.963)
        --
        RightLeg.Orientation = Vector3.new(90, -0, 0)
        RightLeg.Position = Vector3.new(-2.727, -2.026, 0.892)
        --
        Torso1.Orientation = Vector3.new(86.409, 180, 180)
        Torso1.Position = Vector3.new(-1.748, 0.001, 0.959)
        --
        Torso2.Orientation = Vector3.new(86.409, 180, 180)
        Torso2.Position = Vector3.new(-2.727, 0.002, 0.959)
        --
    end
    
    local function Walk1()
        --
        Hair.Orientation = Vector3.new(0, 0, 0)
        Hair.Position = Vector3.new(-2.1534, 0.862, 0.985)
        --
        Head.Orientation = Vector3.new(0, 0, 0)
        Head.Position = Vector3.new(-2.1534, 1.429, 0.892)
        --
        LeftArm.Orientation = Vector3.new(53.401, 1.883, 2.345)
        LeftArm.Position = Vector3.new(-0.736, -0.092, 1.55)
        --
        LeftLeg.Orientation = Vector3.new(54.499, 0, -0)
        LeftLeg.Position = Vector3.new(-1.748, -2.087, 1.592)
        --
        RightArm.Orientation = Vector3.new(55.842, -176.674, -175.983)
        RightArm.Position = Vector3.new(-3.765, -0.1527, 0.1561)
        --
        RightLeg.Orientation = Vector3.new(49.1581, -180, 180)
        RightLeg.Position = Vector3.new(-2.727, -2.08, 0.1565)
        --
        Torso1.Orientation = Vector3.new(90, -0, 0)
        Torso1.Position = Vector3.new(-1.748, -0.053, 0.892)
        --
        Torso2.Orientation = Vector3.new(90, -0, 0)
        Torso2.Position = Vector3.new(-2.727, -0.052, 0.892)
        --
    end
    
    local function Walk2()
        --
        Hair.Orientation = Vector3.new(0, 0, 0)
        Hair.Position = Vector3.new(-2.1534, 0.862, 0.985)
        --
        Head.Orientation = Vector3.new(0, 0, 0)
        Head.Position = Vector3.new(-2.1534, 1.429, 0.892)
        --
        LeftArm.Orientation = Vector3.new(58.794, 177.691, 177.301)
        LeftArm.Position = Vector3.new(-0.734, -0.1545, 0.417)
        --
        LeftLeg.Orientation = Vector3.new(49.1581, 180, -180)
        LeftLeg.Position = Vector3.new(-1.739, -2.08, 0.1565)
        --
        RightArm.Orientation = Vector3.new(46.1595, -2.352, -3.1557)
        RightArm.Position = Vector3.new(-3.754, -0.1528, 1.645)
        --
        RightLeg.Orientation = Vector3.new(52.089, 0, -0)
        RightLeg.Position = Vector3.new(-2.727, -2.151, 1.562)
        --
        Torso1.Orientation = Vector3.new(90, -0, 0)
        Torso1.Position = Vector3.new(-1.748, -0.053, 0.892)
        --
        Torso2.Orientation = Vector3.new(90, -0, 0)
        Torso2.Position = Vector3.new(-2.727, -0.052, 0.892)
        --
    end
    
    local function JumpPos()
        --
        Hair.Orientation = Vector3.new(-12.641, 0, -0)
        Hair.Position = Vector3.new(-2.153, 0.941, 1.032)
        --
        Head.Orientation = Vector3.new(-12.641, 0, -0)
        Head.Position = Vector3.new(-2.153, 1.474, 0.817)
        --
        LeftArm.Orientation = Vector3.new(-16.772, -179.579, 178.54)
        LeftArm.Position = Vector3.new(-0.754, 0.665, 0.25)
        --
        LeftLeg.Orientation = Vector3.new(90, -0, 0)
        LeftLeg.Position = Vector3.new(-1.748, -1.041, 0.573)
        --
        RightArm.Orientation = Vector3.new(-16.644, -175.768, 177.444)
        RightArm.Position = Vector3.new(-3.776, 0.569, 0.324)
        --
        RightLeg.Orientation = Vector3.new(90, -0, 0)
        RightLeg.Position = Vector3.new(-2.727, -1.037, 0.573)
        --
        Torso1.Orientation = Vector3.new(90, 0, 0)
        Torso1.Position = Vector3.new(-1.748, -0.053, 0.892)
        --
        Torso2.Orientation = Vector3.new(90, 0, 0)
        Torso2.Position = Vector3.new(-2.727, -0.052, 0.892)
        --
    end
    
    local function hairFixAct()
        --
        Hair.Orientation = Vector3.new(0, 0, 0)
        Hair.Position = Vector3.new(-2.1534, 0.862, 0.985)
        --
        Head.Orientation = Vector3.new(0, 0, 0)
        Head.Position = Vector3.new(-2.1534, 1.429, 0.892)
        --
        LeftArm.Orientation = Vector3.new(88.602, 90, 90)
        LeftArm.Position = Vector3.new(-0.737, -0.039, 0.892)
        --
        LeftLeg.Orientation = Vector3.new(90, -0, 0)
        LeftLeg.Position = Vector3.new(-1.748, -2.03, 0.892)
        --
        RightArm.Orientation = Vector3.new(-42.141, 113.075, 139.74)
        RightArm.Position = Vector3.new(-2.863, 0.648, 0.225)
        --
        RightLeg.Orientation = Vector3.new(90, -0, 0)
        RightLeg.Position = Vector3.new(-2.727, -2.026, 0.892)
        --
        Torso1.Orientation = Vector3.new(90, -0, 0)
        Torso1.Position = Vector3.new(-1.748, -0.053, 0.892)
        --
        Torso2.Orientation = Vector3.new(90, -0, 0)
        Torso2.Position = Vector3.new(-2.727, -0.052, 0.892)
        --
        wait(.2)
        --
        Hair.Orientation = Vector3.new(2.065, 0, -0)
        Hair.Position = Vector3.new(-2.153, 0.945, 1.075)
        --
        Head.Orientation = Vector3.new(0, 0, 0)
        Head.Position = Vector3.new(-2.1534, 1.429, 0.892)
        --
        LeftArm.Orientation = Vector3.new(88.602, 90, 90)
        LeftArm.Position = Vector3.new(-0.737, -0.039, 0.892)
        --
        LeftLeg.Orientation = Vector3.new(90, -0, 0)
        LeftLeg.Position = Vector3.new(-1.748, -2.03, 0.892)
        --
        RightArm.Orientation = Vector3.new(-54.652, 76.1, 167.975)
        RightArm.Position = Vector3.new(-2.854, 0.819, 0.452)
        --
        RightLeg.Orientation = Vector3.new(90, -0, 0)
        RightLeg.Position = Vector3.new(-2.727, -2.026, 0.892)
        --
        Torso1.Orientation = Vector3.new(90, -0, 0)
        Torso1.Position = Vector3.new(-1.748, -0.053, 0.892)
        --
        Torso2.Orientation = Vector3.new(90, -0, 0)
        Torso2.Position = Vector3.new(-2.727, -0.052, 0.892)
        --
        wait(.2)
        --
        Hair.Orientation = Vector3.new(2.065, 0, -0)
        Hair.Position = Vector3.new(-2.153, 0.945, 1.075)
        --
        Head.Orientation = Vector3.new(0, 0, 0)
        Head.Position = Vector3.new(-2.1534, 1.429, 0.892)
        --
        LeftArm.Orientation = Vector3.new(88.602, 90, 90)
        LeftArm.Position = Vector3.new(-0.737, -0.039, 0.892)
        --
        LeftLeg.Orientation = Vector3.new(90, -0, 0)
        LeftLeg.Position = Vector3.new(-1.748, -2.03, 0.892)
        --
        RightArm.Orientation = Vector3.new(87.746, -90, -90)
        RightArm.Position = Vector3.new(-3.761, -0.036, 0.892)
        --
        RightLeg.Orientation = Vector3.new(90, -0, 0)
        RightLeg.Position = Vector3.new(-2.727, -2.026, 0.892)
        --
        Torso1.Orientation = Vector3.new(90, -0, 0)
        Torso1.Position = Vector3.new(-1.748, -0.053, 0.892)
        --
        Torso2.Orientation = Vector3.new(90, -0, 0)
        Torso2.Position = Vector3.new(-2.727, -0.052, 0.892)
        --
    end
    
    local function headStandAct()
        --
        Hair.Orientation = Vector3.new(-20.508, 0, 0)
        Hair.Position = Vector3.new(-0.044, 3.734, 0.33)
        --
        Head.Orientation = Vector3.new(-20.508, 0, 0)
        Head.Position = Vector3.new(-0.044, 4.232, 0.044)
        --
        LeftArm.Orientation = Vector3.new(77.256, 174.42, 173.89)
        LeftArm.Position = Vector3.new(1.376, 2.566, 0.085)
        --
        LeftLeg.Orientation = Vector3.new(1.225, 155.696, 179.447)
        LeftLeg.Position = Vector3.new(0.787, 1.302, -0.023)
        --
        RightArm.Orientation = Vector3.new(77.131, -169.06, -169.995)
        RightArm.Position = Vector3.new(-1.648, 2.57, 0.122)
        --
        RightLeg.Orientation = Vector3.new(1.265, -160.193, -179.544)
        RightLeg.Position = Vector3.new(-0.861, 1.302, -0.001)
        --
        Torso1.Orientation = Vector3.new(74.223, 0, 0)
        Torso1.Position = Vector3.new(0.362, 2.805, 0.54)
        --
        Torso2.Orientation = Vector3.new(74.223, 0, 0)
        Torso2.Position = Vector3.new(-0.617, 2.806, 0.54)
        --
    end
    
    local bflipt = .09
    
    local function BackFlipAct()
        --
        Hair.Orientation = Vector3.new(-12.641, 0, -0)
        Hair.Position = Vector3.new(-2.153, 0.941, 1.032)
        --
        Head.Orientation = Vector3.new(-12.641, 0, -0)
        Head.Position = Vector3.new(-2.153, 1.474, 0.817)
        --
        LeftArm.Orientation = Vector3.new(-16.772, -179.579, 178.54)
        LeftArm.Position = Vector3.new(-0.754, 0.665, 0.25)
        --
        LeftLeg.Orientation = Vector3.new(90, -0, 0)
        LeftLeg.Position = Vector3.new(-1.748, -1.041, 0.573)
        --
        RightArm.Orientation = Vector3.new(-16.644, -175.768, 177.444)
        RightArm.Position = Vector3.new(-3.776, 0.569, 0.324)
        --
        RightLeg.Orientation = Vector3.new(90, -0, 0)
        RightLeg.Position = Vector3.new(-2.727, -1.037, 0.573)
        --
        Torso1.Orientation = Vector3.new(90, 0, 0)
        Torso1.Position = Vector3.new(-1.748, -0.053, 0.892)
        --
        Torso2.Orientation = Vector3.new(90, 0, 0)
        Torso2.Position = Vector3.new(-2.727, -0.052, 0.892)
        --
        wait(bflipt)
        --
        Hair.Orientation = Vector3.new(67.213, 0, -0)
        Hair.Position = Vector3.new(-2.153, 1.503, 2.926)
        --
        Head.Orientation = Vector3.new(67.213, 0, -0)
        Head.Position = Vector3.new(-2.153, 1.808, 3.413)
        --
        LeftArm.Orientation = Vector3.new(-83.362, -3.489, 2.127)
        LeftArm.Position = Vector3.new(-0.754, 2.224, 2.516)
        --
        LeftLeg.Orientation = Vector3.new(10.146, -180, -180)
        LeftLeg.Position = Vector3.new(-1.748, 1.605, 0.894)
        --
        RightArm.Orientation = Vector3.new(-82.309, -31.892, 30.319)
        RightArm.Position = Vector3.new(-3.776, 2.134, 2.435)
        --
        RightLeg.Orientation = Vector3.new(10.146, -180, -180)
        RightLeg.Position = Vector3.new(-2.727, 1.606, 0.898)
        --
        Torso1.Orientation = Vector3.new(10.146, -180, -180)
        Torso1.Position = Vector3.new(-1.748, 1.465, 1.923)
        --
        Torso2.Orientation = Vector3.new(10.146, -180, -180)
        Torso2.Position = Vector3.new(-2.727, 1.466, 1.924)
        --
        wait(bflipt)
        --
        Hair.Orientation = Vector3.new(31.423, -180, -180)
        Hair.Position = Vector3.new(-2.153, -0.964, 1.525)
        --
        Head.Orientation = Vector3.new(31.423, -180, -180)
        Head.Position = Vector3.new(-2.153, -1.399, 1.9)
        --
        LeftArm.Orientation = Vector3.new(-2.01, -0.403, -1.324)
        LeftArm.Position = Vector3.new(-0.754, -0.451, 2.177)
        --
        LeftLeg.Orientation = Vector3.new(-71.218, 180, -180)
        LeftLeg.Position = Vector3.new(-1.748, 1.06, 1.322)
        --
        RightArm.Orientation = Vector3.new(-2.09, -4.057, -1.194)
        RightArm.Position = Vector3.new(-3.776, -0.384, 2.076)
        --
        RightLeg.Orientation = Vector3.new(-71.218, 180, -180)
        RightLeg.Position = Vector3.new(-2.727, 1.056, 1.323)
        --
        Torso1.Orientation = Vector3.new(-71.218, 180, -180)
        Torso1.Position = Vector3.new(-1.748, 0.022, 1.338)
        --
        Torso2.Orientation = Vector3.new(-71.218, 180, -180)
        Torso2.Position = Vector3.new(-2.727, 0.021, 1.338)
        --
        wait(bflipt)
        --
        Hair.Orientation = Vector3.new(-77.3, -180, 180)
        Hair.Position = Vector3.new(-2.153, 0.097, 0.857)
        --
        Head.Orientation = Vector3.new(-77.3, -180, 180)
        Head.Position = Vector3.new(-2.153, -0.118, 0.324)
        --
        LeftArm.Orientation = Vector3.new(73.283, -178.6, -179.997)
        LeftArm.Position = Vector3.new(-0.754, -0.685, 1.133)
        --
        LeftLeg.Orientation = Vector3.new(-0.059, -0, 0)
        LeftLeg.Position = Vector3.new(-1.748, -0.36, 2.839)
        --
        RightArm.Orientation = Vector3.new(72.899, -166.088, -168.023)
        RightArm.Position = Vector3.new(-3.776, -0.611, 1.229)
        --
        RightLeg.Orientation = Vector3.new(-0.059, -0, 0)
        RightLeg.Position = Vector3.new(-2.727, -0.36, 2.835)
        --
        Torso1.Orientation = Vector3.new(-0.059, -0, 0)
        Torso1.Position = Vector3.new(-1.748, -0.042, 1.85)
        --
        Torso2.Orientation = Vector3.new(-0.059, -0, 0)
        Torso2.Position = Vector3.new(-2.727, -0.042, 1.85)
        --
        wait(bflipt)
        startPos()
    end
    
    local function FrontFlipAct()
        --
        Hair.Orientation = Vector3.new(-49.659, -180, 180)
        Hair.Position = Vector3.new(-2.153, 0.489, -0.904)
        --
        Head.Orientation = Vector3.new(-49.659, -180, 180)
        Head.Position = Vector3.new(-2.153, 0.051, -1.276)
        --
        LeftArm.Orientation = Vector3.new(79.065, -2.126, -3.425)
        LeftArm.Position = Vector3.new(-0.754, -0.075, -0.296)
        --
        LeftLeg.Orientation = Vector3.new(-27.7, 0, 0)
        LeftLeg.Position = Vector3.new(-1.748, 1.004, 1.065)
        --
        RightArm.Orientation = Vector3.new(78.273, -20.357, -21.308)
        RightArm.Position = Vector3.new(-3.776, 0.035, -0.245)
        --
        RightLeg.Orientation = Vector3.new(-27.7, 0, 0)
        RightLeg.Position = Vector3.new(-2.727, 1.002, 1.061)
        --
        Torso1.Orientation = Vector3.new(-27.7, 0, 0)
        Torso1.Position = Vector3.new(-1.748, 0.828, 0.042)
        --
        Torso2.Orientation = Vector3.new(-27.7, 0, 0)
        Torso2.Position = Vector3.new(-2.727, 0.827, 0.041)
        --
        wait(bflipt)
        --
        Hair.Orientation = Vector3.new(77.483, 180, 180)
        Hair.Position = Vector3.new(-2.153, -0.157, 0.061)
        --
        Head.Orientation = Vector3.new(77.483, 180, 180)
        Head.Position = Vector3.new(-2.153, -0.189, 0.634)
        --
        LeftArm.Orientation = Vector3.new(-48.068, -0.603, -0.89)
        LeftArm.Position = Vector3.new(-0.754, 0.668, 0.143)
        --
        LeftLeg.Orientation = Vector3.new(-25.158, -180, 180)
        LeftLeg.Position = Vector3.new(-1.748, 1.101, -1.538)
        --
        RightArm.Orientation = Vector3.new(-47.996, -6.065, 3.173)
        RightArm.Position = Vector3.new(-3.776, 0.642, 0.025)
        --
        RightLeg.Orientation = Vector3.new(-25.158, -180, 180)
        RightLeg.Position = Vector3.new(-2.727, 1.099, -1.535)
        --
        Torso1.Orientation = Vector3.new(-25.158, -180, 180)
        Torso1.Position = Vector3.new(-1.748, 0.392, -0.78)
        --
        Torso2.Orientation = Vector3.new(-25.158, -180, 180)
        Torso2.Position = Vector3.new(-2.727, 0.392, -0.779)
        --
        wait(bflipt)
        --
        Hair.Orientation = Vector3.new(30.581, 0, 0)
        Hair.Position = Vector3.new(-2.153, 0.621, 1.271)
        --
        Head.Orientation = Vector3.new(30.581, 0, 0)
        Head.Position = Vector3.new(-2.153, 1.157, 1.479)
        --
        LeftArm.Orientation = Vector3.new(-59.992, -179.194, 177.963)
        LeftArm.Position = Vector3.new(-0.754, 0.955, 0.512)
        --
        LeftLeg.Orientation = Vector3.new(46.778, -180, 180)
        LeftLeg.Position = Vector3.new(-1.748, -0.509, -0.421)
        --
        RightArm.Orientation = Vector3.new(-59.662, -171.953, 171.702)
        RightArm.Position = Vector3.new(-3.776, 0.835, 0.5)
        --
        RightLeg.Orientation = Vector3.new(46.778, -180, 180)
        RightLeg.Position = Vector3.new(-2.727, -0.506, -0.418)
        --
        Torso1.Orientation = Vector3.new(46.778, -180, 180)
        Torso1.Position = Vector3.new(-1.748, -0.007, 0.488)
        --
        Torso2.Orientation = Vector3.new(46.778, -180, 180)
        Torso2.Position = Vector3.new(-2.727, -0.007, 0.489)
        --
        wait(bflipt)
        startPos()
    end
    
    local function FunnyBackflipAct()
        --
        Hair.Orientation = Vector3.new(-12.641, 0, -0)
        Hair.Position = Vector3.new(-2.153, 0.941, 1.032)
        --
        Head.Orientation = Vector3.new(-12.641, 0, -0)
        Head.Position = Vector3.new(-2.153, 1.474, 0.817)
        --
        LeftArm.Orientation = Vector3.new(-16.772, -179.579, 178.54)
        LeftArm.Position = Vector3.new(-0.754, 0.665, 0.25)
        --
        LeftLeg.Orientation = Vector3.new(90, -0, 0)
        LeftLeg.Position = Vector3.new(-1.748, -1.041, 0.573)
        --
        RightArm.Orientation = Vector3.new(-16.644, -175.768, 177.444)
        RightArm.Position = Vector3.new(-3.776, 0.569, 0.324)
        --
        RightLeg.Orientation = Vector3.new(90, -0, 0)
        RightLeg.Position = Vector3.new(-2.727, -1.037, 0.573)
        --
        Torso1.Orientation = Vector3.new(90, 0, 0)
        Torso1.Position = Vector3.new(-1.748, -0.053, 0.892)
        --
        Torso2.Orientation = Vector3.new(90, 0, 0)
        Torso2.Position = Vector3.new(-2.727, -0.052, 0.892)
        --
        wait(bflipt)
        --
        Hair.Orientation = Vector3.new(76.676, -0, -0)
        Hair.Position = Vector3.new(-2.153, 0.553, 1.825)
        --
        Head.Orientation = Vector3.new(76.676, -0, -0)
        Head.Position = Vector3.new(-2.153, 0.774, 2.356)
        --
        LeftArm.Orientation = Vector3.new(-73.905, -1.454, 0.059)
        LeftArm.Position = Vector3.new(-0.754, 1.332, 1.54)
        --
        LeftLeg.Orientation = Vector3.new(0.683, -180, -180)
        LeftLeg.Position = Vector3.new(-1.748, 0.988, -0.162)
        --
        RightArm.Orientation = Vector3.new(-73.503, -14.418, 12.506)
        RightArm.Position = Vector3.new(-3.776, 1.256, 1.445)
        --
        RightLeg.Orientation = Vector3.new(0.683, -180, -180)
        RightLeg.Position = Vector3.new(-2.727, 0.988, -0.158)
        --
        Torso1.Orientation = Vector3.new(0.683, -180, -180)
        Torso1.Position = Vector3.new(-1.748, 0.681, 0.83)
        --
        Torso2.Orientation = Vector3.new(0.683, -180, -180)
        Torso2.Position = Vector3.new(-2.727, 0.681, 0.831)
        --
        wait(bflipt)
        --
        Hair.Orientation = Vector3.new(21.142, -180, 180)
        Hair.Position = Vector3.new(-2.153, 0.757, 1.51)
        --
        Head.Orientation = Vector3.new(21.142, -180, 180)
        Head.Position = Vector3.new(-2.153, 0.261, 1.802)
        --
        LeftArm.Orientation = Vector3.new(8.272, -0.407, -1.397)
        LeftArm.Position = Vector3.new(-0.754, 1.145, 2.243)
        --
        LeftLeg.Orientation = Vector3.new(-81.499, -180, 180)
        LeftLeg.Position = Vector3.new(-1.748, 2.785, 1.671)
        --
        RightArm.Orientation = Vector3.new(8.166, -4.096, -1.925)
        RightArm.Position = Vector3.new(-3.776, 1.229, 2.156)
        --
        RightLeg.Orientation = Vector3.new(-81.499, -180, 180)
        RightLeg.Position = Vector3.new(-2.727, 2.781, 1.672)
        --
        Torso1.Orientation = Vector3.new(-81.499, -180, 180)
        Torso1.Position = Vector3.new(-1.748, 1.761, 1.502)
        --
        Torso2.Orientation = Vector3.new(-81.499, -180, 180)
        Torso2.Position = Vector3.new(-2.727, 1.76, 1.502)
        --
        wait(bflipt)
        --
        Hair.Orientation = Vector3.new(-43.859, 0, -0.001)
        Hair.Position = Vector3.new(-2.153, 2.551, 1.76)
        --
        Head.Orientation = Vector3.new(-43.859, 0, -0.001)
        Head.Position = Vector3.new(-2.153, 2.896, 1.3)
        --
        LeftArm.Orientation = Vector3.new(14.445, -179.584, 178.766)
        LeftArm.Position = Vector3.new(-0.754, 1.91, 1.234)
        --
        LeftLeg.Orientation = Vector3.new(58.782, -0.001, -0.001)
        LeftLeg.Position = Vector3.new(-1.748, 0.619, 2.394)
        --
        RightArm.Orientation = Vector3.new(14.493, -175.812, 179.709)
        RightArm.Position = Vector3.new(-3.776, 1.866, 1.347)
        --
        RightLeg.Orientation = Vector3.new(58.782, -0.001, -0.001)
        RightLeg.Position = Vector3.new(-2.727, 0.622, 2.392)
        --
        Torso1.Orientation = Vector3.new(58.782, -0.001, -0.001)
        Torso1.Position = Vector3.new(-1.748, 1.629, 2.155)
        --
        Torso2.Orientation = Vector3.new(58.782, -0.001, -0.001)
        Torso2.Position = Vector3.new(-2.727, 1.63, 2.155)
        --
        wait()
        --
        Hair.Orientation = Vector3.new(-1.237, 11.16, -52.492)
        Hair.Position = Vector3.new(-1.466, 1.25, 2.131)
        --
        Head.Orientation = Vector3.new(-1.237, 11.16, -52.492)
        Head.Position = Vector3.new(-1.044, 1.593, 1.945)
        --
        LeftArm.Orientation = Vector3.new(-40.252, 90.255, -92.699)
        LeftArm.Position = Vector3.new(-0.911, 0.726, 2.042)
        --
        LeftLeg.Orientation = Vector3.new(-3.523, -91.586, -87.938)
        LeftLeg.Position = Vector3.new(-4.591, 1.011, 1.943)
        --
        RightArm.Orientation = Vector3.new(-1.044, -90.442, -91.457)
        RightArm.Position = Vector3.new(-2.655, 2.746, 1.982)
        --
        RightLeg.Orientation = Vector3.new(8.974, -91.134, -87.916)
        RightLeg.Position = Vector3.new(-4.586, 2.181, 1.901)
        --
        Torso1.Orientation = Vector3.new(-3.523, -91.586, -87.938)
        Torso1.Position = Vector3.new(-2.598, 0.888, 2.001)
        --
        Torso2.Orientation = Vector3.new(-3.523, -91.586, -87.938)
        Torso2.Position = Vector3.new(-2.536, 1.864, 1.968)
        --
        wait(bflipt)
        --
        Hair.Orientation = Vector3.new(-1.237, 11.16, -48.971)
        Hair.Position = Vector3.new(-1.545, -2.04, 2.219)
        --
        Head.Orientation = Vector3.new(-1.237, 11.16, -48.971)
        Head.Position = Vector3.new(-1.145, -1.669, 2.037)
        --
        LeftArm.Orientation = Vector3.new(-43.707, 89.717, -91.781)
        LeftArm.Position = Vector3.new(-0.96, -2.528, 2.123)
        --
        LeftLeg.Orientation = Vector3.new(-0.088, -91.486, -88.712)
        LeftLeg.Position = Vector3.new(-4.651, -2.465, 2.031)
        --
        RightArm.Orientation = Vector3.new(2.405, -90.375, -92.163)
        RightArm.Position = Vector3.new(-2.823, -0.616, 2.089)
        --
        RightLeg.Orientation = Vector3.new(12.414, -91.2, -88.681)
        RightLeg.Position = Vector3.new(-4.717, -1.295, 2.003)
        --
        Torso1.Orientation = Vector3.new(-0.088, -91.486, -88.712)
        Torso1.Position = Vector3.new(-2.654, -2.468, 2.086)
        --
        Torso2.Orientation = Vector3.new(-0.088, -91.486, -88.712)
        Torso2.Position = Vector3.new(-2.65, -1.489, 2.064)
        --
    end
    
    local function piggyBackAct()
        --
        Hair.Orientation = Vector3.new(-20.508, 0, 19.588)
        Hair.Position = Vector3.new(-0.509, 1.293, 0.657)
        --
        Head.Orientation = Vector3.new(-20.508, 0, 19.588)
        Head.Position = Vector3.new(-0.699, 1.76, 0.382)
        --
        LeftArm.Orientation = Vector3.new(-10.733, 177.044, -179.592)
        LeftArm.Position = Vector3.new(1.399, 0.897, 0.186)
        --
        LeftLeg.Orientation = Vector3.new(1.225, 155.696, 179.447)
        LeftLeg.Position = Vector3.new(0.787, -1.126, 0.299)
        --
        RightArm.Orientation = Vector3.new(-10.737, -179.239, 179.716)
        RightArm.Position = Vector3.new(-1.624, 0.904, 0.11)
        --
        RightLeg.Orientation = Vector3.new(1.265, -160.193, -179.544)
        RightLeg.Position = Vector3.new(-0.861, -1.126, 0.321)
        --
        Torso1.Orientation = Vector3.new(74.223, 0, 0)
        Torso1.Position = Vector3.new(0.362, 0.377, 0.862)
        --
        Torso2.Orientation = Vector3.new(74.223, 0, 0)
        Torso2.Position = Vector3.new(-0.617, 0.378, 0.862)
        --
    end
    
    local function HugPos1()
        --
        Hair.Orientation = Vector3.new(-0, -179.844, -0)
        Hair.Position = Vector3.new(-0.055, 0.862, -1.415)
        --
        Head.Orientation = Vector3.new(-0, -179.844, -0)
        Head.Position = Vector3.new(-0.055, 1.429, -1.322)
        --
        LeftArm.Orientation = Vector3.new(-9.072, -18.253, -176.334)
        LeftArm.Position = Vector3.new(-1.64, 0.592, -0.919)
        --
        LeftLeg.Orientation = Vector3.new(90, -179.844, 0)
        LeftLeg.Position = Vector3.new(-0.46, -2.03, -1.321)
        --
        RightArm.Orientation = Vector3.new(-10.754, 18.157, 178.856)
        RightArm.Position = Vector3.new(1.671, 0.621, -1.002)
        --
        RightLeg.Orientation = Vector3.new(90, -179.844, 0)
        RightLeg.Position = Vector3.new(0.519, -2.026, -1.323)
        --
        Torso1.Orientation = Vector3.new(90, -179.844, 0)
        Torso1.Position = Vector3.new(-0.46, -0.053, -1.321)
        --
        Torso2.Orientation = Vector3.new(90, -179.844, 0)
        Torso2.Position = Vector3.new(0.519, -0.052, -1.323)
        --
    end
    
    local function HugPos2()
        --
        Hair.Orientation = Vector3.new(-2.685, -178.334, -29.366)
        Hair.Position = Vector3.new(-0.367, 1.001, -0.995)
        --
        Head.Orientation = Vector3.new(-2.685, -178.334, -29.366)
        Head.Position = Vector3.new(-0.641, 1.491, -0.87)
        --
        LeftArm.Orientation = Vector3.new(-8.575, 32.819, 175.283)
        LeftArm.Position = Vector3.new(-0.899, 0.475, 0.285)
        --
        LeftLeg.Orientation = Vector3.new(90, -179.844, 0)
        LeftLeg.Position = Vector3.new(-0.459, -2.03, -0.903)
        --
        RightArm.Orientation = Vector3.new(-7.743, -32.567, -172.428)
        RightArm.Position = Vector3.new(0.856, 0.475, 0.174)
        --
        RightLeg.Orientation = Vector3.new(90, -179.844, 0)
        RightLeg.Position = Vector3.new(0.52, -2.026, -0.905)
        --
        Torso1.Orientation = Vector3.new(90, -179.844, 0)
        Torso1.Position = Vector3.new(-0.459, -0.053, -0.903)
        --
        Torso2.Orientation = Vector3.new(90, -179.844, 0)
        Torso2.Position = Vector3.new(0.52, -0.052, -0.905)
        --
    end
    
    local function SitPos()
        --
        Hair.Orientation = Vector3.new(-0, 0, -0)
        Hair.Position = Vector3.new(-2.153, -1.109, 0.985)
        --
        Head.Orientation = Vector3.new(-0, 0, -0)
        Head.Position = Vector3.new(-2.153, -0.542, 0.892)
        --
        LeftArm.Orientation = Vector3.new(66.995, 3.295, 3.579)
        LeftArm.Position = Vector3.new(-0.736, -2.065, 1.336)
        --
        LeftLeg.Orientation = Vector3.new(1.042, -180, -180)
        LeftLeg.Position = Vector3.new(-1.748, -2.612, -0.441)
        --
        RightArm.Orientation = Vector3.new(15.789, 123.977, 161.429)
        RightArm.Position = Vector3.new(-2.981, -1.608, 0.09)
        --
        RightLeg.Orientation = Vector3.new(58.837, -180, -180)
        RightLeg.Position = Vector3.new(-2.727, -2.255, -0.043)
        --
        Torso1.Orientation = Vector3.new(90, -0, 0)
        Torso1.Position = Vector3.new(-1.748, -2.024, 0.892)
        --
        Torso2.Orientation = Vector3.new(90, -0, 0)
        Torso2.Position = Vector3.new(-2.727, -2.023, 0.892)
        --
    end
    
    startPos()
    
    --//=================================\\
    --|| 	   𝙒𝘼𝙇𝙆𝙄𝙉𝙂 𝙈𝙊𝙑𝙀𝙈𝙀𝙉𝙏
    --\\=================================//
    
    UIS.InputBegan:Connect(function(inputObject)
        if(inputObject.KeyCode==Enum.KeyCode.Space) then
            if HeadStand or HairFix or FunnyBackflip or PiggyBack == true then return end
            Jump = true
            JumpPos()
        end
    end)
    
    UIS.InputBegan:Connect(function(inputObject)
        if(inputObject.KeyCode==Enum.KeyCode.W) then
            Idle = false
            WalkingW = true
            WalkingA = false
            WalkingS = false
            WalkingD = false
            while wait(.25) do
                if Idle or Jump or HairFix or HeadStand or FunnyBackflip or PiggyBack or Dance1 == true then return end
                if WalkingA or WalkingS or WalkingD == true or WalkingW == false then startPos() return end
                Walk1()
                wait(.25)
                if Idle or Jump or HairFix or HeadStand or FunnyBackflip or PiggyBack or Dance1 == true then return end
                if WalkingA or WalkingS or WalkingD == true or WalkingW == false then startPos() return end
                Walk2()
            end
        end
    end)
    
    UIS.InputBegan:Connect(function(inputObject)
        if(inputObject.KeyCode==Enum.KeyCode.A) then
            Idle = false
            WalkingW = false
            WalkingA = true
            WalkingS = false
            WalkingD = false
            while wait(.25) do
                if Idle or Jump or HairFix or HeadStand or FunnyBackflip or PiggyBack or Dance1 == true then return end
                if WalkingW or WalkingS or WalkingD == true or WalkingA == false then startPos() return end
                Walk1()
                wait(.25)
                if Idle or Jump or HairFix or HeadStand or FunnyBackflip or PiggyBack or Dance1 == true then return end
                if WalkingW or WalkingS or WalkingD == true or WalkingA == false then startPos() return end
                Walk2()
            end
        end
    end)
    
    UIS.InputBegan:Connect(function(inputObject)
        if(inputObject.KeyCode==Enum.KeyCode.S) then
            Idle = false
            WalkingW = false
            WalkingA = false
            WalkingS = true
            WalkingD = false
            while wait(.25) do
                if Idle or Jump or HairFix or HeadStand or FunnyBackflip or PiggyBack or Dance1 == true then return end
                if WalkingA or WalkingW or WalkingD == true or WalkingS == false then startPos() return end
                Walk1()
                wait(.25)
                if Idle or Jump or HairFix or HeadStand or FunnyBackflip or PiggyBack or Dance1 == true then return end
                if WalkingA or WalkingW or WalkingD == true or WalkingS == false then startPos() return end
                Walk2()
            end
        end
    end)
    
    UIS.InputBegan:Connect(function(inputObject)
        if(inputObject.KeyCode==Enum.KeyCode.D) then
            Idle = false
            WalkingW = false
            WalkingA = false
            WalkingS = false
            WalkingD = true
            while wait(.25) do
                if Idle or Jump or HairFix or HeadStand or FunnyBackflip or PiggyBack or Dance1 == true then return end
                if WalkingA or WalkingS or WalkingW == true or WalkingD == false then startPos() return end
                Walk1()
                wait(.25)
                if Idle or Jump or HairFix or HeadStand or FunnyBackflip or PiggyBack or Dance1 == true then return end
                if WalkingA or WalkingS or WalkingW == true or WalkingD == false then startPos() return end
                Walk2()
            end
        end
    end)
    
    UIS.InputEnded:Connect(function(inputObject)
        if(inputObject.KeyCode==Enum.KeyCode.Space) then
            if HeadStand or HairFix or PiggyBack or Dance1 == true then return end
            wait(.3)
            Jump = false
            startPos()
        end
    end)
    
    UIS.InputEnded:Connect(function(inputObject)
        if(inputObject.KeyCode==Enum.KeyCode.W) then
            if HeadStand or HairFix or PiggyBack or Dance1 == true then return end
            startPos()
            WalkingW = false
            Idle = true
        end
    end)
    
    UIS.InputEnded:Connect(function(inputObject)
        if(inputObject.KeyCode==Enum.KeyCode.A) then
            if HeadStand or HairFix or PiggyBack or Dance1 == true then return end
            startPos()
            WalkingA = false
            Idle = true
        end
    end)
    
    UIS.InputEnded:Connect(function(inputObject)
        if(inputObject.KeyCode==Enum.KeyCode.S) then
            if HeadStand or HairFix or PiggyBack or Dance1 == true then return end
            startPos()
            WalkingD = false
            Idle = true
        end
    end)
    
    UIS.InputEnded:Connect(function(inputObject)
        if(inputObject.KeyCode==Enum.KeyCode.D) then
            if HeadStand or HairFix or PiggyBack or Dance1 == true then return end
            startPos()
            WalkingS = false
            Idle = true
        end
    end)
    
    --//=================================\\
    --|| 	     𝙆𝙀𝙔𝘽𝙄𝙉𝘿 𝘼𝘾𝙏𝙄𝙊𝙉
    --\\=================================//
    
    m.KeyDown:connect(function(k)
        k = k:lower()
        if k == "e" then
            if HairFix or Backflip or HeadStand or FrontFlip or PiggyBack or Dance1 == true then return end
            HairFix = true
            hairFixAct()
            wait(1)
            startPos()
            wait(.1)
            HairFix = false
        end
    end)
    
    m.KeyDown:connect(function(k)
        k = k:lower()
        if k == "r" then
            if HairFix or Backflip or FrontFlip or PiggyBack or Dance1 == true then return end
            if HeadStand == false then
                HeadStand = true
                headStandAct()
            else
                HeadStand = false
                startPos()
            end
        end
    end)
    
    m.KeyDown:connect(function(k)
        k = k:lower()
        if k == "y" then
            if Backflip or HairFix or HeadStand or FrontFlip or PiggyBack or Dance1 == true then return end
            Backflip = true
            BackFlipAct()
            wait(.5)
            Backflip = false
        end
    end)
    
    m.KeyDown:connect(function(k)
        k = k:lower()
        if k == "u" then
            if FrontFlip or HairFix or HeadStand or Backflip or PiggyBack == true then return end
            FrontFlip = true
            FrontFlipAct()
            wait(.5)
            FrontFlip = false
        end
    end)
    
    m.KeyDown:connect(function(k)
        k = k:lower()
        if k == "f" then
            if FrontFlip or HairFix or HeadStand or Backflip or FunnyBackflip or PiggyBack or Dance1 == true then return end
            FunnyBackflip = true
            FunnyBackflipAct()
            wait(1.5)
            startPos()
            FunnyBackflip = false
        end
    end)
    
    m.KeyDown:connect(function(k)
        k = k:lower()
        if k == "g" then
            if PiggyBack == false then
                if HeadStand or Dance1 == true then return end
                PiggyBack = true
                piggyBackAct()
            else
                PiggyBack = false
                startPos()
            end
        end
    end)
    
    m.KeyDown:connect(function(k)
        k = k:lower()
        if k == "h" then
            if HeadStand or PiggyBack or HairFix or Dance1 == true then return end
            if Hug == false then
                Hug = true
                HugPos1()
            else
                Hug = false
                HugPos2()
            end
        end
    end)
    
    m.KeyDown:connect(function(k)
        k = k:lower()
        if k == "j" then
            if HeadStand or PiggyBack or HairFix or Dance1 == true then return end
            if Sit == false then
                Sit = true
                SitPos()
            else
                Sit = false
                startPos()
            end
        end
    end)
    
    m.KeyDown:connect(function(k)
        k = k:lower()
        if k == "k" then
            if HeadStand or PiggyBack or HairFix == true then return end
            if Dance1 == false then
                Dance1 = true
                ShooDance()
            else
                Dance1 = false
                startPos()
            end
        end
    end)
    
    -- | Idle Loop | --
    while wait() do
        if HeadStand or HairFix or Dance1 == true then return end
        if Idle == true then
            if WalkingW or WalkingA or WalkingD or WalkingS == true then return end
            IdlePos1()
            wait(.1)
            if WalkingW or WalkingA or WalkingD or WalkingS == true then return end
            IdlePos2()
            wait(.4)
            if WalkingW or WalkingA or WalkingD or WalkingS == true then return end
            startPos()
            wait(4.5)
        end
    end