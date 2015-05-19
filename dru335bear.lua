#showtooltip Трепка
-- VARIABLES
/script UIErrorsFrame:Clear();
/run cst=CastSpellByName cd=GetSpellCooldown buf=UnitBuff dbuf=UnitDebuff mana=UnitPower("player")/UnitPowerMax("player") p="player" t="target" range=IsSpellInRange hp=UnitHealth("player")/UnitHealthMax("player")
/script UIErrorsFrame:Clear();
-- ATK
/run if range("Оглушить",t)==1 then cst("Оглушить") end;
/script UIErrorsFrame:Clear();
/run if range("Трепка")==1 then cst("Трепка") end;
/script UIErrorsFrame:Clear();
/run if range("Размах")==1 then cst("Размах") end;
/script UIErrorsFrame:Clear();
/run if cd("Исступление")==1 and UnitPower(p,SPELL_POWER_RAGE)<10 then cst("Исступление") end;
/script UIErrorsFrame:Clear();
/run if range("Волшебный огонь (зверь)")==1 and not UnitBuff("player","Крадущийся зверь") then cst("Волшебный огонь (зверь)") end;
/script UIErrorsFrame:Clear();
-- END
