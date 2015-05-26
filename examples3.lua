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
if spell == "Быстрое исцеление" or spell == "Великое исцеление" or spell == "Воскрешение" or spell == "Молитва исцеления" or spell == "Массовое рассеивание" or spell == "Сковывание нежити" or spell == "Взрыв разума" or spell == "Сожжение маны" or spell == "Связующее исцеление" or spell == "Прикосновение вампира" or spell == "Стрела Хаоса" or spell == "Испепеление" or spell == "Ожог души" or spell == "Блуждающий дух" or spell == "Нестабильное колдовство" or spell == "Стрела Тьмы" or spell == "Создание камня здоровья" or spell == "Порча" or spell == "Призыв охотника Скверны" or spell == "Призыв демона Бездны" or spell == "Призыв суккуба" or spell == "Призыв беса" or spell == "Волна исцеления" or spell == "Цепная молния" or spell == "Цепное исцеление" or spell == "Малая волна исцеления" or spell == "Выброс лавы" or spell == "Свет небес" or spell == "Вспышка Света" or spell == "Экзорцизм" or spell == "Изгнание зла" or spell == "Чародейская вспышка" or spell == "Стрела ледяного огня" or spell == "Ледяная стрела" or spell == "Ожог" or spell == "Огненный шар" or spell == "Огненная глыба" or spell == "Огненный столб" or spell == "Превращение" or spell == "Сглаз" or spell == "Страх" or spell == "Целительное прикосновение" or spell == "Восстановление" or spell == "Звездный огонь" or spell == "Смерч" or spell == "Возрождение" or spell == "Воскрешение питомца" or spell == "Гнев" or spell == "Молитва исцеления" or spell == "Молитва исцеления" or spell == "Молитва исцеления" or spell == "Молитва исцеления" or spell == "Молитва исцеления" or spell == "Молитва исцеления" then 
----------------    
function Kick(self, elapsed) 
local spell, _, _, _, _, endTime, _, _, interrupt = UnitCastingInfo("target") 
local enabled = GetSpellCooldown("Пронизывающий ветер()") 
local isEnemy = UnitIsEnemy("player","target") 
if isEnemy == 1 then 
local inRange = IsSpellInRange("Пронизывающий ветер()", "target") 
if spell == "Превращение" or "Ледяная стрела" or "Выброс лавы" or "Стрела хаоса" or "Огненный шар" or "Смерч" or "Сглаз" or "Прикосновение вампира" or "Звездный огонь" or "Гнев деревьев" or "Цепная молния" then 
if interrupt == false and enabled == 0 and inRange == 1 then 
local finish = endTime/1000 - GetTime() 
if finish <= 1.3 then 
RunMacro("antiot") 
end 
end 
end 
end 
end 
CreateFrame("Frame", "KickFrame") 
KickFrame:SetScript("OnUpdate", Kick)
-----------------
