#showtooltip Звериная атака - кошка
/run if IsSpellInRange("Разорвать","target")==1 and GetComboPoints("player")>2  and not UnitDebuff("target","Разорвать") then CastSpellByName("Разорвать") end
/run if IsSpellInRange("Звериная атака - кошка","target")==1 and GetSpellCooldown("Звериная атака - кошка")==0 then CastSpellByName("Звериная атака - кошка") end
/run if IsSpellInRange("Цапнуть","target")==1 and GetSpellCooldown("Тигриное неистовство")==0 then CastSpellByName("Тигриное неистовство") end
/run if IsSpellInRange("Глубокая рана")==1 and not UnitDebuff("target","Глубокая рана") then CastSpellByName("Глубокая рана") end
/run if IsSpellInRange("Цапнуть")==1 then CastSpellByName("Цапнуть") end
/run if IsSpellInRange("Волшебный огонь (зверь)")==1 and not UnitBuff("player","Крадущийся зверь") then CastSpellByName("Волшебный огонь (зверь)") end
-- END
