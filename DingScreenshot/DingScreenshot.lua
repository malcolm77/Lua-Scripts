local parentframe = CreateFrame("FRAME", "dingscreenshot", UIParent)

function ScreenshotEvent()
	RequestTimePlayed()
	C_Timer.After(2, function() Screenshot() end)
	return nil
end


parentframe:RegisterEvent("PLAYER_LEVEL_UP")
parentframe:RegisterEvent("ACHIEVEMENT_EARNED")
parentframe:SetScript("OnEvent", ScreenshotEvent)
