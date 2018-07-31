-- https://www.mmo-champion.com/threads/1231654-Loss-of-Control-Interface-UI

-- Move around the entire frame
LossOfControlFrame:ClearAllPoints()
LossOfControlFrame:SetPoint("CENTER",UIParent,"CENTER",75,200)

local effectText = select(5,LossOfControlFrame:GetRegions());
local background = select(1,LossOfControlFrame:GetRegions());
local icon = select(4,LossOfControlFrame:GetRegions());
local topRedLine = select(2,LossOfControlFrame:GetRegions());
local bottomRedLine = select(3,LossOfControlFrame:GetRegions());
local timeLeft = LossOfControlFrame.TimeLeft;


-- Move the icon around (if you want to center the frame based on the icon and not the countdown and red border)
icon:ClearAllPoints();  --select(4,LossOfControlFrame:GetRegions()):ClearAllPoints()
icon:SetPoint("CENTER",UIParent,"CENTER",0,200);  -- select(4,LossOfControlFrame:GetRegions()):SetPoint("CENTER",UIParent,"CENTER",0,200)


-- Hide the background shadow
background:SetAlpha(0)  --select(1,LossOfControlFrame:GetRegions()):SetAlpha(0)


-- Hide the red frames
-- select(2,LossOfControlFrame:GetRegions()):SetAlpha(0)
-- select(3,LossOfControlFrame:GetRegions()):SetAlpha(0)
topRedLine:SetAlpha(0);
bottomRedLine:SetAlpha(0);


-- Moves the effect text to centered under the icon
-- select(5,LossOfControlFrame:GetRegions()):ClearAllPoints()
-- select(5,LossOfControlFrame:GetRegions()):SetPoint("TOP",select(4,LossOfControlFrame:GetRegions()),"BOTTOM")
effectText:ClearAllPoints();
effectText:SetPoint("TOP", icon, "BOTTOM");
effectText:SetScale(0.8);

-- Moves the duration text to be centered under the icon
timeLeft:ClearAllPoints();
timeLeft:SetAlpha(0);
-- timeLeft:SetPoint("TOP", effectText, "BOTTOM");
-- timeLeft:SetScale(0.8);
