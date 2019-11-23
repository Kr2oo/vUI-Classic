local vUI, GUI, Language, Media, Settings = select(2, ...):get()

local DT = vUI:GetModule("DataText")

local GetContainerNumSlots = GetContainerNumSlots
local GetContainerNumFreeSlots = GetContainerNumFreeSlots
local NUM_BAG_SLOTS = NUM_BAG_SLOTS
local select = select
local Label = Language["Soul Shards"]

local Update = function(self)
	local ShardCount = 0
	
	for Bag = 0, NUM_BAG_SLOTS do
		local NumSlots = GetContainerNumSlots(Bag)
		
		for Slot = 1, NumSlots do
			local ID = GetContainerItemID(Bag, Slot)
			
			if (ID and ID == 6265) then
				local Count = select(2, GetContainerItemInfo(Bag, Slot))
				
				TotalCount = TotalCount + Count
			end
		end
	end
	
	self.Text:SetFormattedText("%s: %s", Label, ShardCount)
end

local OnEnable = function(self)
	self:RegisterEvent("BAG_UPDATE")
	self:SetScript("OnEvent", Update)
	
	self:Update()
end

local OnDisable = function(self)
	self:UnregisterEvent("BAG_UPDATE")
	self:SetScript("OnEvent", nil)
	
	self.Text:SetText("")
end

DT:SetType("Soul Shards", OnEnable, OnDisable, Update)