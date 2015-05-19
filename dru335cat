#showtooltip Звериная атака - кошка
/script UIErrorsFrame:Clear();
-- VARIABLES
/run ucf=UnitCastingInfo cst=CastSpellByName cd=GetSpellCooldown buf=UnitBuff dbuf=UnitDebuff p="player" t="target" range=IsSpellInRange spd=GetUnitSpeed hp=UnitHealth("player")/UnitHealthMax("player") mana=UnitPower("player")/UnitPowerMax("player")
/script UIErrorsFrame:Clear();
-- ATK
/run if range("Полоснуть",t)==1 and AmIBehind==true then cst("Полоснуть") end
/script UIErrorsFrame:Clear();
/run if UnitAffectingCombat(1)==1 and range("Цапнуть",t)==1 and cd("Тигриное неистовство")==0 then cst("Тигриное неистовство") end
/script UIErrorsFrame:Clear();
/run if range("Звериная атака - кошка",t)==1 and cd("Звериная атака - кошка")==0 then cst("Звериная атака - кошка") end
/script UIErrorsFrame:Clear();
/run if range("Разорвать")==1 and GetComboPoints(p)>2  and not dbuf(t,"Разорвать") then cst("Разорвать") end
/script UIErrorsFrame:Clear();
/run if range("Глубокая рана")==1 and not dbuf(t,"Глубокая рана") then cst("Глубокая рана") end
/script UIErrorsFrame:Clear();
/run if range("Цапнуть")==1 and AmIBehind==false then cst("Цапнуть") end
/script UIErrorsFrame:Clear();
/run if range("Волшебный огонь (зверь)")==1 and AmIBehind==false and not UnitBuff("player","Крадущийся зверь") then cst("Волшебный огонь (зверь)") end
/script UIErrorsFrame:Clear();
-- END
