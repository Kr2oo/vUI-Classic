local vUI, GUI, Language, Media, Settings = select(2, ...):get()

local DT = vUI:GetModule("DataText")

local Update = function()

end

local OnEnable = function(self)
	self.Text:SetText("")
end

local OnDisable = function()

end

DT:SetType("Empty", OnEnable, OnDisable, Update)