-- https://www.mmo-champion.com/threads/1231654-Loss-of-Control-Interface-UI

-- Move around the entire frame
LossOfControlFrame:ClearAllPoints() LossOfControlFrame:SetPoint("CENTER",UIParent,"CENTER",75,100)

-- Move the icon around (if you want to center the frame based on the icon and not the countdown and red border)
select(4,LossOfControlFrame:GetRegions()):ClearAllPoints ()
select(4,LossOfControlFrame:GetRegions()):SetPoint("CENTER",UIParent,"CENTER",0,200)


-- Hide the background shadow
select(1,LossOfControlFrame:GetRegions()):SetAlpha(0)


-- Hide the red frames
select(2,LossOfControlFrame:GetRegions()):SetAlpha(0)
select(3,LossOfControlFrame:GetRegions()):SetAlpha(0)


-- Moves the effect text to centered under the icon
select(5,LossOfControlFrame:GetRegions()):ClearAllPoints()
select(5,LossOfControlFrame:GetRegions()):SetPoint("TOP",select(4,LossOfControlFrame:GetRegions()),"BOTTOM")

-- Moves the duration text to be centered under the icon
LossOfControlFrame.TimeLeft:SetAlpha(0)
LossOfControlFrame.TimeLeft:SetPoint("TOP",select(4,LossOfControlFrame:GetRegions()),"BOTTOM")

