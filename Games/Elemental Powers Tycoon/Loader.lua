--[[
its fully open source and no im not sorry for my trash luau skills
also for people this was made by Skire (x6x_0)

OUXIE DISCORD SERVER: https://discord.gg/6a3rAf9r8k

 .d88888b.                    d8b               888 
d88P" "Y88b                   Y8P               888 
888     888                                     888 
888     888 888  888 888  888 888  .d88b.       888 
888     888 888  888 `Y8bd8P' 888 d8P  Y8b      888 
888     888 888  888   X88K   888 88888888      Y8P 
Y88b. .d88P Y88b 888 .d8""8b. 888 Y8b.           "  
 "Y88888P"   "Y88888 888  888 888  "Y8888       888 


888b     d888               888               888888b.                     
8888b   d8888               888               888  "88b                    
88888b.d88888               888               888  .88P                    
888Y88888P888  8888b.   .d88888  .d88b.       8888888K.  888  888      d8b 
888 Y888P 888     "88b d88" 888 d8P  Y8b      888  "Y88b 888  888      Y8P 
888  Y8P  888 .d888888 888  888 88888888      888    888 888  888          
888   "   888 888  888 Y88b 888 Y8b.          888   d88P Y88b 888      d8b 
888       888 "Y888888  "Y88888  "Y8888       8888888P"   "Y88888      Y8P 
                                                              888          
                                                         Y8b d88P          
                                                          "Y88P"           

 .d8888b.  888      d8b                                                
d88P  Y88b 888      Y8P                                                
Y88b.      888                                                         
 "Y888b.   888  888 888 888d888 .d88b.                                 
    "Y88b. 888 .88P 888 888P"  d8P  Y8b                                
      "888 888888K  888 888    88888888      888888                    
Y88b  d88P 888 "88b 888 888    Y8b.                                    
 "Y8888P"  888  888 888 888     "Y8888                                 
                                                                       
                                                                       
                                                                       
  .d88           .d8888b.                    .d8888b.  88b.        888 
 d88P"          d88P  Y88b                  d88P  Y88b "Y88b       888 
d88P            888                         888    888   Y88b      888 
888    888  888 888d888b.  888  888         888    888    888      888 
888    `Y8bd8P' 888P "Y88b `Y8bd8P'         888    888    888      888 
Y88b     X88K   888    888   X88K           888    888   d88P      Y8P 
 Y88b. .d8""8b. Y88b  d88P .d8""8b.         Y88b  d88P .d88P        "  
  "Y88 888  888  "Y8888P"  888  888 88888888 "Y8888P"  88P"        888 
                                                                       
                                                                                                    
]]

