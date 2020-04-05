local vUI, GUI, Language = select(2, ...):get()

if (vUI.UserLocale ~= "deDE") then
	return
end

-- General
Language["General"] = "General"
Language["Welcome"] = "Welcome"
Language["Display Welcome Message"] = "Display Welcome Message"
Language["Display a welcome message on|n login with UI information"] = "Display a welcome message on|n login with UI information"
Language["Display Developer Chat Tools"] = "Display Developer Chat Tools"
Language["Discord"] = "Discord"
Language["Get Link"] = "Get Link"
Language["Join Discord"] = "Join Discord"
Language["Get a link to join the vUI Discord community"] = "Get a link to join the vUI Discord community"
Language["Move UI"] = "Move UI"
Language["While toggled, you can drag some|nelements of vUI around the screen"] = "While toggled, you can drag some|nelements of vUI around the screen"
Language["Toggle"] = "Toggle"
Language["Restore"] = "Restore"
Language["Restore To Defaults"] = "Restore To Defaults"
Language["Restore all vUI movable frames|nto their default locations"] = "Restore all vUI movable frames|nto their default locations"
Language["Settings Window"] = "Settings Window"
Language["Hide In Combat"] = "Hide In Combat"
Language["Hide the settings window when engaging in combat"] = "Hide the settings window when engaging in combat"
Language["Fade While Moving"] = "Fade While Moving"
Language["Fade out The settings window while moving"] = "Fade out The settings window while moving"
Language["Set Faded Opacity"] = "Set Faded Opacity"
Language["Set the opacity of the settings window|n while faded"] = "Set the opacity of the settings window|n while faded"
Language["Welcome to |cFF%svUI|r version |cFF%s%s|r."] = "Welcome to |cFF%svUI|r version |cFF%s%s|r."
Language["Type |cFF%s/vui|r to access the settings window, or click |cFF%s|Hcommand:/vui|h[here]|h|r."] = "Type |cFF%s/vui|r to access the settings window, or click |cFF%s|Hcommand:/vui|h[here]|h|r."

-- Announcements
Language["Enable Announcements"] = "Enable Announcements"
Language["Announce to the selected channel when you|n successfully perform an interrupt spell"] = "Announce to the selected channel when you|n successfully perform an interrupt spell"
Language["Set Channel"] = "Set Channel"
Language["Set the channel to announce to"] = "Set the channel to announce to"
Language["Self"] = "Self"
Language["Say"] = "Say"
Language["Group"] = "Group"
Language["Emote"] = "Emote"

-- Auras
Language["Auras"] = "Auras"
Language["Enable Auras Module"] = "Enable Auras Module"
Language["Enable the vUI auras module"] = "Enable the vUI auras module"
Language["Size"] = "Size"
Language["Set the size of auras"] = "Set the size of auras"
Language["Spacing"] = "Spacing"
Language["Set the spacing between auras"] = "Set the spacing between auras"
Language["Row Spacing"] = "Row Spacing"
Language["Set the vertical spacing between aura rows"] = "Set the vertical spacing between aura rows"
Language["Display Per Row"] = "Display Per Row"
Language["Set the number of auras per row"] = "Set the number of auras per row"

-- Bags Frame
Language["Bags Frame"] = "Bags Frame"
Language["Show"] = "Show"
Language["Hide"] = "Hide"
Language["Mouseover"] = "Mouseover"
Language["Set Visibility"] = "Set Visibility"
Language["Set the visibility of the bag frame"] = "Set the visibility of the bag frame"
Language["Set Faded Opacity"] = "Set Faded Opacity"
Language["Set the opacity of the bags frame when|nvisiblity is set to Mouseover"] = "Set the opacity of the bags frame when|nvisiblity is set to Mouseover"
Language["Loot Left To Right"] = "Loot Left To Right"
Language["When looting, new items will be|nplaced into the leftmost bag"] = "When looting, new items will be|nplaced into the leftmost bag"

