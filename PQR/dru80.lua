--Dru Cat 80 lvl 335a
50334   Берсерк                 P
48574   Глубокая рана           T
49376   --T--jump
768     --P--cat
48579   Накинуться              T
16857   --T--fire
48572   Полоснуть               T
33357   --P--run
49800   Разорвать               T
48577   Свирепый укус           T
50213   --P--fury
48566   Увечье (кошка)          T
48570   Цапнуть                 T
48443   Восстановление          C
48461   Гнев                    T
53308   Гнев деревьев           T
22812   --P--skin hard
48465   Звездный огонь          T
48469   Знак дикой природы      C
48463   Лунный огонь            T
48441   Омоложение              C
53312   Хватка природы          P
53307   Шипы                    P
49804   Кровоточащая рана       T
52610   Дикий рев               P
48470   Дар дикой природы       P
50464   Покровительство Природы C
53251   Буйный рост             C
-------------------------
50334 Берсерк T
-------------------------
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
-------------------------
--48574--T--wound
-------------------------
if IsSpellInRange(GetSpellInfo(48574), "target") == 1
and UnitExists("target")  ==1
and UnitIsVisible("target") ==1
and UnitCastingInfo("player")==nil
and UnitChannelInfo("player") == nil
and UnitDebuffID("target", 48574, "player") == nil
and UnitPower("player" , 3)>34
then return true end
-------------------------
--49376--T--jump
-------------------------
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
-------------------------
--768--P--cat
-------------------------
if UnitBuffID("player", 768) ~= nil 
then return false
else 
return true end
-------------------------
--48579--T-nakinutsa
-------------------------
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
-------------------------
--16857--T--fire
-------------------------
--DEBUFF MODE
if IsSpellInRange(GetSpellInfo(16857), "target") == 1
and UnitExists("target")  ==1
and UnitIsVisible("target") ==1
and UnitCastingInfo("player")==nil
and UnitChannelInfo("player") == nil
and UnitDebuffID("target",16857,"player") == nil
--and UnitBuffID("player", 5215) == nil
then return true end
-------------------------
--48572--T--polosnut
-------------------------
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
-------------------------
--33357--P--run
-------------------------
if GetSpellCooldown("Порыв")==0
and IsControlKeyDown()
then
return true
end
-------------------------
--49800--T--razorwat
-------------------------
if IsSpellInRange(GetSpellInfo(49800), "target") == 1
and UnitExists("target")  ==1
and UnitIsVisible("target") ==1
and UnitCastingInfo("player")==nil
and UnitChannelInfo("player") == nil
and GetComboPoints("player", "target") > 2
and UnitDebuffID("target", 49800, "player") == nil
and UnitPower("player" , 3)>29
then return true end
-------------------------
--48577--T--ukus
-------------------------
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
-------------------------
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
-------------------------
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
-------------------------
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
-------------------------
--48443-C-vostanowlenie
-------------------------
if UnitBuffID("player", 48443) == nil
and UnitBuffID("player", 48441) ~= nil --омоложение
--and not UnitAffectingCombat("player")
and UnitHealth("player")/UnitHealthMax("player") < 0.25
and GetUnitSpeed("player")==0
then return true end
-------------------------
--48461--T--gnev
-------------------------
if IsSpellInRange(GetSpellInfo(48461), "target") == 1
and UnitExists("target")  ==1
and UnitIsVisible("target") ==1
and GetUnitSpeed("player")==0
and UnitDebuffID("target",48463,"player") ~= nil --лунный дот
--and UnitCastingInfo("player")==nil
--and PQR_IsCastingSpell(5179) ~= true
then
return true
end
-------------------------
--53308--T--gnev tree
-------------------------
if IsSpellInRange(GetSpellInfo(53308), "target") ==1
and UnitExists("target")  ==1
and UnitDebuffID("target",53308,"player") == nil
and UnitIsVisible("target") ==1
and GetUnitSpeed("player")==0
and UnitCastingInfo("player")==nil
and PQR_IsCastingSpell(53308) ~= true
--and not UnitAffectingCombat("player")
then return true end
-------------------------
--22812--P--skin hard
-------------------------
if GetSpellCooldown("Дубовая кожа")==0
and IsAltKeyDown()
then
return true
end
-------------------------
--48465--T--start fire
-------------------------
-- СТАРТ
if IsSpellInRange(GetSpellInfo(48465), "target") == 1
and UnitExists("target")  ==1
and UnitIsVisible("target") ==1
and GetUnitSpeed("player")==0
and not UnitAffectingCombat("player")
-- КОРНИ
or IsSpellInRange(GetSpellInfo(48465), "target") == 1
and UnitExists("target")  ==1
and UnitIsVisible("target") ==1
and GetUnitSpeed("player")==0
and UnitDebuffID("target",53308,"player") ~= nil --kорни
--and UnitCastingInfo("player")==nil
--and PQR_IsCastingSpell(8951) ~= true
then
return true
end
-------------------------
--48469--C--baff dru
-------------------------
local _,_,_,_,_,_,DruBufTimeLeft = UnitBuffID("player", 48469) 
--if (DruBufTimeLeft==nil) 
if UnitBuffID("player", 48469) == nil
or (DruBufTimeLeft - GetTime())<300
and  not UnitAffectingCombat("player")
then
return true
end
-------------------------
--48463--T--moonfire
-------------------------
--DEBUFF MODE
if IsSpellInRange(GetSpellInfo(48463), "target") == 1
and UnitExists("target")  ==1
and UnitIsVisible("target") ==1
and UnitCastingInfo("player")==nil
and UnitChannelInfo("player") == nil
and PQR_IsCastingSpell(8929) ~= true
--and UnitDebuffID("target",5196,"player") ~= nil
and UnitDebuffID("target",48463,"player") == nil
--RUN MODE
or IsSpellInRange(GetSpellInfo(48463), "target") == 1
and UnitExists("target")  ==1
and UnitIsVisible("target") ==1
and UnitCastingInfo("player")==nil
and UnitChannelInfo("player") == nil
and PQR_IsCastingSpell(48463) ~= true
--and UnitDebuffID("target",5196,"player") ~= nil
and GetUnitSpeed("player")>0 
-- EOF
then return true end
-------------------------
--48441--C--omolojenie
-------------------------
if UnitBuffID("player", 48441) == nil
--and not UnitAffectingCombat("player")
and UnitHealth("player")/UnitHealthMax("player") < 0.75
then
return true
end
-------------------------
--53312--P--hvatka prirodi
-------------------------
if GetSpellCooldown("Хватка природы")==0
and IsAltKeyDown()
then
return true
end
-------------------------
--53307--P--shipi
-------------------------
local _,_,_,_,_,_,ThornsTimeLeft = UnitBuffID("player", 53307) 
--if (ThornsTimeLeft==nil) 
if UnitBuffID("player", 53307) == nil
or (ThornsTimeLeft - GetTime())<60
and  not UnitAffectingCombat("player")
then
return true
end
-------------------------
