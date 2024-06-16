local plr = game:GetService("Players").LocalPlayer
local power = plr:WaitForChild("Stats").Power

getgenv().config = {
    ["auto_swing"] = false,
    ["auto_kill"] = false,
    ["god_mode"] = false,
    ["auto_fight"] = false,
    ["auto_draw"] = false,
    ["auto_snipe"] = false,
    ["auto_pets"] = false,
    ["auto_claim"] = false,
    ["auto_craft"] = false,
    ["auto_tpet"] = false,
    ["auto_daily"] = false,
    ["auto_world"] = false,
    ["auto_tower"] = false;
    ["world"] = "World001",
    ["dummy"] = "TrainPower001",
    ["secret_boss"] = "Tanjiro",
    ["egg"] = nil,
    ["snipe_pet"] = nil
}

local dummys = require(game:GetService("ReplicatedStorage").Config.TrainConfig) --loadstring(game:HttpGet("https://pastefy.app/1tVg6mrE/raw"))()
local pets = require(game:GetService("ReplicatedStorage").Config.PetConfig)
local draws = require(game:GetService("ReplicatedStorage").Config.DrawConfig)
local bosses = require(game:GetService("ReplicatedStorage").Config.RelicsConfig)

local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
local discord = loadstring(game:HttpGet("https://raw.githubusercontent.com/SkireScripts/Ouxie/main/Projects/Discord%20Inviter/Loader.lua"))()
local ouxie = loadstring(game:HttpGet("https://pastefy.app/g73xnA2J/raw"))()
local ui = ouxie:Window({
	Name = "Ouxie / the game?";
	Theme = "Default";
})
local tab1 = ui:NewTab({
	Name = "Farming";
	Icon = "rbxassetid://7072706318";
})
local tab2 = ui:NewTab({
	Name = "Combat";
	Icon = "rbxassetid://7072706318";
})
local tab3 = ui:NewTab({
	Name = "Pets";
	Icon = "rbxassetid://7072706318";
})
local tab4 = ui:NewTab({
	Name = "Rewards";
	Icon = "rbxassetid://7072706318";
})
local tab5 = ui:NewTab({
	Name = "Misc";
	Icon = "rbxassetid://7072706318";
})

local traintoggle = tab1:Toggle({
	Name = "Auto Train";
    Desc = "Auto trains with the best trainer/dummy";
    Enabled = getgenv().config.auto_swing;
	Callback = function(bool)
        getgenv().config.auto_swing = bool
        local function autoswing()
            local best = 0
            while true do 
                wait()
                if getgenv().config.auto_swing then 
                    for i,v in pairs(dummys.Power) do
                        if v.PowerNeed <= power.Value and v.Type == 1 then
                            if v.PowerNeed > best then
                                if table.find(dummys.Worlds[getgenv().config.world], v.Id) then
                                    best = v.PowerNeed
                                    warn(v.Id)
                                    getgenv().config.dummy = v.Id
                                end
                            end
                        end
                    end
                    game:GetService("ReplicatedStorage").Events.Game.Re_TrainPower:FireServer(getgenv().config.dummy)
                else break;end
            end
        end
        autoswing()
	end;
})

local rebirthtoggle = tab1:Toggle({
    Name = "Auto Rebirth";
    Desc = "Auto rebirths (resets strength)";
    Enabled = getgenv().config.auto_rebirth;
    Callback = function(bool)
        getgenv().config.auto_rebirth = bool
        local function rebirth()
            while true do
                if getgenv().config.auto_rebirth then
                    game:GetService("ReplicatedStorage").Events.Stats.Re_Rebirth:FireServer()
                else break;end
                wait()
            end
        end
        rebirth()
    end;
})

local eswordtoggle = tab1:Toggle({
    Name = "Auto Best Weapon";
    Desc = "Auto equips the best weapon in your inventory";
    Enabled = getgenv().config.auto_sword;
    Callback = function(bool)
        getgenv().config.auto_sword = bool
        local function equip()
            while true do
                if getgenv().config.auto_sword then
                    game:GetService("ReplicatedStorage").Events.Weapon.Re_Equip:FireServer()
                else break;end
                wait()
            end
        end
        equip()
    end;
})
local nworld = tab1:Toggle({
    Name = "Auto Unlock Worlds";
    Desc = "AUto unlocks the next world when you have enough";
    Enabled = getgenv().config.auto_world;
    Callback = function(bool)
        getgenv().config.auto_world = bool
        local function equip()
            while true do
                if getgenv().config.auto_world then
                    local number = string.split(getgenv().config.world, "World")[2];number=tonumber(number);number=number+1;number=string.format("%03d",number)
                    game:GetService("ReplicatedStorage").Events.World.Re_Unlock:FireServer("World"..number)
                else break;end
                wait()
            end
        end
        equip()
    end;
})

