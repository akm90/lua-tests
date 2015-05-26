unction Shield(self, elapsed)   
if UnitBuff("target", "Гнев карателя") then                         
                         local enabled = GetSpellCooldown("Мощный удар щитом")                         
                         if enabled == 0 then                         
                          RunMacro("Макрос")                       
                         end                         
end                             
end                         
CreateFrame("Frame", "ShieldFrame")   
ShieldFrame:SetScript("OnUpdate", Shield)
---------------
function Destroy(self, elapsed) 
local enabled = GetSpellCooldown("Удар героя(Уровень 13)") 
local rage = UnitPower("player") 
local inRange = IsSpellInRange("Удар героя(Уровень 13)", "target") 
if enabled == 0 and inRange == 1 and rage >= 79 then 
RunMacroText("/cast Удар героя(Уровень 13)") 
end 
end 
CreateFrame("Frame", "DestroyFrame") 
DestroyFrame:SetScript("OnUpdate", Destroy)

Раги >= 79 скрипт включается, меньше не включается
---------------------------------
Ребят, можно ли сделать скрипт на вара, чтобы скил Мощный удар щитом, диспелил с цели определенный баф. 3.3.5 
Вот так сделай 
Код
function Shield(self, elapsed)   
if UnitBuff("target", "Гнев карателя") then                         
                         local enabled = GetSpellCooldown("Мощный удар щитом")                         
                         if enabled == 0 then                         
                          RunMacro("Макрос")                       
                         end                         
end                             
end                         
CreateFrame("Frame", "ShieldFrame")   
ShieldFrame:SetScript("OnUpdate", Shield)
------------------------------
