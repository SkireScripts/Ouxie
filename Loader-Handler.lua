-- ouxie loader v2
-- in testing so coding might look bad (dont mind) (no bully)
local ouxie = {
    ["games"] = {
        [14822302723] = "Gun Ball";
        [14708545931] = "Blade Soccer";
        [16480898254] = "Eat the World";
        [10253248401] = "Elemental Powers Tycoon";
        [12578805328] = "Planet Destoyers";
        [16981421605] = "Reborn As Swordman";
    };
    ["projects"] = {
        ["developer-console"] = {
            ["version"] = 1.2;
            ["source"] = "Developer Console";
        };
        ["admin-library"] = {
            ["version"] = 2;
            ["source"] = "Admin Library v2";
        };
        ["discord-inviter"] = {
            ["version"] = 1.2;
            ["source"] = "Discord Inviter";
        };
        ["spotify-player"] = {
            ["version"] = 1.2;
            ["source"] = "Spotify Player";
        };
        ["pastefy"] = {
            ["version"] = 1;
            ["source"] = "Pastefy";
        };
    };
    ["credits"] = {
        ["Creator"] = "Skire";
    };
    ["using"] = "github";
    ["base"] = "https://raw.githubusercontent.com/SkireScripts/Ouxie/main";
    ["executor"] = identifyexecutor();
}

function ouxie:load(script, config)
    local function get(script, type)
        if type == "game" then
            local src = string.gsub(ouxie.base.."/Games/"..ouxie.games[script].."/Loader.lua"," ","%%20");
            print(src)
            loadstring(game:HttpGet(src))()
        elseif type == "project" then
            local src = string.gsub(ouxie.base.."/Projects/"..ouxie.projects[script].source.."/Loader.lua"," ","%%20");
            loadstring(game:HttpGet(src))():load(config)
        end
    end
    print(ouxie.games[script])
    if ouxie.games[script] then
        get(script, "game")
    elseif ouxie.projects[script] then
        get(script, "project")
    else
        print("Unsupported (game) // Invalid (project)")
    end
end

return ouxie