local fighttoggle = tab2:Toggle({
	Name = "Auto Fight";
    Desc = "Auto Fights Npcs/Mobs";
    Enabled = getgenv().config.auto_fight;
	Callback = function(bool)
        getgenv().config.auto_fight = bool
        pcall(function()
            local finished=false
            local function fight()
                if getgenv().config.auto_fight then
                    game:GetService("ReplicatedStorage").Events.Fight.Re_ChallengeStart:FireServer(1)
                    finished=false
                end
            end
            pcall(function()
                local hook;
                hook = hookmetamethod(game, "__namecall", function(self, ...)
                    local method = getnamecallmethod()
                    if not checkcaller() and method == "FireServer" and tostring(self) == "Rf_ChallengeFinish" then
                        finished=true
                        return hook(self, ...)
                    end
                    return hook(self, ...)
                end)
            end)
            repeat fight()wait()until finished==true
        end)
    end
})

local killtoggle = tab2:Toggle({
	Name = "Auto Kill";
    Desc = "Auto kills any mob/npc when fighting";
    Enabled = getgenv().config.auto_kill;
	Callback = function(bool)
        getgenv().config.auto_kill = bool
        local function autokill()
            while true do
                if getgenv().config.auto_kill then
                    for i,v in pairs(game.Workspace.FightNpcs:GetChildren()) do
                        game:GetService("ReplicatedStorage").Events.Fight.Re_TakeDamage:FireServer(v.Name,1)
                        game:GetService("ReplicatedStorage").Events.Relics.Re_TakeDamage:FireServer(1)
                        game:GetService("ReplicatedStorage").Events.Tower.Re_TakeDamage:FireServer(1)
                    end
                else break;end
                wait()
            end
        end;autokill()
	end;
})

local godmodetoggle = tab2:Toggle({
	Name = "God Mode";
    Desc = "Npcs/Mobs cannot damage you (100%)";
    Enabled = getgenv().config.god_mode;
	Callback = function(bool)
        getgenv().config.god_mode = bool
        pcall(function()
            local hook;
            hook = hookmetamethod(game, "__namecall", function(self, ...)
                local method = getnamecallmethod()
                if not checkcaller() and method == "FireServer" and tostring(self) == "Re_NpcDamage" then
                    if getgenv().config.god_mode then
                        return 
                    else
                        return hook(self, ...)
                    end
                end
                return hook(self, ...)
            end)
        end)
    end;
})

local bossest = {}
for i,v in pairs(bosses.SecretBoss) do
    bossest[v.Id]=v.NpcName
end
--getgenv().config.swing_method = "2"
local fightbtn
local bossdropdown = tab2:Dropdown({
    Name = "Secret Boss";
    Desc = "Select a secret boss to fight";
    Options = bossest;
    Selected = getgenv().config.secret_boss;
    Callback = function(boss)
        for i,v in pairs(bosses.SecretBoss) do
            if v.NpcName == boss then
                getgenv().config.secret_boss = v.Id
                fightbtn:Edit({
                    Name = "Fight "..v.NpcName,
                    Desc = "Fight the secret boss "..getgenv().config.secret_boss.." (id)"
                })
            end
        end
    end
})
fightbtn = tab2:Button({
    Name = "Fight Boss",
    Desc = "Fight the secret boss",
    Callback = function()
        game:GetService("ReplicatedStorage").Events.Relics.Re_Start:FireServer(getgenv().config.secret_boss)
        pcall(function()
            local hook;
            hook = hookmetamethod(game, "__namecall", function(self, ...)
                local method = getnamecallmethod()
                if not checkcaller() and method == "FireServer" and tostring(self) == "Rf_Finish" then
                    return hook(self, ...)
                end
                return hook(self, ...)
            end)
        end)
    end
})

