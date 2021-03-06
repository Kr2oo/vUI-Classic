local vUI, GUI, Language, Media, Settings = select(2, ...):get()

local ZoneTextSize = 32
local SubZoneTextSize = 26
local AutoFollowTextSize = 20

local GetZonePVPInfo = GetZonePVPInfo
local GetSubZoneText = GetSubZoneText
local GetZoneText = GetZoneText

local FADE_IN_TIME = 0.4
local FADE_OUT_TIME = 1.4
local HOLD_TIME = 1.6

local CustomZoneText = CreateFrame("Frame")

local CustomZoneTextFrame = CreateFrame("Frame", nil, UIParent)
CustomZoneTextFrame:SetScaledSize(200, ZoneTextSize)
CustomZoneTextFrame:SetScaledPoint("TOP", UIParent, 0, -220)
CustomZoneTextFrame:SetAlpha(0)

CustomZoneTextFrame.Group = CreateAnimationGroup(CustomZoneTextFrame)

CustomZoneTextFrame.FadeIn = CustomZoneTextFrame.Group:CreateAnimation("fade")
CustomZoneTextFrame.FadeIn:SetEasing("in")
CustomZoneTextFrame.FadeIn:SetDuration(FADE_IN_TIME)
CustomZoneTextFrame.FadeIn:SetChange(1)
CustomZoneTextFrame.FadeIn:SetScript("OnPlay", function(self) self.Parent:Show() end)

CustomZoneTextFrame.Sleep = CustomZoneTextFrame.Group:CreateAnimation("sleep")
CustomZoneTextFrame.Sleep:SetDuration(HOLD_TIME)
CustomZoneTextFrame.Sleep:SetOrder(2)

CustomZoneTextFrame.FadeOut = CustomZoneTextFrame.Group:CreateAnimation("fade")
CustomZoneTextFrame.FadeOut:SetEasing("out")
CustomZoneTextFrame.FadeOut:SetDuration(FADE_OUT_TIME)
CustomZoneTextFrame.FadeOut:SetChange(0)
CustomZoneTextFrame.FadeOut:SetOrder(3)
CustomZoneTextFrame.FadeOut:SetScript("OnFinished", function(self) self.Parent:Hide() end)

local CustomSubZoneTextFrame = CreateFrame("Frame", nil, UIParent)
CustomSubZoneTextFrame:SetScaledSize(200, SubZoneTextSize)
CustomSubZoneTextFrame:SetScaledPoint("TOP", CustomZoneTextFrame, "BOTTOM", 0, 0)
CustomSubZoneTextFrame:SetAlpha(0)

CustomSubZoneTextFrame.Group = CreateAnimationGroup(CustomSubZoneTextFrame)

CustomSubZoneTextFrame.FadeIn = CustomSubZoneTextFrame.Group:CreateAnimation("fade")
CustomSubZoneTextFrame.FadeIn:SetEasing("in")
CustomSubZoneTextFrame.FadeIn:SetDuration(FADE_IN_TIME)
CustomSubZoneTextFrame.FadeIn:SetChange(1)
CustomSubZoneTextFrame.FadeIn:SetScript("OnPlay", function(self) self.Parent:Show() end)

CustomSubZoneTextFrame.Sleep = CustomSubZoneTextFrame.Group:CreateAnimation("sleep")
CustomSubZoneTextFrame.Sleep:SetDuration(HOLD_TIME)
CustomSubZoneTextFrame.Sleep:SetOrder(2)

CustomSubZoneTextFrame.FadeOut = CustomSubZoneTextFrame.Group:CreateAnimation("fade")
CustomSubZoneTextFrame.FadeOut:SetEasing("out")
CustomSubZoneTextFrame.FadeOut:SetDuration(FADE_OUT_TIME)
CustomSubZoneTextFrame.FadeOut:SetChange(0)
CustomSubZoneTextFrame.FadeOut:SetOrder(3)
CustomSubZoneTextFrame.FadeOut:SetScript("OnFinished", function(self) self.Parent:Hide() end)

local ZoneText = CustomZoneTextFrame:CreateFontString(nil, "OVERLAY")
ZoneText:SetScaledPoint("CENTER", CustomZoneTextFrame, 0, 0)
ZoneText:SetShadowColor(0, 0, 0)
ZoneText:SetShadowOffset(1, -1)