local powers = {
	["Lava"] = {
		[1] = "Lava Katana",
		[2] = "Lava Ball",
		[3] = "Magam Fists",
		[4] = "Lava Dash",
		[5] = "Volcano Sentry",
		[6] = "Magma Spikes",
		[7] = "Nibiru"
	},
	["Bone"] = {
		[1] = "Bone Scythe",
		[2] = "Blaster",
		[3] = "Bones Barrage",
		[4] = "Flying Bone",
		[5] = "Bone Surge",
		[6] = "Twin Blasters",
		[7] = "Judgement Blast"
	},
	["Darkness"] = {
		[1] = "Shadow Sword",
		[2] = "Unseen Hands",
		[3] = "Unseen Barrage",
		[4] = "Dark Duo",
		[5] = "Abyss",
		[6] = "Dark Hold",
		[7] = "Dark Arc"	
    },
	["Light"] = {
		[1] = "Light Saber",
		[2] = "Light Ball",
		[3] = "Light Orbs",
		[4] = "Blinding Light",
		[5] = "Shooting Star",
		[6] = "Light Speed",
		[7] = "Light Beam"
	},
	["Nature"] = {
		[1] = "Christmas Tree Sword",
		[2] = "Plantoid",
		[3] = "Spore Bombs",
		[4] = "Nature's Blessing",
		[5] = "Nuclear Spore",
		[6] = "Pine Burst",
		[7] = "Nature's Wrath"
	},
	["Ice"] = {
		[1] = "Frost Staff",
		[2] = "Frost Fire Ball",
		[3] = "Ice Disk",
		[4] = "Frost Fire Ball",
		[5] = "Snow Ball",
		[6] = "Ultracold Aura",
		[7] = "Ice Spikes"
	},
	["Thunder"] = {
		[1] = "Thunder Staff",
		[2] = "Bolt",
		[3] = "Barrage",
		[4] = "Discharge",
		[5] = "Flying Nimbus",
		[6] = "Lighting Strike",
		[7] = "Storm"
	},
	["Earth"] = {
		[1] = "Tectonic Hamer",
		[2] = "Stone Throw",
		[3] = "Rocks Barrage",
		[4] = "Large Boulder",
		[5] = "Burrow",
		[6] = "Stone Henge",
		[7] = "Earth Spikes"
	},
	["Fire"] = {
		[1] = "Fire Sword",
		[2] = "Fire Ball",
		[3] = "Fire Fly",
		[4] = "Fire Bomb",
		[5] = "Comet",
		[6] = "Combust",
		[7] = "Fire Shower"
	},
	["Technology"] = {
		[1] = "Hyper Sword",
		[2] = "Phonton Blast",
		[3] = "Twin-Photon Blash",
		[4] = "Tesla Turret",
		[5] = "Orbital",
		[6] = "Tesseract",
		[7] = "Hyper Slash"
	},
	["Gravity"] = {
		[1] = "Gravity Katana",
		[2] = "Heavy Infliction",
		[3] = "Tectonic Barrage",
		[4] = "Gravity Orb",
		[5] = "Tectonic Burst",
		[6] = "Zero Gravity",
		[7] = "Gravity Globe"
	},
	["Time"] = {
		[1] = "Time Scepter",
		[2] = "Temporal Gate",
		[3] = "Warp Barrage",
		[4] = "Tempo Beam",
		[5] = "Time Trap",
		[6] = "Warp Bomb",
		[7] = "Grand Clock"
	},
	["Crystal"] = {
		[1] = "Crystal Cleaver",
		[2] = "Crystal Mine",
		[3] = "Energy Crash",
		[4] = "Energy Crown",
		[5] = "Crystal Eruption",
		[6] = "Energy Crystal",
		[7] = "Crystal Surge"
	},
	["Venom"] = {
		[1] = "Venom Blade",
		[2] = "Poison Bullet",
		[3] = "Acid Rain",
		[4] = "Venom Stream",
		[5] = "Hardened Venom",
		[6] = "Poison Demon",
		[7] = "Bubbling Venom"
	},
	["Devil"] = {
		[1] = "Devil Sword",
		[2] = "Evil Bullet",
		[3] = "Fangs Barrage",
		[4] = "Evil Flash",
		[5] = "Demon Orb",
		[6] = "Demon Lock",
		[7] = "Dark Tsunami"
	},
	["Space"] = {
	    [1] = "Space Gun",
		[2] = "Blackhole Orb",
	    [3] = "Moon Splitter",
		[4] = "Asteroid Belt",
		[5] = "Meteor Jam",
		[6] = "Cosmic Remote",
		[7] = "Space Saucer"
	}
}

local function give(power)
	game:GetService("ReplicatedStorage").RemoteEvent:FireServer("equip_mystery_spell", power)
end

local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/SkireScripts/Ouxie/main/Assets/Ouxie%20UI.lua"))()
ui:Window({
	Name ="SumitScripts Hub/ Elemental Powers Tycoon";
	Size = UDim2.new(0,350,0,370);
})

local sp

for key,value in pairs(powers) do
	local new = ui:NewTab(tostring(key), "0")
    new:Dropdown(key.." Powers: ", "Select a power", value, function()
        sp = selected
    end)
    new:Button("Get Power", "Gives your the selected power.", function()
        give(sp)
    end)
end