--[[ trash fucking game (this will not work)
bosstoggle = tab2:Toggle({
	Name = "Auto Fight Boss";
    Desc = "Auto Fights the secret boss";
    Enabled = getgenv().config.auto_boss;
	Callback = function(bool)
        getgenv().config.auto_boss = bool
        local hook;
        hook = hookmetamethod(game, "__namecall", function(self, ...)
            local method = getnamecallmethod()
            if not checkcaller() and method == "InvokeServer" then
                if tostring(self) == "Rf_Finish" then
                    if getgenv().config.auto_boss then
                        for i,v in pairs(game:GetChildren()) do
                            if #v:GetChildren() <= 1 or #v:GetChildren() == 0 then
                                game:GetService("ReplicatedStorage").Events.Relics.Rf_Finish:InvokeServer()
                                wait(1)
                                game:GetService("ReplicatedStorage").Events.Relics.Re_Start:FireServer(getgenv().config.secret_boss)
                                return 
                            end
                        end
                    end
                end
            end
            return hook(self, ...)
        end)
    end
})
]]


local petst = {}
for i,v in pairs(pets.Pets) do
    petst[v.Id]=v.PetName
end

local egginput = tab3:Input({
    Name = "Egg";
    Desc = "Enter the id the draw to hatch";
    Text = "";
    ClearOnFocus = true;
    Type = "str";
    Callback = function(egg)
        if #egg == 1 then
            getgenv().config.egg = "Draw00"..tostring(egg)
        elseif #egg == 2 then
            getgenv().config.egg = "Draw0"..tostring(egg)
        elseif #egg == 3 then
            getgenv().config.egg = "Draw"..tostring(egg)
        end
    end
})
local opentoggle = tab3:Toggle({
    Name = "Auto Open",
    Desc = "Auto hatch the selected draw",
    Enabled = getgenv().config.auto_draw,
    Callback = function(bool)
        getgenv().config.auto_draw = bool
        local function open()
            while true do 
                if getgenv().config.auto_draw then
                    game:GetService("ReplicatedStorage").Events.Pets.Re_Hatch:FireServer("Hatch",getgenv().config.egg,{})
                else break;end
                wait()
            end
        end
        open()
    end
})
local snipe_draw = nil
local auto_delete = {}
local pdropdown = tab3:Dropdown({
    Name = "Pet Snipe";
    Desc = "Select a pet to snipe";
    Options = petst;
    Selected = "SELECTED NIL";
    Callback = function(pet)
        local a = ""
        for i,v in pairs(pets.Pets) do
            if v.PetName==pet then
                a=v.Id
                getgenv().config.snipe_pet = i
            end
        end
        for i,v in pairs(pets.Pets) do
            if v.Id == getgenv().config.snipe_pet then
                print(v.PetName)
                for z,x in pairs(draws.Pets) do
                    if z==i then
                        snipe_draw=x
                    end
                end
                for c,b in pairs(draws.Lotterys[snipe_draw].Probability) do
                    if b.Id ~= a then
                        table.insert(auto_delete,b.Id)
                        warn(b.Id)
                    end
                end
            end
        end
    end
})
local opentoggle = tab3:Toggle({
    Name = "Snipe Pet",
    Desc = "Auto draw the parentegg to this pet",
    Enabled = getgenv().config.auto_snipe,
    Callback = function(bool)
        getgenv().config.auto_snipe = bool
        local function open()
            while true do 
                if getgenv().config.auto_snipe then
                    game:GetService("ReplicatedStorage").Events.Pets.Re_Hatch:FireServer("Hatch",snipe_draw,auto_delete)
                else break;end
                wait()
            end
        end
        open()
    end
})
local epettoggle = tab3:Toggle({
    Name = "Auto Equip Best Pets";
    Desc = "Auto equips the best pets in your inventory";
    Enabled = getgenv().config.auto_pets;
    Callback = function(bool)
        getgenv().config.auto_pets = bool
        local function equip()
            while true do
                if getgenv().config.auto_pets then
                    game:GetService("ReplicatedStorage").Events.Pets.Re_EquipBest:FireServer()
                else break;end
                wait()
            end
        end
        equip()
    end;
})
local crafttoggle = tab3:Toggle({
    Name = "Auto Craft Pets";
    Desc = "Auto crafts all pets in your inventory";
    Enabled = getgenv().config.auto_craft;
    Callback = function(bool)
        getgenv().config.auto_craft = bool
        local function craft()
            while true do
                if getgenv().config.auto_craft then
                    game:GetService("ReplicatedStorage").Events.Pets.Re_CraftAll:FireServer()
                else break;end
                wait()
            end
        end
        craft()
    end;
})
local online = tab4:Toggle({
    Name = "Auto Claim Online Rewards";
    Desc = "Auto claims free online rewards";
    Enabled = getgenv().config.auto_claim;
    Callback = function(bool)
        getgenv().config.auto_claim = bool
        local function equip()
            while true do
                if getgenv().config.auto_claim then
                    for i = 0,12 do
                        local ai
                        if #tostring(i) == 1 then
                            ai = "OnlineGift00"..tostring(i)
                        elseif #tostring(i) == 2 then
                            ai = "OnlineGift0"..tostring(i)
                        end
                        local number = string.split(ai, "OnlineGift")[2];number=tonumber(number);number=number+1;number=string.format("%03d",number)
                        game:GetService("ReplicatedStorage").Events.Stats.Re_ClaimOnline:FireServer("OnlineGift"..number)
                    end
                else break;end
                wait()
            end
        end
        equip()
    end;
})
local daily = tab4:Toggle({
    Name = "Auto Claim Daily Rewards";
    Desc = "AUto claims ready daily rewards";
    Enabled = getgenv().config.auto_daily;
    Callback = function(bool)
        getgenv().config.auto_daily = bool
        local function equip()
            while true do
                if getgenv().config.auto_daily then
                    for i = 0,12 do
                        local ai
                        if #tostring(i) == 1 then
                            ai = "DayGift00"..tostring(i)
                        elseif #tostring(i) == 2 then
                            ai = "DayGift0"..tostring(i)
                        end
                        local number = string.split(ai, "DayGift")[2];number=tonumber(number);number=number+1;number=string.format("%03d",number)
                        game:GetService("ReplicatedStorage").Events.Stats.Re_ClaimDaily:FireServer("DayGift"..number)
                    end
                else break;end
                wait()
            end
        end
        equip()
    end;
})
local timepet = tab4:Toggle({
    Name = "Auto Claim Time Pet";
    Desc = "!WARNING! this wont claim it rn";
    Enabled = getgenv().config.auto_tpet;
    Callback = function(bool)
        getgenv().config.auto_tpet = bool
        if getgenv().config.auto_tpet then
            Notification:Notify(
                {Title = "Ouxie", Description = "This will not claim the pet rn, it will claim after your able to."},
                {OutlineColor = Color3.fromRGB(170, 170, 255),Time = 7, Type = "image"},
                {Image = "rbxassetid://17863726083", ImageColor = Color3.fromRGB(255, 255, 255)}
            )
        end
        local function claim()
            while true do
                if getgenv().config.auto_claim then
                    game:GetService("ReplicatedStorage").Events.Stats.Re_ClaimTimeQuestPet:FireServer()
                else break;end
                wait()
            end
        end
        claim()
    end;
})
local antiafk = tab5:Button({
    Name = "Anti Afk/Idle";
    Desc = "You wont be kicked from the game after 20 minutes";
    Callback = function(bool)
        for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
            if v["Disable"] then
                v["Disable"](v)
            elseif v["Disconnect"] then
                v["Disconnect"](v)
            end
        end
    end;
})