local PVPInfoText = CustomSubZoneTextFrame:CreateFontString(nil, "OVERLAY")
PVPInfoText:SetScaledPoint("CENTER", CustomSubZoneTextFrame, 0, 0)
PVPInfoText:SetShadowColor(0, 0, 0)
PVPInfoText:SetShadowOffset(1, -1)

local SubZoneText = CustomSubZoneTextFrame:CreateFontString(nil, "OVERLAY")
SubZoneText:SetScaledPoint("CENTER", CustomSubZoneTextFrame, 0, 0)
SubZoneText:SetShadowColor(0, 0, 0)
SubZoneText:SetShadowOffset(1, -1)

local PVPArenaText = CustomSubZoneTextFrame:CreateFontString(nil, "OVERLAY")
PVPArenaText:SetScaledPoint("CENTER", CustomSubZoneTextFrame, 0, 0)
PVPArenaText:SetShadowColor(0, 0, 0)
PVPArenaText:SetShadowOffset(1, -1)

local SetZoneText = function(show)
	local PVPType, IsSubZonePVP, Faction = GetZonePVPInfo()
	
	if (not ZoneText) then
		return
	end
	
	PVPArenaText:SetText("")
	PVPInfoText:SetText("")
	
	local PVPText = PVPInfoText
	
	if IsSubZonePVP then
		PVPText = PVPArenaText
	end
	
	if (not PVPType) then
		PVPType = "other"
	end
	
	local Color = vUI.ZoneColors[PVPType]
	
	if (PVPType == "sanctuary") then
		PVPText:SetText(SANCTUARY_TERRITORY)
		PVPText:SetTextColor(Color[1], Color[2], Color[3])
		ZoneText:SetTextColor(Color[1], Color[2], Color[3])
		SubZoneText:SetTextColor(Color[1], Color[2], Color[3])
	elseif (PVPType == "arena") then
		PVPText:SetText(FREE_FOR_ALL_TERRITORY)
		PVPText:SetTextColor(Color[1], Color[2], Color[3])
		ZoneText:SetTextColor(Color[1], Color[2], Color[3])
		SubZoneText:SetTextColor(Color[1], Color[2], Color[3])
	elseif (PVPType == "friendly") then
		if (Faction and Faction ~= "") then
			PVPText:SetFormattedText(FACTION_CONTROLLED_TERRITORY, Faction)
			PVPText:SetTextColor(Color[1], Color[2], Color[3])
		end
		
		ZoneText:SetTextColor(Color[1], Color[2], Color[3])
		SubZoneText:SetTextColor(Color[1], Color[2], Color[3])
	elseif (PVPType == "hostile") then
		if (Faction and Faction ~= "") then
			PVPText:SetFormattedText(FACTION_CONTROLLED_TERRITORY, Faction)
			PVPText:SetTextColor(Color[1], Color[2], Color[3])
		end
		
		ZoneText:SetTextColor(Color[1], Color[2], Color[3])
		SubZoneText:SetTextColor(Color[1], Color[2], Color[3])
	elseif (PVPType == "contested") then
		PVPText:SetText(CONTESTED_TERRITORY)
		PVPText:SetTextColor(Color[1], Color[2], Color[3])
		ZoneText:SetTextColor(Color[1], Color[2], Color[3])
		SubZoneText:SetTextColor(Color[1], Color[2], Color[3])
	elseif (PVPType == "combat") then
		PVPText = PVPArenaTextString
		PVPText:SetText(COMBAT_ZONE)
		PVPText:SetTextColor(Color[1], Color[2], Color[3])
		ZoneText:SetTextColor(Color[1], Color[2], Color[3])
		SubZoneText:SetTextColor(Color[1], Color[2], Color[3])
	elseif (PVPType == "other") then
		ZoneText:SetTextColor(Color[1], Color[2], Color[3])
		SubZoneText:SetTextColor(Color[1], Color[2], Color[3])
	end
	
	SubZoneText:ClearAllPoints()
	
	if (ZonePVPType ~= PVPType) then
		ZonePVPType = PVPType
	elseif (not show) then
		PVPInfoText:SetText("")
		SubZoneText:SetPoint("CENTER", CustomSubZoneTextFrame, 0, 0)
	end
	
	if (PVPInfoText:GetText() == "") then
		SubZoneText:SetPoint("CENTER", CustomSubZoneTextFrame, 0, 0)
	else
		SubZoneText:SetPoint("TOP", PVPInfoText, "BOTTOM", 0, 0)
	end
