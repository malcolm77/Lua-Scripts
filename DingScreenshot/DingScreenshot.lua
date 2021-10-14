local parentframe = CreateFrame("FRAME", "dingscreenshot", UIParent)

local function WaitEvent()
	C_Timer.After(2, function() ScreenshotEvent() end)
end

function ScreenshotEvent()
	RequestTimePlayed()
	C_Timer.After(2, function() Screenshot() end)
	return nil
end


parentframe:RegisterEvent("PLAYER_LEVEL_UP")
--parentframe:RegisterEvent("PLAYER_ENTERING_WORLD")
parentframe:SetScript("OnEvent", ScreenshotEvent)
