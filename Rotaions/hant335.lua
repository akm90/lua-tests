#showtooltip Команда "Взять!"
/use !Чародейский выстрел
#/use !Команда "Взять!"
/use !Звериный гнев
/use !Убийственный выстрел
/use !Сконцентрированный огонь
/use 10
/use 13
/use Выстрел кобры
/use [combat] !Рвение
/use !Автоматическая стрельба
/petattack
---------------------------------------------------------
/run if GetSpellCooldown("Рвение")==0 and IsUsableSpell("Рвение") and UnitPower("player")<35 then CastSpellByName("Рвение") end;
/run if GetSpellCooldown("Сконцентрированный огонь")==0 and IsUsableSpell("Сконцентрированный огонь") then CastSpellByName("Сконцентрированный огонь") end;
/run if GetSpellCooldown("Звериный гнев")==0 and IsUsableSpell("Звериный гнев") then CastSpellByName("Звериный гнев") end;
----------------------------------------------------------
#showtooltip Чародейский выстрел
/run if not UnitDebuff("target","Укус змеи","","player") then CastSpellByName("Укус змеи") elseif UnitDebuff("target","Метка охотника","","player") then CastSpellByName("Метка охотника") end;
/use Чародейский выстрел
###EOF###
/script CombatLogClearEntries();
/run UIErrorsFrame:Clear();
/run StaticPopup_Hide("MACRO_ACTION_FORBIDDEN");