tab1:Switch()
discord:invite("https://discord.gg/c3AbX3GXsr", "Ouxie", function()
    ui:load()
end)

ui:Loading(function()
	--game:GetService("ReplicatedStorage").Events.World.Rf_TeleportToWorld:InvokeServer("World001")
end)
ui:onLoaded(function()

    pcall(function()
        while true do
            if power <= 100 then
                traintoggle:Edit({
                    Name = "Auto Train";
                    Desc = "Auto trains with the best trainer/dummy";
                    Enabled = false;
                })
                traintoggle:Edit({
                    Name = "Auto Train";
                    Desc = "Auto trains with the best trainer/dummy";
                    Enabled = true;
                })
            end
            wait()
        end
    end)
	local w;
    w = hookmetamethod(game, "__namecall", function(self, ...)
        local args = {...}
        local method = getnamecallmethod()
        if not checkcaller() then
            if tostring(self) == "Rf_TeleportToWorld" and method == "InvokeServer" then
                getgenv().config.world = args[1]
                return w(self, ...)
            end
        end
        return w(self, ...)
    end)
end)
ui:onClose(function()
    getgenv().config = {
        ["auto_swing"] = false,
        ["auto_kill"] = false,
        ["god_mode"] = false,
        ["auto_fight"] = false,
        ["auto_draw"] = false,
        ["auto_snipe"] = false,
        ["auto_pets"] = false,
        ["auto_claim"] = false,
        ["auto_craft"] = false,
        ["auto_tpet"] = false,
        ["auto_daily"] = false,
        ["auto_world"] = false,
        ["auto_tower"] = false;
        ["world"] = "World001",
        ["dummy"] = "TrainPower001",
        ["secret_boss"] = "Tanjiro",
        ["egg"] = nil,
        ["snipe_pet"] = nil
    }
end)