-- Colors
Language["Colors"] = "Colors"
Language["Class Colors"] = "Class Colors"
Language["Death Knight"] = "Death Knight"
Language["Demon Hunter"] = "Demon Hunter"
Language["Druid"] = "Druid"
Language["Hunter"] = "Hunter"
Language["Mage"] = "Mage"
Language["Monk"] = "Monk"
Language["Paladin"] = "Paladin"
Language["Priest"] = "Priest"
Language["Rogue"] = "Rogue"
Language["Shaman"] = "Shaman"
Language["Warlock"] = "Warlock"
Language["Warrior"] = "Warrior"
Language["Power Colors"] = "Power Colors"
Language["Mana"] = "Mana"
Language["Rage"] = "Rage"
Language["Energy"] = "Energy"
Language["Focus"] = "Focus"
Language["Soul Shards"] = "Soul Shards"
Language["Insanity"] = "Insanity"
Language["Fury"] = "Fury"
Language["Pain"] = "Pain"
Language["Chi"] = "Chi"
Language["Maelstrom"] = "Maelstrom"
Language["Arcane Charges"] = "Arcane Charges"
Language["Holy Power"] = "Holy Power"
Language["Lunar Power"] = "Lunar Power"
Language["Runic Power"] = "Runic Power"
Language["Runes"] = "Runes"
Language["Fuel"] = "Fuel"
Language["Ammo Slot"] = "Ammo Slot"
Language["Zone Colors"] = "Zone Colors"
Language["Sanctuary"] = "Sanctuary"
Language["Arena"] = "Arena"
Language["Hostile"] = "Hostile"
Language["Combat"] = "Combat"
Language["Contested"] = "Contested"
Language["Friendly"] = "Friendly"
Language["Other"] = "Other"
Language["Exalted"] = "Exalted"
Language["Revered"] = "Revered"
Language["Honored"] = "Honored"
Language["Friendly"] = "Friendly"
Language["Neutral"] = "Neutral"
Language["Unfriendly"] = "Unfriendly"
Language["Hostile"] = "Hostile"
Language["Hated"] = "Hated"
Language["Debuff Colors"] = "Debuff Colors"
Language["Curse"] = "Curse"
Language["Disease"] = "Disease"
Language["Magic"] = "Magic"
Language["Poison"] = "Poison"
Language["None"] = "None"
Language["Difficulty Colors"] = "Difficulty Colors"
Language["Very Easy"] = "Very Easy"
Language["Easy"] = "Easy"
Language["Medium"] = "Medium"
Language["Hard"] = "Hard"
Language["Very Hard"] = "Very Hard"
Language["Combo Points Colors"] = "Combo Points Colors"
Language["Combo Point 1"] = "Combo Point 1"
Language["Combo Point 2"] = "Combo Point 2"
Language["Combo Point 3"] = "Combo Point 3"
Language["Combo Point 4"] = "Combo Point 4"
Language["Combo Point 5"] = "Combo Point 5"
Language["Misc Colors"] = "Misc Colors"
Language["Tagged"] = "Tagged"
Language["Disconnected"] = "Disconnected"
Language["Casting"] = "Casting"
Language["Stopped"] = "Stopped"
Language["Interrupted"] = "Interrupted"
Language["Uninterruptible"] = "Uninterruptible"

-- Cooldowns
Language["Cooldown Flash"] = "Cooldown Flash"
Language["Enable Cooldown Flash"] = "Enable Cooldown Flash"
Language["When an ability comes off cooldown|n the icon will flash as an alert"] = "When an ability comes off cooldown|n the icon will flash as an alert"

