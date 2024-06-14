--[[example:
ouxie:Window({
	Name = "Ouxie / UI v2";
	Size = UDim2.new(0,350,0,370)
})
local tab1 = ouxie:NewTab({
	TabName = "Ouxie Tab 1";
	IconId = "rbxassetid://7072706318";
})
tab1:Toggle({
	Name = "Test Toggle";
	Callback = function(bool)
		print("switched:", bool)
	end;
})
]]

local ui = loadstring(game:HttpGet("https://pastebin.com/raw/DDeuAPDA"))()
local script = ui.func

local tween = game:GetService("TweenService")

local ouxie = {}

function ouxie:Window(configy)
	
	function ouxie:NewTab(config)
		local page = script.Page:Clone()
		page.Name = config.TabName
		page.Parent = script.Parent.UI.pages
		local new = script.Tab:Clone()
		new.Name = config.TabName
		new.Parent = script.Parent.UI.tabs.tabs
		if config.IconId:sub(0,13) == "rbxassetid://" then
			new.Icon.ImageLabel.Image = config.IconId
		else
			new.Icon.ImageLabel.Image = "rbxassetid://"..config.IconId
		end
		
		for i = 1, #config.TabName do
			local subString = string.sub(config.TabName, 1, i)
			new.Header.Text = subString
			wait(0.02)
		end
		
		local tab = {
			["btn"] = new;
			["page"] = page;
		}
		
		local function swap(string)
			for _, v in ipairs(script.Parent.UI.tabs.tabs:GetChildren()) do
				if v:IsA("ImageButton") then
					if v.Name == string then
						v.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
						v.Header.TextColor3 = Color3.fromRGB(168, 29, 255)
						v.Icon.ImageLabel.ImageColor3 = Color3.fromRGB(168, 29, 255)
					else
						v.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
						v.Header.TextColor3 = Color3.fromRGB(255, 255, 255)
						v.Icon.ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
					end
				end
			end
			for _, v in ipairs(script.Parent.UI.pages:GetChildren()) do
				if v:IsA("Frame") then
					if v.Name == string then
						v.Visible = true
					else
						v.Visible = false
					end
				end
			end
		end

		swap(script.Parent.UI.tabs.tabs:GetChildren()[2].Name)

		tab.btn.MouseButton1Click:Connect(function()
			swap(tab.btn.Name)
		end)
		
		
		function tab:Button(config)
			local btn = script.Elements.Button:Clone()
			btn.Name = config.Name
			btn.Label.Text = config.Name
			btn.Parent = tab.page.elements
			btn.MouseEnter:Connect(function()
				btn.BackgroundColor3 = Color3.fromRGB(20,20,20)
				btn.Label.TextColor3 = Color3.fromRGB(168,29,255)
				btn.Icon.ImageLabel.ImageColor3 = Color3.fromRGB(168,29,255)
			end)
			btn.MouseLeave:Connect(function()
				btn.BackgroundColor3 = Color3.fromRGB(14,14,14)
				btn.Label.TextColor3 = Color3.fromRGB(255,255,255)
				btn.Icon.ImageLabel.ImageColor3 = Color3.fromRGB(255,255,255)
			end)
			btn.MouseButton1Click:Connect(config.Callback)
		end
		
		function tab:Input(config)
			local inp = script.Elements.Input:Clone()
			inp.Name = config.Name
			inp.Label.Text = config.Name
			inp.raw.TextBox.Text = config.Default
			inp.Parent = tab.page.elements
			inp.MouseEnter:Connect(function()
				inp.BackgroundColor3 = Color3.fromRGB(20,20,20)
				inp.Label.TextColor3 = Color3.fromRGB(168,29,255)
			end)
			inp.MouseLeave:Connect(function()
				inp.BackgroundColor3 = Color3.fromRGB(14,14,14)
				inp.Label.TextColor3 = Color3.fromRGB(255,255,255)
			end)
			local raw
			inp.raw.TextBox.FocusLost:Connect(function()
				raw = inp.raw.TextBox.Text
				config.Callback(raw)
			end)
		end
		
		function tab:Toggle(config)
			local tgl = script.Elements.Toggle:Clone()
			tgl.Name = config.Name
			tgl.Label.Text = config.Name
			tgl.Parent = tab.page.elements
			tgl.MouseEnter:Connect(function()
				tgl.BackgroundColor3 = Color3.fromRGB(20,20,20)
				tgl.Label.TextColor3 = Color3.fromRGB(168,29,255)
			end)
			tgl.MouseLeave:Connect(function()
				tgl.BackgroundColor3 = Color3.fromRGB(14,14,14)
				tgl.Label.TextColor3 = Color3.fromRGB(255,255,255)
			end)
			local bool = false 
			tgl.MouseButton1Click:Connect(function()
				bool = not bool
				if bool == true then
					tgl.switch.Frame.BackgroundColor3 = Color3.fromRGB(168, 29, 255)
					tgl.switch.Frame.UIStroke.Thickness = 0
				elseif bool == false then
					tgl.switch.Frame.BackgroundColor3 = Color3.fromRGB(14,14,14)
					tgl.switch.Frame.UIStroke.Thickness = 1
				end
				config.Callback(bool)
			end)
		end
		
		function tab:Dropdown(config)
			local drop = script.Elements.Dropdown:Clone()
			drop.Name = config.Name
			drop.Label.Text = config.Name
			drop.Parent = tab.page.elements
			drop.MouseEnter:Connect(function()
				drop.BackgroundColor3 = Color3.fromRGB(20,20,20)
				drop.Label.TextColor3 = Color3.fromRGB(168,29,255)
				drop.Icon.ImageLabel.ImageColor3 = Color3.fromRGB(168,29,255)
			end)
			drop.MouseLeave:Connect(function()
				drop.BackgroundColor3 = Color3.fromRGB(14,14,14)
				drop.Label.TextColor3 = Color3.fromRGB(255,255,255)
				drop.Icon.ImageLabel.ImageColor3 = Color3.fromRGB(255,255,255)
			end)
			
			local down = script.Elements.Dropdown_down:Clone()
			down.Name = config.Name.."_down"
			down.Visible = true
			down.Size = UDim2.new(0,0,0,0)
			down.Label.Text = config.Name
			down.Parent = tab.page.elements
			
			drop.MouseButton1Click:Connect(function()
				if down.Size == UDim2.new(0, 328,0, 217) then
					tween:Create(down, TweenInfo.new(0.2, Enum.EasingStyle.Linear), { Size = UDim2.new(0, 0,0, 0) }):Play()
					task.wait(0.2)
					down.Visible = false
				else
					down.Visible = true
					tween:Create(down, TweenInfo.new(0.2, Enum.EasingStyle.Linear), { Size = UDim2.new(0, 328,0, 217) }):Play()
				end
			end)
			
			for i,v in pairs(config.Options) do
				local op = down.List.List.Button:Clone()
				op.Name = v
				op.Visible = true
				op.Label.Text = v
				op.Parent = down.List.List
				op.MouseEnter:Connect(function()
					op.BackgroundColor3 = Color3.fromRGB(20,20,20)
					op.Label.TextColor3 = Color3.fromRGB(168,29,255)
					op.Icon.ImageLabel.ImageColor3 = Color3.fromRGB(168,29,255)
				end)
				op.MouseLeave:Connect(function()
					op.BackgroundColor3 = Color3.fromRGB(14,14,14)
					op.Label.TextColor3 = Color3.fromRGB(255,255,255)
					op.Icon.ImageLabel.ImageColor3 = Color3.fromRGB(255,255,255)
				end)
				local Return
				op.MouseButton1Click:Connect(function()
					Return = v
					config.Callback(Return)
				end)
			end

		end
		
		return tab
	end
	
	-- loader:
	local function fullLoad()
		tween:Create(script.Parent.Loader.Percent, TweenInfo.new(0.5, Enum.EasingStyle.Linear), { TextTransparency = 1 }):Play()
		tween:Create(script.Parent.Loader.Progressbar.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Linear), { Thickness = 0 }):Play()	
		tween:Create(script.Parent.Loader.Progressbar, TweenInfo.new(0.5, Enum.EasingStyle.Linear), { BackgroundTransparency = 1 }):Play()
		tween:Create(script.Parent.Loader.Progressbar.bar, TweenInfo.new(0.5, Enum.EasingStyle.Linear), { BackgroundTransparency = 1 }):Play()	
		tween:Create(script.Parent.Loader.Logo, TweenInfo.new(0.5, Enum.EasingStyle.Linear), { Position = UDim2.new(0.5,0,0.5,0) }):Play()
		task.wait(1.3)
		tween:Create(script.Parent.Loader.Logo, TweenInfo.new(1, Enum.EasingStyle.Linear), { ImageTransparency = 1 }):Play()
		task.wait(0.4)
		tween:Create(script.Parent.Loader, TweenInfo.new(1, Enum.EasingStyle.Linear), { Size = UDim2.new(0,0,0,0) }):Play()
		task.wait(0.2)
		tween:Create(script.Parent.Loader.UICorner, TweenInfo.new(1,Enum.EasingStyle.Linear), { CornerRadius = UDim.new(1,0) }):Play()
		task.wait(1.5)
		script.Parent.Loader:Destroy()
		-- prepare
		script.Parent.UI.Visible = true
		script.Parent.UI.topbar.Header.Text = ""
		script.Parent.UI.Size = UDim2.new(0,0,0,0)
		-- play
		tween:Create(script.Parent.UI, TweenInfo.new(1, Enum.EasingStyle.Linear), { Size = configy.Size }):Play()
		task.wait(1.3)
		for i = 1, #configy.Name do
			local subString = string.sub(configy.Name, 1, i)
			script.Parent.UI.topbar.Header.Text = subString
			wait(0.02)
		end
	end
	local function load()
		-- prepare
		local progress = 0 / 1
		script.Parent.Loader.Visible = true
		script.Parent.UI.Visible = false
		script.Parent.Loader.Logo.ImageTransparency = 1
		script.Parent.Loader.UICorner.CornerRadius = UDim.new(1,0)
		script.Parent.Loader.Size = UDim2.new(0,0,0,0)
		script.Parent.Loader.Logo.Position = UDim2.new(0.5,0,0.5,0)
		script.Parent.Loader.Progressbar.BackgroundTransparency = 1
		script.Parent.Loader.Progressbar.bar.Size = UDim2.new(0,0,0,0)
		script.Parent.Loader.Progressbar.UIStroke.Thickness = 0
		script.Parent.Loader.Percent.TextTransparency = 1
		-- play
		tween:Create(script.Parent.Loader.UICorner, TweenInfo.new(1,Enum.EasingStyle.Linear), { CornerRadius = UDim.new(0,12) }):Play()
		task.wait(0.2)
		tween:Create(script.Parent.Loader, TweenInfo.new(1, Enum.EasingStyle.Linear), { Size = UDim2.new(0,250,0,250) }):Play()
		task.wait(0.4)
		tween:Create(script.Parent.Loader.Logo, TweenInfo.new(1, Enum.EasingStyle.Linear), { ImageTransparency = 0 }):Play()
		task.wait(1.3)
		tween:Create(script.Parent.Loader.Logo, TweenInfo.new(0.5, Enum.EasingStyle.Linear), { Position = UDim2.new(0.5,0,0.4,0) }):Play()
		tween:Create(script.Parent.Loader.Progressbar, TweenInfo.new(0.5, Enum.EasingStyle.Linear), { BackgroundTransparency = 0 }):Play()
		tween:Create(script.Parent.Loader.Progressbar.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Linear), { Thickness = 1 }):Play()
		tween:Create(script.Parent.Loader.Percent, TweenInfo.new(0.5, Enum.EasingStyle.Linear), { TextTransparency = 0 }):Play()
		task.wait(0.8)
		while wait(0.2) do
			if progress <= 1 then
				tween:Create(script.Parent.Loader.Progressbar.bar, TweenInfo.new(0.3, Enum.EasingStyle.Linear), { Size = UDim2.new(progress, 0, 1, 0) }):Play()
				script.Parent.Loader.Percent.Text = math.floor(progress * 100) .. '%'
				progress += math.random(0.4,1.9) / 10
				wait(math.random(0.1, 0.5))
			else
				script.Parent.Loader.Percent.Text = "Done Loading!"
				task.wait(1.2)
				fullLoad()
				break
			end
		end
		task.wait(0.3)
		-- delete
	end
	load()
	--scripts:
	--drag:
	local UserInputService = game:GetService("UserInputService")

	local gui = script.Parent.UI

	local dragging
	local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end

	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
	--close:
	local color1 = Color3.fromRGB(255, 53, 53)
	local color2 = Color3.fromRGB(14,14,14)
	local function light()
		script.Parent.UI.topbar.Close.BackgroundColor3 = color1
		script.Parent.UI.topbar.Close["cover-left"].BackgroundColor3 = color1
		script.Parent.UI.topbar.Close["cover-bottom"].BackgroundColor3 = color1
	end
	local function dark()
		script.Parent.UI.topbar.Close.BackgroundColor3 = color2
		script.Parent.UI.topbar.Close["cover-left"].BackgroundColor3 = color2
		script.Parent.UI.topbar.Close["cover-bottom"].BackgroundColor3 = color2
	end
	script.Parent.UI.topbar.Close.MouseEnter:Connect(light)
	script.Parent.UI.topbar.Close.MouseLeave:Connect(dark)
	script.Parent.UI.topbar.Close.CloseButton.MouseButton1Down:Connect(light)
	script.Parent.UI.topbar.Close.CloseButton.MouseButton1Up:Connect(dark)
	script.Parent.UI.topbar.Close.CloseButton.MouseButton1Click:Connect(function()
		light()
		script.Parent:Destroy()
	end)
end

function ouxie:onClose(Callback)
    script.Parent.UI.topbar.Close.CloseButton.MouseButton1Click:Connect(function()
		pcall(Callback)
	end)
end

return ouxie
