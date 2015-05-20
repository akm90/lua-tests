#showtooltip Ледяная стрела
/run UIErrorsFrame:Clear();
-- VARIABLES
/run ucf=UnitCastingInfo cst=CastSpellByName cd=GetSpellCooldown buf=UnitBuff dbuf=UnitDebuff p="player" t="target" range=IsSpellInRange spd=GetUnitSpeed hp=UnitHealth("player")/UnitHealthMax("player") mana=UnitPower("player")/UnitPowerMax("player")
/script UIErrorsFrame:Clear();
-- BUFF
/run if not buf(p,"Морозный доспех") then cst("Морозный доспех") end
/script UIErrorsFrame:Clear();
/run if not buf(p,"Чародейский интеллект") then cst("Чародейский интеллект") end
/script UIErrorsFrame:Clear();
-- FREEZE
/run if fbCD==nil then fbCD=0 end
/run if range("Ледяная стрела") and fbCD==0 and not dbuf(t,"Ледяная стрела") and GetUnitSpeed("player")==0 then cst("Ледяная стрела") end
/run if (({ucf(p)})[1]=="Ледяная стрела") then fbCD=1 end
/run if not (({ucf(p)})[1]=="Ледяная стрела") then fbCD=0 end
/script UIErrorsFrame:Clear();
-- ATK
/run if range("Огненный взрыв")==1 and cd("Огненный взрыв")==0 then cst("Огненный взрыв") end
/script UIErrorsFrame:Clear();
/run if range("Огненный шар")==1 and GetUnitSpeed("player")==0 then cst("Огненный шар") end
/script UIErrorsFrame:Clear();
-- END
