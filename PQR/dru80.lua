---Dru Cat 80 lvl 335a
--50334--T--bers
if GetSpellCooldown("Берсерк")==0
-- and IsShiftKeyDown() ==true
----глубокая рана***
--and UnitDebuffID("target", 48574, "player") ~= nil
----разорвать***
--and UnitDebuffID("target", 49800, "player") ~= nil
and UnitPower("player" , 3)>16
and (CheckInteractDistance("target",3))
and  UnitBuffID("player", 50213) == nil --tiger fury
and IsShiftKeyDown()
then
return true
end
---------------------
--48574--T--wound
if IsSpellInRange(GetSpellInfo(48574), "target") == 1
and UnitExists("target")  ==1
and UnitIsVisible("target") ==1
and UnitCastingInfo("player")==nil
and UnitChannelInfo("player") == nil
and UnitDebuffID("target", 48574, "player") == nil
and UnitPower("player" , 3)>34
then return true end
------------------------
--49376--T--jump
--DEBUFF MODE
if IsSpellInRange(GetSpellInfo(49376), "target") == 1
and UnitExists("target")  ==1
and UnitIsVisible("target") ==1
and UnitCastingInfo("player")==nil
and UnitChannelInfo("player") == nil
--and UnitDebuffID("target",16857,"player") == nil
--and UnitBuffID("player", 5215) == nil
and UnitPower("player" , 3)>9
then return true end
---------------------------
--768--P--cat
if UnitBuffID("player", 768) ~= nil 
then return false
else 
return true end
---------------------------
--48579--T-nakinutsa
if IsSpellInRange(GetSpellInfo(48579), "target") == 1
and UnitExists("target")  ==1
and UnitIsVisible("target") ==1
and UnitCastingInfo("player")==nil
and UnitChannelInfo("player") == nil
and GetComboPoints("player", "target") < 5
--NOCOMBAT
--and not UnitAffectingCombat("player")
--INVIZ
and UnitBuffID("player", 5215) ~= nil
and not PQR_NotBehindTarget() 
and UnitPower("player" , 3)>59
then return true end
----------------------------
--16857--T--fire
--DEBUFF MODE
if IsSpellInRange(GetSpellInfo(16857), "target") == 1
and UnitExists("target")  ==1
and UnitIsVisible("target") ==1
and UnitCastingInfo("player")==nil
and UnitChannelInfo("player") == nil
and UnitDebuffID("target",16857,"player") == nil
--and UnitBuffID("player", 5215) == nil
then return true end
------------------------------
--48572--T--polosnut
if IsSpellInRange(GetSpellInfo(48572), "target") == 1
and UnitExists("target")  ==1
and UnitIsVisible("target") ==1
and UnitCastingInfo("player")==nil
and UnitChannelInfo("player") == nil
and UnitPower("player" , 3)>60
and GetComboPoints("player", "target") < 5
and UnitDebuffID("target", 49800, "player") ~= nil ----razorvat***
and UnitDebuffID("target", 48574, "player") ~= nil ---глубокая рана***
--NO INVIZ
and UnitBuffID("player", 5215) == nil
and not PQR_NotBehindTarget() 
and UnitPower("player" , 3)>59
then return true end
--------------------------
--33357--P--run
if GetSpellCooldown("Порыв")==0
and IsControlKeyDown()
then
return true
end
-----------------------
--49800--T--razorwat
if IsSpellInRange(GetSpellInfo(49800), "target") == 1
and UnitExists("target")  ==1
and UnitIsVisible("target") ==1
and UnitCastingInfo("player")==nil
and UnitChannelInfo("player") == nil
and GetComboPoints("player", "target") > 2
and UnitDebuffID("target", 49800, "player") == nil
and UnitPower("player" , 3)>29
then return true end
-----------------
--48577--T--ukus
if IsSpellInRange(GetSpellInfo(48577), "target") == 1
and UnitExists("target")  ==1
and UnitIsVisible("target") ==1
and UnitCastingInfo("player")==nil
and UnitChannelInfo("player") == nil
and GetComboPoints("player", "target") > 2
and UnitDebuffID("target", 49800, "player") ~= nil ----разорвать***
and UnitPower("player" , 3)>34
then return true end
-------------------------
--50213--P--fury
if GetSpellCooldown("Тигриное неистовство")==0
-- and IsShiftKeyDown() ==true
-- and UnitDebuffID("target", 48574, "player") ~= nil ----глубокая рана***
-- and UnitDebuffID("target", 49800, "player") ~= nil ----разорвать***
and UnitPower("player" , 3)<33
and (CheckInteractDistance("target",3))
and  UnitBuffID("player", 50334) == nil --bers
then
return true
end
--------------------------
--48566--T--uvechye
if IsSpellInRange(GetSpellInfo(48566), "target") == 1
and UnitExists("target")  ==1
and UnitIsVisible("target") ==1
and UnitCastingInfo("player")==nil
and UnitChannelInfo("player") == nil
and GetComboPoints("player", "target") < 5
and UnitDebuffID("target", 48574, "player") ~= nil ----глубокая рана***
and UnitPower("player" , 3)>33
then return true end
-------------------------
--48570--T--Capnut
if IsSpellInRange(GetSpellInfo(48570), "target") == 1
and UnitExists("target")  ==1
and UnitIsVisible("target") ==1
and UnitCastingInfo("player")==nil
and UnitChannelInfo("player") == nil
and GetComboPoints("player", "target") < 5
----глубокая рана***
and UnitDebuffID("target", 48574, "player") ~= nil
and UnitPower("player" , 3)>34
then return true end
------------------------
