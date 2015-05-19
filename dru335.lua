#showtooltip Лунный огонь
/script UIErrorsFrame:Clear();
-- VARIABLES
/run cst=CastSpellByName cd=GetSpellCooldown buf=UnitBuff dbuf=UnitDebuff p="player" t="target" range=IsSpellInRange spd=GetUnitSpeed hp=UnitHealth("player")/UnitHealthMax("player") mana=UnitPower("player")/UnitPowerMax("player")
/script UIErrorsFrame:Clear();
-- BUFF
/run if not UnitBuff(p,"Знак Дикой Природы") then CastSpellByName("Знак Дикой Природы") end;
/script UIErrorsFrame:Clear();
-- MAGIC ATK
/run if UnitCastingInfo(p)==nill and range("Гнев деревьев",t)==1 and not dbuf(t,"Гнев деревьев") and spd(t)==0 then CastSpellByName("Гнев деревьев") end;
/script UIErrorsFrame:Clear();
/run if UnitCastingInfo(p)==nill and range("Звездный огонь",t)==1 and dbuf(t,"Гнев деревьев") then CastSpellByName("Звездный огонь") end;
/script UIErrorsFrame:Clear();
/run if UnitCastingInfo(p)==nill and range("Лунный огонь",t)==1 and not dbuf(t,"Лунный огонь") and not dbuf(t,"Гнев деревьев") or spd(p)>0 and not dbuf(t,"Гнев деревьев") then CastSpellByName("Лунный огонь") end;
/script UIErrorsFrame:Clear();
/run if UnitCastingInfo(p)==nill and range("Волшебный огонь",t)==1 and not dbuf(t,"Волшебный огонь")==0 then CastSpellByName("Волшебный огонь") end;
/script UIErrorsFrame:Clear();
/run if UnitCastingInfo(p)==nill and range("Гнев",t)==1 and spd(p)==0 then CastSpellByName("Гнев") end;
/script UIErrorsFrame:Clear();
-- END
