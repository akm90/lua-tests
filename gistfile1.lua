/run if not behindCheck then behindCheck = CreateFrame("Frame")end
/run local frame = behindCheck frame:RegisterEvent("UI_ERROR_MESSAGE") frame:SetScript("OnEvent", function(self, event, ...)if (select(1,...):find("behind") ~= nil) then RunMacro("sub") end end)
/run CastSpellByName("Backstab");
/script UIErrorsFrame:Hide();
/script UIErrorsFrame:Clear();

a:UnregisterEvent("COMBAT_LOG_EVENT_UNFILTERED");

/run if UnitHealth(«player»)/UnitHealthMax(«player»)<0.40 and GetSpellCooldown("Дубовая кожа")==0 then CastSpellByName("Дубовая кожа") end
/run vSR=0 b={UnitBuff("player","Дикий рев")}; if b[7]~=nil then vSR=b[7]-GetTime() end;
/run vTrauma=0 i=1 while(i< =40)do a={UnitDebuff("target",i)} if a[8]~="player" and (a[1]=="Увечье (кошка)" or a[1]=="Увечье (медведь)" or a[1]=="Trauma") then vTrauma=1 break else i=i+1 end end;
/run vRip=0; vRake=0; vMangle=0; for i=1,40 do a={UnitDebuff("target",i)} if a[8]=="player" then d=a[7]-GetTime(); if a[1]=="Разорвать" then vRip=d elseif a[1]=="Глубокая рана" then vRake=d elseif a[1]=="Увечье (кошка)" then vMangle=d end end end
/run c=CastSpellByName; p=UnitPower("player"); if GetSpellCooldown("Тигриное неистовство")==0 and not UnitBuff("player","Берсерк") and p<30 then if GetComboPoints("player")>4 then if vRip==0 or 60+p+vRip*10<100 then c("Тигриное неистовство") end else c("Тигриное неистовство") end end
/run sre=({GetSpellInfo("Дикий рев")})[4]; if GetComboPoints("player")>0 and (vSR==0 or vSR-vRip<1 or (vSR< =3 and vRip>9)) and UnitPower(«player»)>=sre then CastSpellByName(«Дикий рев») end
/run c=CastSpellByName; p=UnitPower(«player»); if GetComboPoints(«player»)>4 then if vRip==0 then if p>({GetSpellInfo(«Разорвать»)})[4] then c(«Разорвать») end else d=vRip*10-5; me=({GetSpellInfo(«Увечье (кошка)»)})[4]; re=({GetSpellInfo(«Глубокая рана»)})[4]; se=({GetSpellInfo(«Полоснуть»)})[4]; if d+p>=100 then if p>=me and vTrauma==0 and vMangle<3 then c("Увечье (кошка)") elseif p>=re and vRake<3 then c("Глубокая рана") elseif p>=se then c(«Полоснуть») end end end end
/run if not UnitDebuff(«target»,»Волшебный огонь») and not UnitDebuff(«target»,»Волшебный огонь (зверь)») and GetSpellCooldown(«Волшебный огонь (зверь)»)==0 then CastSpellByName(«Волшебный огонь (зверь)») end
/run cp=GetComboPoints(«player»); p=UnitPower(«player»); if vTrauma==0 and vMangle< =vRake and not (((vSR==0 or vSR-vRip<0.5) and cp>0 and p<25) or cp>4) then me=({GetSpellInfo(«Увечье (кошка)»)})[4]; if vMangle<3 and p>=me then CastSpellByName(«Увечье (кошка)») end end
/run cp=GetComboPoints(«player»); p=UnitPower(«player»); if not (((vSR==0 or vSR-vRip<0.5) and cp>0 and p<25) or cp>4) and vRake=re then CastSpellByName(«Глубокая рана») end end
/run cp=GetComboPoints(«player»); p=UnitPower(«player»); se=({GetSpellInfo(«Полоснуть»)})[4]; if not (((vSR==0 or vSR-vRip<0.5) and cp>0 and p<25) or cp>4) then if p>se then CastSpellByName(«Полоснуть») end end
/run StaticPopup_Hide(«MACRO_ACTION_FORBIDDEN»);

#showtooltip Звериная атака - кошка
-- VARIABLES
/run ucf=UnitCastingInfo cst=CastSpellByName cd=GetSpellCooldown buf=UnitBuff dbuf=UnitDebuff p="player" t="target" range=IsSpellInRange spd=GetUnitSpeed hp=UnitHealth("player")/UnitHealthMax("player") mana=UnitPower("player")/UnitPowerMax("player")
-- ATK
/run if UnitAffectingCombat(p)==1 and range("Цапнуть",t)==1 and cd("Тигриное неистовство")==0 then cst("Тигриное неистовство") end
/run if range("Звериная атака - кошка",t)==1 and cd("Звериная атака - кошка")==0 then cst("Звериная атака - кошка") end;
/run if not behindCheck then behindCheck = CreateFrame("Frame")end
/run local frame = behindCheck frame:RegisterEvent("UI_ERROR_MESSAGE") frame:SetScript("OnEvent", function(self, event, ...)if (select(1,...):find("позади") ~= nil) then cst("Цапнуть") end end)
/run cst("Полоснуть");
--/script UIErrorsFrame:Clear();
-- END
