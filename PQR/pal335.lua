53385 Божественная буря
48806 Молот гнева
35395 Удар воина Света
20066 Покаяние
53408 Правосудие мудрости
20271 Правосудие света
53407 Правосудие справедливости
48934 Великое благословение могущества
31884 Гнев карателя
10308 Молот правосудия
21084 Печать праведности
20166 Печать мудрости
48801 Экзорцизм
48819 Освящение
48785 Вспышка Света
4987 Очищение
1152 Омовение
10326 Изгнание зла
48782 Свет небес
20165 Печать Света
53601 Священный щит
59578 Экзорцизм
75456 trinq
54428 Святая клятва
71187 грозност
1152 Омовение
498 Божественная защита
1022 Длань защиты
633 Возложение рук
--------------
21084 Печать праведности
--------------
local _,_,_,_,_,_,SealPTimeLeft = UnitBuffID("player", 21084) 
if UnitBuffID("player", 21084) == nil
or (SealPTimeLeft - GetTime())<300
and  not UnitAffectingCombat("player")
then
return true
end
-------------------
53408 Правосудие мудрости
if IsSpellInRange(GetSpellInfo(53408), "target") == 1
and UnitExists("target")  ==1
and UnitIsVisible("target") ==1
and UnitDebuffID("target", 53408, "player") == nil
and GetSpellCooldown("Правосудие мудрости")==0
and UnitPower("player")>200
then 
return true 
end
-------------------
53385 Божественная буря
-------------------
if CheckInteractDistance("target", 3)
and UnitExists("target")  ==1
and UnitIsVisible("target") ==1
and GetSpellCooldown("Божественная буря")==0
and UnitPower("player")>400
then 
return true 
end
-------------------
35395 Удар воина Света
-------------------
if IsSpellInRange(GetSpellInfo(35395), "target") == 1
and UnitExists("target")  ==1
and UnitIsVisible("target") ==1
and GetSpellCooldown("Удар воина Света")==0
and UnitPower("player")>200
then 
return true 
end
-------------------
48801 Экзорцизм
-------------------
if IsSpellInRange(GetSpellInfo(48801), "target") == 1
and UnitExists("target")  ==1
and UnitIsVisible("target") ==1
and GetSpellCooldown("Экзорцизм")==0
and UnitPower("player")>300
and UnitBuffID("player", 59578) ~= nil
then 
return true 
end
-------------------
48819 Освящение
-------------------
if CheckInteractDistance("target", 3)
and UnitExists("target")  ==1
and UnitIsVisible("target") ==1
and GetSpellCooldown("Освящение")==0
and UnitPower("player")>2000
then 
return true 
end
-------------------
48806 Молот гнева
-------------------
if IsSpellInRange(GetSpellInfo(48806), "target") == 1
and UnitExists("target")  ==1
and UnitIsVisible("target") ==1
and GetSpellCooldown("Молот гнева")==0
and UnitPower("player")>500
and UnitHealth("target")/UnitHealthMax("target")<0.2
then 
return true 
end
-------------------
31884 Гнев карателя
-------------------
local _,_,_,GrCount= UnitBuffID("player", 71187) 
if CheckInteractDistance("target", 3)
and UnitExists("target")  ==1
and UnitIsVisible("target") ==1
and UnitBuffID("player", 75456) ~= nil
and (GrCount)==5
and GetSpellCooldown("Гнев карателя")==0
--and GetSpellCooldown("Божественная буря")==0
--and IsShiftKeyDown()
then
return true
end
-------------------
54428 Святая клятва
-------------------
if UnitPower("player")<2000
and UnitAffectingCombat("player")
then
return true
end
-------------------
Cleanse solo/party/raid
-------------------
#CLEANSE RAID/PARTY [OPTIONAL]
/run 
local w=nil; local m=0; 
for i=vNPS,vNPE do local tt="player";
if i>0 then tt=vGroup..i end;
if UnitExists(tt) and UnitInRange(tt)==1 and UnitIsDeadOrGhost(tt)~=1 
then for j=1,40 do local d={UnitDebuff(tt,j)}; 
if (d[5]=="Magic" or d[5]=="Poison" or d[5]=="Disease") 
and d[7]>m then w=tt; m=d[7] 
end end end end; 
if w~=nil then RunMacroText("/cast [@"..w.."] Cleanse") 
end;
-------------------
1152 Омовение
-------------------
for i=1,40 do local DType= {UnitDebuff("player",i)}
if DType[5] == "Poison"
or DType[5] == "Disease"
then return true
end
end
-------------------
633 Возложение рук
-------------------
if GetSpellCooldown("Возложение рук")==0
and UnitAffectingCombat("player")
and not UnitDebuffID("player",25771)
and UnitHealth("player")/UnitHealthMax("player")<0.1
then return true
end
----------------
1022 Длань защиты
-------------------
if GetSpellCooldown("Длань защиты")==0
and UnitAffectingCombat("player")
and not UnitDebuffID("player",25771)
and UnitHealth("player")/UnitHealthMax("player")<0.5
then return true
end
----------------
498 Божественная защита
-------------------
if GetSpellCooldown("Божественная защита")==0
and UnitAffectingCombat("player")
and not UnitDebuffID("player",25771)
and UnitHealth("player")/UnitHealthMax("player")<0.5
then return true
end
-----------------