end

local OnEvent = function(self, event)
	local ShowZoneText = false
	local ZoneString = GetZoneText()
	
	if ((ZoneString ~= self.ZoneText) or (event == "ZONE_CHANGED_NEW_AREA")) then
		self.ZoneText = ZoneString
		ZoneText:SetText(ZoneString)
		ShowZoneText = true
		SetZoneText(ShowZoneText)

		if CustomZoneTextFrame.Group:IsPlaying() then
			CustomZoneTextFrame.Group:Stop()
			CustomZoneTextFrame:SetAlpha(1)
			CustomZoneTextFrame.Sleep:Play()
		else
			CustomZoneTextFrame.Group:Play()
		end
	end
	
	local SubzoneString = GetSubZoneText()
	
	if (SubzoneString == "" and not ShowZoneText) then
		SubzoneString = ZoneString
	end
	
	SubZoneText:SetText("")
	
	if (SubzoneString == ZoneString) then
		ShowZoneText = false
		
		if (not CustomZoneTextFrame:IsShown()) then
			SubZoneText:SetText(SubzoneString)
			SetZoneText(ShowZoneText)
			
			if CustomSubZoneTextFrame.Group:IsPlaying() then
				CustomSubZoneTextFrame.Group:Stop()
				CustomSubZoneTextFrame:SetAlpha(1)
				CustomSubZoneTextFrame.Sleep:Play()
			else
				CustomSubZoneTextFrame.Group:Play()
			end
		end
	else
		if CustomZoneTextFrame:IsShown() then
			ShowZoneText = true
		end
		
		SubZoneText:SetText(SubzoneString)
		SetZoneText(ShowZoneText)
		
		if CustomSubZoneTextFrame.Group:IsPlaying() then
			CustomSubZoneTextFrame.Group:Stop()
			CustomSubZoneTextFrame:SetAlpha(1)
			CustomSubZoneTextFrame.Sleep:Play()
		else
			CustomSubZoneTextFrame.Group:Play()
		end
	end
end

CustomZoneText["ZONE_CHANGED"] = OnEvent
CustomZoneText["ZONE_CHANGED_INDOORS"] = OnEvent
CustomZoneText["ZONE_CHANGED_NEW_AREA"] = OnEvent

local UpdateZoneTextFont = function(value)
	--ZoneText:SetFont(Media:GetFont(Settings["ui-header-font"]), 32)
end

CustomZoneText["PLAYER_ENTERING_WORLD"] = function(self, event)
	ZoneText:SetFont(Media:GetFont(Settings["ui-header-font"]), ZoneTextSize)
	PVPInfoText:SetFont(Media:GetFont(Settings["ui-header-font"]), SubZoneTextSize)
	SubZoneText:SetFont(Media:GetFont(Settings["ui-header-font"]), SubZoneTextSize)
	PVPArenaText:SetFont(Media:GetFont(Settings["ui-header-font"]), SubZoneTextSize)
	
	-- Kill default zone texts
	if ZoneTextFrame then
		ZoneTextFrame:UnregisterAllEvents()
		ZoneTextFrame:SetScript("OnEvent", nil)
		ZoneTextFrame:SetScript("OnUpdate", nil)
	end
	
	SetZoneText()
	
	self:UnregisterEvent(event)
end

CustomZoneText:RegisterEvent("PLAYER_ENTERING_WORLD")
CustomZoneText:RegisterEvent("ZONE_CHANGED")
CustomZoneText:RegisterEvent("ZONE_CHANGED_INDOORS")
CustomZoneText:RegisterEvent("ZONE_CHANGED_NEW_AREA")

CustomZoneText:SetScript("OnEvent", function(self, event, arg)
	if self[event] then
		self[event](self, event, arg)
	end
end)

ZoneText_Clear = function()
	ZoneText:SetText("")
	PVPInfoText:SetText("")
	SubZoneText:SetText("")
	PVPArenaText:SetText("")
end