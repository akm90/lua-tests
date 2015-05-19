/run if not behindCheck then behindCheck = CreateFrame("Frame")end
/run local frame = behindCheck frame:RegisterEvent("UI_ERROR_MESSAGE") frame:SetScript("OnEvent", function(self, event, ...)if (select(1,...):find("behind") ~= nil) then RunMacro("sub") end end)
/run CastSpellByName("Backstab");
/script UIErrorsFrame:Hide();
/script UIErrorsFrame:Clear();

a:UnregisterEvent("COMBAT_LOG_EVENT_UNFILTERED");