-- Experience
Language["Experience"] = "Experience"
Language["Enable"] = "Enable"
Language["Enable Experience Module"] = "Enable Experience Module"
Language["Enable the vUI experience module"] = "Enable the vUI experience module"
Language["Styling"] = "Styling"
Language["Display Level"] = "Display Level"
Language["Display your current level in the experience bar"] = "Display your current level in the experience bar"
Language["Display Progress Value"] = "Display Progress Value"
Language["Display your current progress|ninformation in the experience bar"] = "Display your current progress|ninformation in the experience bar"
Language["Display Percent Value"] = "Display Percent Value"
Language["Display your current percent|ninformation in the experience bar"] = "Display your current percent|ninformation in the experience bar"
Language["Display Rested Value"] = "Display Rested Value"
Language["Display your current rested|nvalue on the experience bar"] = "Display your current rested|nvalue on the experience bar"
Language["Enable Tooltip"] = "Enable Tooltip"
Language["Display a tooltip when mousing over the experience bar"] = "Display a tooltip when mousing over the experience bar"
Language["Animate Experience Changes"] = "Animate Experience Changes"
Language["Smoothly animate changes to the experience bar"] = "Smoothly animate changes to the experience bar"
Language["Size"] = "Size"
Language["Bar Width"] = "Bar Width"
Language["Set the width of the experience bar"] = "Set the width of the experience bar"
Language["Bar Height"] = "Bar Height"
Language["Set the height of the experience bar"] = "Set the height of the experience bar"
Language["Experience Color"] = "Experience Color"
Language["Set the color of the experience bar"] = "Set the color of the experience bar"
Language["Rested Color"] = "Rested Color"
Language["Set the color of the rested bar"] = "Set the color of the rested bar"
Language["Visibility"] = "Visibility"
Language["Always Show"] = "Always Show"
Language["Progress Text"] = "Progress Text"
Language["Set when to display the progress information"] = "Set when to display the progress information"
Language["Percent Text"] = "Percent Text"
Language["Set when to display the percent information"] = "Set when to display the percent information"

-- Merchant
Language["Merchant"] = "Merchant"
Language["Auto Repair Equipment"] = "Auto Repair Equipment"
Language["Automatically repair damaged items|nwhen visiting a repair merchant"] = "Automatically repair damaged items|nwhen visiting a repair merchant"
Language["Auto Repair Report"] = "Auto Repair Report"
Language["Report the cost of automatic repairs into the chat"] = "Report the cost of automatic repairs into the chat"
Language["Auto Vendor Greys"] = "Auto Vendor Greys"
Language["Automatically sell all |cFF9D9D9D[Poor]|r quality items"] = "Automatically sell all |cFF9D9D9D[Poor]|r quality items"
Language["Auto Vendor Report"] = "Auto Vendor Report"
Language["Report the profit of automatic vendoring into the chat"] = "Report the profit of automatic vendoring into the chat"

-- Micro Menu
Language["Micro Menu Buttons"] = "Micro Menu Buttons"
Language["Set the visibility of the micro menu buttons"] = "Set the visibility of the micro menu buttons"
Language["Set the opacity of the micro menu buttons|n when visiblity is set to Mouseover"] = "Set the opacity of the micro menu buttons|n when visiblity is set to Mouseover"

-- Profiles
Language["Profiles"] = "Profiles"
Language["Select Profile"] = "Select Profile"
Language["Select a profile to load"] = "Select a profile to load"
Language["Modify"] = "Modify"
Language["Create New Profile"] = "Create New Profile"
Language["Delete Profile"] = "Delete Profile"
Language["Rename Profile"] = "Rename Profile"
Language["Restore"] = "Restore"
Language["Restore To Default"] = "Restore To Default"
Language["Delete"] = "Delete"
Language["Delete Empty Profiles"] = "Delete Empty Profiles"
Language["Delete Unused Profiles"] = "Delete Unused Profiles"
Language["What is a profile?"] = "What is a profile?"
Language["Info"] = "Info"
Language["Current Profile:"] = "Current Profile:"
Language["Created By:"] = "Created By:"
Language["Created On:"] = "Created On:"
Language["Last Modified:"] = "Last Modified:"
Language["Modifications:"] = "Modifications:"
Language["Serving Characters:"] = "Serving Characters:"
Language["Popular Profile:"] = "Popular Profile:"
Language["Stored Profiles:"] = "Stored Profiles:"
Language["Empty Profiles:"] = "Empty Profiles:"
Language["Unused Profiles:"] = "Unused Profiles:"

