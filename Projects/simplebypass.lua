--[[ simple bypass
BEFORE YOU USE: im not trying to make a good bypasser this is just something i made for fun, i dont care how bad or how good it is

CHANGE LOG:
[7/14/24 | +] Modern UI
[7/14/24 | +] Support for every english character
[7/15/24 | +] Replaced some characters and made it WAY better
[7/15/24 | +] Added support for LegacyChatService
[7/15/24 | +] Added support for lowercase characters (uppercase is better than lowercase)
[7/15/24 | -] Messages arnt automatically made uppercase anymore
[7/16/24 | +] Fixed the characters `R, S, U`

INFO:
settings button does nothing rn,
while making v1 and v2 in the span of 3 days i havent been banned or gotten a warning about bypassing chat only a warning for spamming, so you shouldnt get banned while using this

version: 2.3

888888b. Y88b   d88P       .d8888b.  888    d8P  8888888 8888888b.  8888888888 
888  "88b Y88b d88P       d88P  Y88b 888   d8P     888   888   Y88b 888        
888  .88P  Y88o88P        Y88b.      888  d8P      888   888    888 888        
8888888K.   Y888P          "Y888b.   888d88K       888   888   d88P 8888888    
888  "Y88b   888              "Y88b. 8888888b      888   8888888P"  888        
888    888   888                "888 888  Y88b     888   888 T88b   888        
888   d88P   888          Y88b  d88P 888   Y88b    888   888  T88b  888        
8888888P"    888           "Y8888P"  888    Y88b 8888888 888   T88b 8888888888

(discord): .x6x6
(scriptblox): SkireScripts (https://scriptblox.com/u/SkireScripts)
(server): https://discord.gg/c3AbX3GXsr
]]
local function initui()
	-- Instances: 29 | Scripts: 0 | Modules: 0
	local G2L = {};

	-- StarterGui.SimpleBypass
	G2L["1"] = Instance.new("ScreenGui", game:GetService("CoreGui"));
	G2L["1"]["Name"] = [[SimpleBypass]];

	-- StarterGui.SimpleBypass.UI
	G2L["2"] = Instance.new("Frame", G2L["1"]);
	G2L["2"]["BorderSizePixel"] = 0;
	G2L["2"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
	G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["2"]["Size"] = UDim2.new(0, 47, 0, 83);
	G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["2"]["Position"] = UDim2.new(0.10000000149011612, 0, 0.49300000071525574, 0);
	G2L["2"]["Name"] = [[UI]];

	-- StarterGui.SimpleBypass.UI.UICorner
	G2L["3"] = Instance.new("UICorner", G2L["2"]);
	G2L["3"]["CornerRadius"] = UDim.new(0, 17);

	-- StarterGui.SimpleBypass.UI.UIStroke
	G2L["4"] = Instance.new("UIStroke", G2L["2"]);
	G2L["4"]["Color"] = Color3.fromRGB(255, 255, 255);
	G2L["4"]["Thickness"] = 4;
	G2L["4"]["Transparency"] = 0.800000011920929;

	-- StarterGui.SimpleBypass.UI.logo
	G2L["5"] = Instance.new("ImageLabel", G2L["2"]);
	G2L["5"]["BorderSizePixel"] = 0;
	G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["5"]["AnchorPoint"] = Vector2.new(0.5, 0);
	G2L["5"]["Image"] = [[rbxassetid://18481362660]];
	G2L["5"]["Size"] = UDim2.new(0, 27, 0, 27);
	G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["5"]["Name"] = [[logo]];
	G2L["5"]["BackgroundTransparency"] = 1;
	G2L["5"]["Position"] = UDim2.new(0.5, 0, 0, 10);

	-- StarterGui.SimpleBypass.UI.maximize
	G2L["6"] = Instance.new("ImageButton", G2L["2"]);
	G2L["6"]["BorderSizePixel"] = 0;
	G2L["6"]["AutoButtonColor"] = false;
	G2L["6"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
	G2L["6"]["AnchorPoint"] = Vector2.new(0.5, 0);
	G2L["6"]["Size"] = UDim2.new(0, 37, 0, 37);
	G2L["6"]["Name"] = [[maximize]];
	G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["6"]["Position"] = UDim2.new(0.5, 0, 1, -42);

	-- StarterGui.SimpleBypass.UI.maximize.UICorner
	G2L["7"] = Instance.new("UICorner", G2L["6"]);
	G2L["7"]["CornerRadius"] = UDim.new(1, 0);

	-- StarterGui.SimpleBypass.UI.maximize.ImageLabel
	G2L["8"] = Instance.new("ImageLabel", G2L["6"]);
	G2L["8"]["BorderSizePixel"] = 0;
	G2L["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["8"]["ImageColor3"] = Color3.fromRGB(171, 171, 171);
	G2L["8"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["8"]["Image"] = [[rbxassetid://7072718683]];
	G2L["8"]["Size"] = UDim2.new(0.5, 0, 0.5, 0);
	G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["8"]["BackgroundTransparency"] = 1;
	G2L["8"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

	-- StarterGui.SimpleBypass.UI.upperbar
	G2L["a"] = Instance.new("Frame", G2L["2"]);
	G2L["a"]["BorderSizePixel"] = 0;
	G2L["a"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
	G2L["a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["a"]["BackgroundTransparency"] = 1;
	G2L["a"]["Size"] = UDim2.new(1, -30, 0, 30);
	G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["a"]["Position"] = UDim2.new(0.5, 0, 0, 30);
	G2L["a"]["Visible"] = false;
	G2L["a"]["Name"] = [[upperbar]];

	-- StarterGui.SimpleBypass.UI.upperbar.logo
	G2L["b"] = Instance.new("ImageLabel", G2L["a"]);
	G2L["b"]["BorderSizePixel"] = 0;
	G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["b"]["AnchorPoint"] = Vector2.new(0, 0.5);
	G2L["b"]["Image"] = [[rbxassetid://18481362660]];
	G2L["b"]["Size"] = UDim2.new(0, 30, 0, 30);
	G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["b"]["Name"] = [[logo]];
	G2L["b"]["BackgroundTransparency"] = 1;
	G2L["b"]["Position"] = UDim2.new(0, 0, 0.5, 0);

	-- StarterGui.SimpleBypass.UI.upperbar.header
	G2L["c"] = Instance.new("TextLabel", G2L["a"]);
	G2L["c"]["BorderSizePixel"] = 0;
	G2L["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
	G2L["c"]["TextSize"] = 15;
	G2L["c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["c"]["Size"] = UDim2.new(0.8493150472640991, -33, 1, 0);
	G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["c"]["Text"] = [[SimpleBypass]];
	G2L["c"]["Name"] = [[header]];
	G2L["c"]["BackgroundTransparency"] = 1;
	G2L["c"]["Position"] = UDim2.new(0, 33, 0, 2);

	-- StarterGui.SimpleBypass.UI.upperbar.minimize
	G2L["d"] = Instance.new("ImageButton", G2L["a"]);
	G2L["d"]["BorderSizePixel"] = 0;
	G2L["d"]["AutoButtonColor"] = false;
	G2L["d"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
	G2L["d"]["Size"] = UDim2.new(0, 30, 0, 30);
	G2L["d"]["Name"] = [[minimize]];
	G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["d"]["Position"] = UDim2.new(1, -30, 0, 0);

	-- StarterGui.SimpleBypass.UI.upperbar.minimize.UICorner
	G2L["e"] = Instance.new("UICorner", G2L["d"]);
	G2L["e"]["CornerRadius"] = UDim.new(0, 6);

	-- StarterGui.SimpleBypass.UI.upperbar.minimize.ImageLabel
	G2L["f"] = Instance.new("ImageLabel", G2L["d"]);
	G2L["f"]["BorderSizePixel"] = 0;
	G2L["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["f"]["ImageColor3"] = Color3.fromRGB(171, 171, 171);
	G2L["f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["f"]["Image"] = [[rbxassetid://7072719125]];
	G2L["f"]["Size"] = UDim2.new(0.6399999856948853, 0, 0.6399999856948853, 0);
	G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["f"]["BackgroundTransparency"] = 1;
	G2L["f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

	-- StarterGui.SimpleBypass.UI.upperbar.settings
	G2L["10"] = Instance.new("ImageButton", G2L["a"]);
	G2L["10"]["BorderSizePixel"] = 0;
	G2L["10"]["AutoButtonColor"] = false;
	G2L["10"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
	G2L["10"]["Size"] = UDim2.new(0, 30, 0, 30);
	G2L["10"]["Name"] = [[settings]];
	G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["10"]["Position"] = UDim2.new(1, -65, 0, 0);

	-- StarterGui.SimpleBypass.UI.upperbar.settings.UICorner
	G2L["11"] = Instance.new("UICorner", G2L["10"]);
	G2L["11"]["CornerRadius"] = UDim.new(0, 6);

	-- StarterGui.SimpleBypass.UI.upperbar.settings.ImageLabel
	G2L["12"] = Instance.new("ImageLabel", G2L["10"]);
	G2L["12"]["BorderSizePixel"] = 0;
	G2L["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["12"]["ImageColor3"] = Color3.fromRGB(171, 171, 171);
	G2L["12"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["12"]["Image"] = [[rbxassetid://18151015259]];
	G2L["12"]["Size"] = UDim2.new(0.6399999856948853, 0, 0.6399999856948853, 0);
	G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["12"]["BackgroundTransparency"] = 1;
	G2L["12"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

	-- StarterGui.SimpleBypass.UI.bar
	G2L["13"] = Instance.new("Frame", G2L["2"]);
	G2L["13"]["BorderSizePixel"] = 0;
	G2L["13"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
	G2L["13"]["AnchorPoint"] = Vector2.new(0.5, 0);
	G2L["13"]["Size"] = UDim2.new(1, -30, 0, 40);
	G2L["13"]["ClipsDescendants"] = true;
	G2L["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["13"]["Position"] = UDim2.new(0.5, 0, 1, -50);
	G2L["13"]["AutomaticSize"] = Enum.AutomaticSize.Y;
	G2L["13"]["Visible"] = false;
	G2L["13"]["Name"] = [[bar]];

	-- StarterGui.SimpleBypass.UI.bar.UICorner
	G2L["14"] = Instance.new("UICorner", G2L["13"]);

	-- StarterGui.SimpleBypass.UI.bar.messagebox
	G2L["15"] = Instance.new("TextBox", G2L["13"]);
	G2L["15"]["PlaceholderColor3"] = Color3.fromRGB(179, 179, 179);
	G2L["15"]["BorderSizePixel"] = 0;
	G2L["15"]["TextSize"] = 15;
	G2L["15"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["15"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["15"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
	G2L["15"]["BackgroundTransparency"] = 1;
	G2L["15"]["PlaceholderText"] = [[Message here]];
	G2L["15"]["Size"] = UDim2.new(1, -82, 1, 0);
	G2L["15"]["ClipsDescendants"] = true;
	G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["15"]["Text"] = [[]];
	G2L["15"]["Name"] = [[messagebox]];
	G2L["15"]["ClearTextOnFocus"] = false;

	-- StarterGui.SimpleBypass.UI.bar.messagebox.UIPadding
	G2L["16"] = Instance.new("UIPadding", G2L["15"]);
	G2L["16"]["PaddingTop"] = UDim.new(0, 6);
	G2L["16"]["PaddingBottom"] = UDim.new(0, 6);
	G2L["16"]["PaddingLeft"] = UDim.new(0, 10);

	-- StarterGui.SimpleBypass.UI.bar.send
	G2L["17"] = Instance.new("ImageButton", G2L["13"]);
	G2L["17"]["BorderSizePixel"] = 0;
	G2L["17"]["AutoButtonColor"] = false;
	G2L["17"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
	G2L["17"]["Size"] = UDim2.new(0, 40, 0, 40);
	G2L["17"]["Name"] = [[send]];
	G2L["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["17"]["Position"] = UDim2.new(1, -40, 0, 0);

	-- StarterGui.SimpleBypass.UI.bar.send.UICorner
	G2L["18"] = Instance.new("UICorner", G2L["17"]);

	-- StarterGui.SimpleBypass.UI.bar.send.Frame
	G2L["19"] = Instance.new("Frame", G2L["17"]);
	G2L["19"]["BorderSizePixel"] = 0;
	G2L["19"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
	G2L["19"]["Size"] = UDim2.new(0, 4, 1, 0);
	G2L["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

	-- StarterGui.SimpleBypass.UI.bar.send.ImageLabel
	G2L["1a"] = Instance.new("ImageLabel", G2L["17"]);
	G2L["1a"]["BorderSizePixel"] = 0;
	G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["1a"]["ImageColor3"] = Color3.fromRGB(131, 131, 131);
	G2L["1a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["1a"]["Image"] = [[rbxassetid://18150985605]];
	G2L["1a"]["Size"] = UDim2.new(0, 20, 0, 20);
	G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["1a"]["BackgroundTransparency"] = 1;
	G2L["1a"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

	-- StarterGui.SimpleBypass.UI.bar.clear
	G2L["1b"] = Instance.new("ImageButton", G2L["13"]);
	G2L["1b"]["BorderSizePixel"] = 0;
	G2L["1b"]["AutoButtonColor"] = false;
	G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
	G2L["1b"]["Size"] = UDim2.new(0, 40, 0, 40);
	G2L["1b"]["Name"] = [[clear]];
	G2L["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["1b"]["Position"] = UDim2.new(1, -80, 0, 0);

	-- StarterGui.SimpleBypass.UI.bar.clear.ImageLabel
	G2L["1c"] = Instance.new("ImageLabel", G2L["1b"]);
	G2L["1c"]["BorderSizePixel"] = 0;
	G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["1c"]["ImageColor3"] = Color3.fromRGB(131, 131, 131);
	G2L["1c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["1c"]["Image"] = [[rbxassetid://17746544452]];
	G2L["1c"]["Size"] = UDim2.new(0, 20, 0, 20);
	G2L["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["1c"]["BackgroundTransparency"] = 1;
	G2L["1c"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
	
	return G2L["1"];
end
local function initloader()
    -- Instances: 18 | Scripts: 0 | Modules: 0
    local G2L = {};

    -- StarterGui.Loader
    G2L["1"] = Instance.new("ScreenGui", game:GetService("CoreGui"));
    G2L["1"]["IgnoreGuiInset"] = true;
    G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
    G2L["1"]["Name"] = [[Loader]];
    G2L["1"]["ResetOnSpawn"] = false;

    -- StarterGui.Loader.UI
    G2L["2"] = Instance.new("Frame", G2L["1"]);
    G2L["2"]["BorderSizePixel"] = 0;
    G2L["2"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
    G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    G2L["2"]["Size"] = UDim2.new(0, 251, 0, 216);
    G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    G2L["2"]["Name"] = [[UI]];

    -- StarterGui.Loader.UI.UICorner
    G2L["3"] = Instance.new("UICorner", G2L["2"]);
    G2L["3"]["CornerRadius"] = UDim.new(0, 17);

    -- StarterGui.Loader.UI.UIStroke
    G2L["4"] = Instance.new("UIStroke", G2L["2"]);
    G2L["4"]["Color"] = Color3.fromRGB(255, 255, 255);
    G2L["4"]["Thickness"] = 4;
    G2L["4"]["Transparency"] = 0.800000011920929;

    -- StarterGui.Loader.UI.upperbar
    G2L["5"] = Instance.new("Frame", G2L["2"]);
    G2L["5"]["BorderSizePixel"] = 0;
    G2L["5"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
    G2L["5"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    G2L["5"]["BackgroundTransparency"] = 1;
    G2L["5"]["Size"] = UDim2.new(1, -30, 0, 30);
    G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["5"]["Position"] = UDim2.new(0.5, 0, 0, 30);
    G2L["5"]["Name"] = [[upperbar]];

    -- StarterGui.Loader.UI.upperbar.logo
    G2L["6"] = Instance.new("ImageLabel", G2L["5"]);
    G2L["6"]["BorderSizePixel"] = 0;
    G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["6"]["AnchorPoint"] = Vector2.new(0, 0.5);
    G2L["6"]["Image"] = [[rbxassetid://18481362660]];
    G2L["6"]["Size"] = UDim2.new(0, 30, 0, 30);
    G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["6"]["Name"] = [[logo]];
    G2L["6"]["BackgroundTransparency"] = 1;
    G2L["6"]["Position"] = UDim2.new(0, 0, 0.5, 0);

    -- StarterGui.Loader.UI.upperbar.header
    G2L["7"] = Instance.new("TextLabel", G2L["5"]);
    G2L["7"]["BorderSizePixel"] = 0;
    G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    G2L["7"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
    G2L["7"]["TextSize"] = 15;
    G2L["7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["7"]["Size"] = UDim2.new(0.8493150472640991, -33, 1, 0);
    G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["7"]["Text"] = [[SimpleBypass]];
    G2L["7"]["Name"] = [[header]];
    G2L["7"]["BackgroundTransparency"] = 1;
    G2L["7"]["Position"] = UDim2.new(0, 33, 0, 2);

    -- StarterGui.Loader.UI.upperbar.settings
    G2L["8"] = Instance.new("ImageButton", G2L["5"]);
    G2L["8"]["BorderSizePixel"] = 0;
    G2L["8"]["AutoButtonColor"] = false;
    G2L["8"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
    G2L["8"]["Size"] = UDim2.new(0, 30, 0, 30);
    G2L["8"]["Name"] = [[settings]];
    G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["8"]["Position"] = UDim2.new(1, -65, 0, 0);

    -- StarterGui.Loader.UI.upperbar.settings.UICorner
    G2L["9"] = Instance.new("UICorner", G2L["8"]);
    G2L["9"]["CornerRadius"] = UDim.new(0, 6);

    -- StarterGui.Loader.UI.Credits
    G2L["a"] = Instance.new("TextLabel", G2L["2"]);
    G2L["a"]["BorderSizePixel"] = 0;
    G2L["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    G2L["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
    G2L["a"]["TextSize"] = 15;
    G2L["a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["a"]["Size"] = UDim2.new(0, 154, 0, 30);
    G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["a"]["Text"] = [[CREDITS:]];
    G2L["a"]["Name"] = [[Credits]];
    G2L["a"]["BackgroundTransparency"] = 1;
    G2L["a"]["Position"] = UDim2.new(0, 15, 0, 50);

    -- StarterGui.Loader.UI.Skire
    G2L["b"] = Instance.new("TextLabel", G2L["2"]);
    G2L["b"]["BorderSizePixel"] = 0;
    G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    G2L["b"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
    G2L["b"]["TextSize"] = 14;
    G2L["b"]["TextColor3"] = Color3.fromRGB(166, 166, 166);
    G2L["b"]["Size"] = UDim2.new(0, 154, 0, 30);
    G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["b"]["Text"] = [[Skire - Only dev]];
    G2L["b"]["Name"] = [[Skire]];
    G2L["b"]["BackgroundTransparency"] = 1;
    G2L["b"]["Position"] = UDim2.new(0, 41, 0, 74);

    -- StarterGui.Loader.UI.Based
    G2L["c"] = Instance.new("TextLabel", G2L["2"]);
    G2L["c"]["BorderSizePixel"] = 0;
    G2L["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    G2L["c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
    G2L["c"]["TextSize"] = 14;
    G2L["c"]["TextColor3"] = Color3.fromRGB(166, 166, 166);
    G2L["c"]["Size"] = UDim2.new(0, 154, 0, 30);
    G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["c"]["Text"] = [[Based - No reason]];
    G2L["c"]["Name"] = [[Based]];
    G2L["c"]["BackgroundTransparency"] = 1;
    G2L["c"]["Position"] = UDim2.new(0, 41, 0, 94);

    -- StarterGui.Loader.UI.Join
    G2L["d"] = Instance.new("TextButton", G2L["2"]);
    G2L["d"]["BorderSizePixel"] = 0;
    G2L["d"]["BackgroundColor3"] = Color3.fromRGB(42, 42, 42);
    G2L["d"]["TextSize"] = 14;
    G2L["d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
    G2L["d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["d"]["Size"] = UDim2.new(0, 233, 0, 30);
    G2L["d"]["Name"] = [[Join]];
    G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["d"]["Text"] = [[Join the Discord]];
    G2L["d"]["Position"] = UDim2.new(0, 9, 1, -49);

    -- StarterGui.Loader.UI.Join.UICorner
    G2L["e"] = Instance.new("UICorner", G2L["d"]);


    -- StarterGui.Loader.UI.Nevermind
    G2L["f"] = Instance.new("TextButton", G2L["2"]);
    G2L["f"]["BorderSizePixel"] = 0;
    G2L["f"]["BackgroundColor3"] = Color3.fromRGB(42, 42, 42);
    G2L["f"]["TextSize"] = 10;
    G2L["f"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
    G2L["f"]["TextColor3"] = Color3.fromRGB(154, 154, 154);
    G2L["f"]["Size"] = UDim2.new(0, 233, 0, 19);
    G2L["f"]["Name"] = [[Nevermind]];
    G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["f"]["Text"] = [[NO, I HATE YOU]];
    G2L["f"]["Position"] = UDim2.new(0, 9, 1, -19);
    G2L["f"]["BackgroundTransparency"] = 1;

    -- StarterGui.Loader.UI.Nevermind.UICorner
    G2L["10"] = Instance.new("UICorner", G2L["f"]);


    -- StarterGui.Loader.UI.YTeber
    G2L["11"] = Instance.new("TextLabel", G2L["2"]);
    G2L["11"]["BorderSizePixel"] = 0;
    G2L["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["11"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    G2L["11"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
    G2L["11"]["TextSize"] = 14;
    G2L["11"]["TextColor3"] = Color3.fromRGB(166, 166, 166);
    G2L["11"]["Size"] = UDim2.new(0, 154, 0, 30);
    G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["11"]["Text"] = [[YTeber112 - idk]];
    G2L["11"]["Name"] = [[YTeber]];
    G2L["11"]["BackgroundTransparency"] = 1;
    G2L["11"]["Position"] = UDim2.new(0, 41, 0, 116);

    -- StarterGui.Loader.UI.Bat
    G2L["12"] = Instance.new("TextLabel", G2L["2"]);
    G2L["12"]["BorderSizePixel"] = 0;
    G2L["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["12"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    G2L["12"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
    G2L["12"]["TextSize"] = 14;
    G2L["12"]["TextColor3"] = Color3.fromRGB(166, 166, 166);
    G2L["12"]["Size"] = UDim2.new(0, 154, 0, 30);
    G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["12"]["Text"] = [[Vxsty - Being awesome sauce]];
    G2L["12"]["Name"] = [[Bat]];
    G2L["12"]["BackgroundTransparency"] = 1;
    G2L["12"]["Position"] = UDim2.new(0, 41, 0, 137);


    return G2L["1"];
end
spawn(function()
    --local discord = loadstring(game:HttpGet("https://raw.githubusercontent.com/SkireScripts/Ouxie/main/Projects/Discord%20Inviter/Loader.lua"))()
    --discord:invite("https://discord.gg/c3AbX3GXsr", "Skires stuff", function()end)
    local function a()
        local ts = game:GetService("TweenService")
        local ti = TweenInfo.new(0.1, Enum.EasingStyle.Linear)
        local ui = initui().UI
        
        local upperbar = ui.upperbar
        local bar = ui.bar
        local max = ui.maximize
        local mini = upperbar.minimize
        local settings = upperbar.settings
        local send = bar.send
        local clearlogs = bar.clear
        local box = bar.messagebox

        -- Animations setup
        local function expand()
            ts:Create(ui, ti, { Size = UDim2.new(0, 322, 0, 109) }):Play()
            ts:Create(ui, ti, { Position = UDim2.new(ui.Position.X.Scale, ui.Position.X.Offset + 140, ui.Position.Y.Scale, ui.Position.Y.Offset) }):Play()
            upperbar.Visible = true
            bar.Visible = true
            max.Visible = false
            ui.logo.Visible = false
        end
        
        local function minimize()
            ts:Create(ui, ti, { Size = UDim2.new(0, 47, 0, 83) }):Play()
            ts:Create(ui, ti, { Position = UDim2.new(ui.Position.X.Scale, ui.Position.X.Offset - 140, ui.Position.Y.Scale, ui.Position.Y.Offset) }):Play()
            upperbar.Visible = false
            bar.Visible = false
            max.Visible = true
            ui.logo.Visible = true
        end
        
        max.MouseButton1Click:Connect(expand)
        mini.MouseButton1Click:Connect(minimize)
        
        -- Event handling for settings, clearlogs, send button interactions
        settings.MouseEnter:Connect(function()
            settings.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
        end)
        settings.MouseLeave:Connect(function()
            settings.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
        end)
        
        clearlogs.MouseEnter:Connect(function()
            clearlogs.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            clearlogs.ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
        end)
        clearlogs.MouseLeave:Connect(function()
            clearlogs.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
            clearlogs.ImageLabel.ImageColor3 = Color3.fromRGB(131,131,131)
        end)
        
        send.MouseEnter:Connect(function()
            send.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            send.Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        end)
        send.MouseLeave:Connect(function()
            send.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
            send.Frame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
        end)
        
        -- Dragging functionality
        local function update(input)
            local delta = input.Position - dragStart
            ui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
        
        ui.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                dragStart = input.Position
                startPos = ui.Position
        
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragging = false
                    end
                end)
            end
        end)
        
        ui.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                dragInput = input
            end
        end)
        
        game:GetService("UserInputService").InputChanged:Connect(function(input)
            if input == dragInput and dragging then
                update(input)
            end
        end)
        
        -- Main functionality (assuming this is where you have your main logic)
        pcall(function()
            local tcs = game:GetService("TextChatService")
            local chat = tcs.ChatInputBarConfiguration.TargetTextChannel
            
            local function replace(str, find_str, replace_str)
                local escaped_find_str = find_str:gsub("[%-%^%$%(%)%%%.%[%]%*%+%-%?]", "%%%0")
                return str:gsub(escaped_find_str, replace_str)
            end
            
            local letters = {
                ["a"] = "Α", ["A"] = "α",
                ["b"] = "Β", ["B"] = "b",
                ["c"] = "С", ["C"] = "с",
                ["d"] = "D",-- ["D"] = "ԁ",
                ["e"] = "Ε", ["E"] = "ȩ",
                ["f"] = "Ғ", ["F"] = "Ғ",
                ["g"] = "ԍ", ["G"] = "ԍ",
                ["h"] = "Η", ["H"] = "һ",
                ["i"] = "I",-- ["I"] = "i",
                ["j"] = "Ј", ["J"] = "ј",
                ["k"] = "Κ", ["K"] = "κ",
                ["l"] = "L",-- ["L"] = "L",
                ["m"] = "Μ", ["M"] = "м",
                ["n"] = "Ν", ["N"] = "n",
                ["o"] = "Ο", ["O"] = "ο",
                ["p"] = "Ρ", ["P"] = "р",
                ["q"] = "Ԛ",-- ["Q"] = "ԛ",
                ["r"] = "R",-- ["R"] = "r",
                ["s"] = "Ṡ", ["S"] = "ş",
                ["t"] = "Τ", ["T"] = "t",
                ["u"] = "ᴜ", ["U"] = "u",
                ["v"] = "Ѵ", ["V"] = "ѵ",
                ["w"] = "Ԝ", ["W"] = "ԝ",
                ["x"] = "Χ", ["X"] = "x",
                ["y"] = "Υ", ["Y"] = "y",
                ["z"] = "Ζ", ["Z"] = "ᴢ"
            }
            
            local function filter(message)
                for search, replacement in pairs(letters) do
                    message = replace(message, search, replacement)
                end
                return message
            end
            
            local function clearlogsf()
                for i = 1, 19 do
                    chat:SendAsync("")
                end
            end
            
            clearlogs.MouseButton1Click:Connect(function()
                clearlogsf()
            end)
            
            box:GetPropertyChangedSignal("Text"):Connect(function()
                if #box.Text > 0 then
                    bar.send.ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
                elseif #box.Text > 200 or #box.Text == 0 then
                    bar.send.ImageLabel.ImageColor3 = Color3.fromRGB(131, 131, 131)
                end
            end)
            local function sendchat(msg)
                if tcs.ChatVersion == Enum.ChatVersion.LegacyChatService then
                    game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer(msg,"All")
                else
                    chat:SendAsync(msg)
                end
            end
            box.FocusLost:Connect(function(enterPressed)
                if enterPressed then
                    sendchat(filter(box.Text))
                    box.Text = ""
                end
            end)
            
            send.MouseButton1Click:Connect(function()
                sendchat(filter(box.Text))
                box.Text = ""
            end)
        end)
    end
    local loader = initloader()
    loader.UI.Join.MouseButton1Click:Connect(function()
        setclipboard("https://discord.gg/c3AbX3GXsr")
        a()
        loader:Destroy()
    end)
    loader.UI.Nevermind.MouseButton1Click:Connect(function()
        a()
        loader:Destroy()
    end)
end)
