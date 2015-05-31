-------------заморозка мозгов
if IsSpellInRange(GetSpellInfo(27070), "target") == 1
and UnitExists("target")  ==1
and UnitIsVisible("target") ==1
and UnitBuffID("player", 57761) ~= nil
then
return true
end
-------------лед копье
if IsSpellInRange(GetSpellInfo(30455), "target") == 1
and UnitExists("target")  ==1
and UnitIsVisible("target") ==1
then
if UnitDebuffID("target",27088,"player") ~= nil
or UnitDebuffID("target",33395,"player") ~= nil
or UnitDebuffID("target",12494,"player") ~= nil
or UnitBuffID("player", 44545) ~= nil
then return true
end
end
------------глубокая заморозка
if IsSpellInRange(GetSpellInfo(44572), "target") == 1
and UnitExists("target")  ==1
and UnitIsVisible("target") ==1
and GetSpellCooldown("Глубокая заморозка")==0
and IsShiftKeyDown()
then
if UnitDebuffID("target",27088,"player") ~= nil
or UnitDebuffID("target",33395,"player") ~= nil
or UnitDebuffID("target",12494,"player") ~= nil
or UnitBuffID("player", 44545) ~= nil
then return true
end
end