-- Reputation
Language["Reputation"] = "Reputation"
Language["Enable Reputation Module"] = "Enable Reputation Module"
Language["Enable the vUI reputation module"] = "Enable the vUI reputation module"
Language["Display your current progress|ninformation in the reputation bar"] = "Display your current progress|ninformation in the reputation bar"
Language["Display your current percent|ninformation in the reputation bar"] = "Display your current percent|ninformation in the reputation bar"
Language["Set the width of the reputation bar"] = "Set the width of the reputation bar"
Language["Set the height of the reputation bar"] = "Set the height of the reputation bar"

-- Styles
Language["Styles"] = "Styles"
Language["Select Style"] = "Select Style"
Language["Select a style to load"] = "Select a style to load"
Language["Headers"] = "Headers"
Language["Text Color"] = "Text Color"
Language["Texture Color"] = "Texture Color"
Language["Texture"] = "Texture"
Language["Header Font"] = "Header Font"
Language["Widgets"] = "Widgets"
Language["Color"] = "Color"
Language["Bright Color"] = "Bright Color"
Language["Background Color"] = "Background Color"
Language["Label Color"] = "Label Color"
Language["Font"] = "Font"
Language["What is a style?"] = "What is a style?"
Language["Console"] = "Console"
Language["Reload"] = "Reload"
Language["Reload UI"] = "Reload UI"
Language["Delete Saved Variables"] = "Delete Saved Variables"
Language["Windows"] = "Windows"
Language["Main Color"] = "Main Color"
Language["Buttons"] = "Buttons"
Language["Font Color"] = "Font Color"
Language["Font Sizes"] = "Font Sizes"
Language["General Font Size"] = "General Font Size"
Language["Set the general font size of the UI"] = "Set the general font size of the UI"
Language["Header Font Size"] = "Header Font Size"
Language["Set the font size of header elements in the UI"] = "Set the font size of header elements in the UI"
Language["Title Font Size"] = "Title Font Size"
Language["Set the font size of title elements in the UI"] = "Set the font size of title elements in the UI"

-- Tooltips
Language["Tooltips"] = "Tooltips"
Language["Enable Tooltips Module"] = "Enable Tooltips Module"
Language["Enable the vUI tooltips module"] = "Enable the vUI tooltips module"
Language["Tooltip On Cursor"] = "Tooltip On Cursor"
Language["Anchor the tooltip to the mouse cursor"] = "Anchor the tooltip to the mouse cursor"
Language["Display ID's"] = "Display ID's"
Language["Dislay item and spell ID's in the tooltip"] = "Dislay item and spell ID's in the tooltip"
Language["Set the font of the tooltip text"] = "Set the font of the tooltip text"
Language["Font Size"] = "Font Size"
Language["Set the font size of the tooltip text"] = "Set the font size of the tooltip text"
Language["Font Flags"] = "Font Flags"
Language["Set the font flags of the tooltip text"] = "Set the font flags of the tooltip text"
Language["Information"] = "Information"
Language["Display Realm"] = "Display Realm"
Language["Display character realms"] = "Display character realms"
Language["Display Title"] = "Display Title"
Language["Display character titles"] = "Display character titles"
Language["Hide Tooltips"] = "Hide Tooltips"
Language["Never"] = "Never"
Language["Always"] = "Always"
Language["On Units"] = "On Units"
Language["Set when the tooltip should hide units"] = "Set when the tooltip should hide units"
Language["On Items"] = "On Items"
Language["Set when the tooltip should hide items"] = "Set when the tooltip should hide items"
Language["On Actions"] = "On Actions"
Language["Set when the tooltip should hide actions"] = "Set when the tooltip should hide actions"

-- Update
Language["You can get an updated version of vUI here at https://www.curseforge.com/wow/addons/vui or by using the Twitch desktop app"] = "You can get an updated version of vUI here at https://www.curseforge.com/wow/addons/vui or by using the Twitch desktop app"
Language["Join the Discord community for support and feedback https://discord.gg/wfCVkJe"] = "Join the Discord community for support and feedback https://discord.gg/wfCVkJe"
Language["Update to version |cFF%s%s|r! www.curseforge.com/wow/addons/vui"] = "Update to version |cFF%s%s|r! www.curseforge.com/wow/addons/vui"