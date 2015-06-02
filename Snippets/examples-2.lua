/console synchronizemacros 0
#init
/run p = 'player'; t = 'target'; f = 'focus'; uci = UnitCastingInfo; ub = UnitBuff; ud = UnitDebuff; cd = GetSpellCooldown; us = IsUsableSpell; gn = GetSpellInfo; cbn = CastSpellByName; tv = 0; ct = GetTime(); speed = GetUnitSpeed(p); haste=10000/select(7,gn(2006)); ir = IsSpellInRange; up = UnitPower; ue = UnitExists;

#Spell Checks
/run if lastSF==nil then lastSF=0 end
/run if lastImmo==nil then lastImmo=0 end
/run if lastImmoFoc==nil then lastImmoFoc=0 end
/run if lastIncF==nil then lastIncF=0 end
/run if lastIncT==nil then lastIncT=0 end
/run if lastBoD==nil then lastBoD=0 end
/run if lastBoA==nil then lastBoA=0 end
/run if lastBoH==nil then lastBoH=0 end

#Life Tap
/run if UnitHealth(p)>20000 and ue(t) and uci(p)==nil and (up(p) < 13500) then cbn('Life Tap') end
#Healthstone--Enter your own macro.
/run if UnitHealth(p)/UnitHealthMax(p)<=0.5 then RunMacroText('/use Healthstone') end

#Bane of Doom/Agony/Havoc
/run local n,_,_,c,_,_,castt = gn(603); if (lastBoD+5)<=ct and ue(t) and UnitHealth(t)>49999 then if ir(n,t)==1 and cd(n) == 0 and us(n) and uci(p)==nil and up(p) >= c and (not ud(t,n,'',p) or (ud(t,n,'',p) and select(7,ud(t,n,'',p)) - ct - castt/1000 < 1.5 / haste)) then cbn(n) lastBoD=ct end end
/run local n,_,_,c,_,_,castt = gn(980); if (lastBoA+5)<=ct and ue(t) and UnitHealth(t)<50000 then if ir(n,t)==1 and cd(n) == 0 and us(n) and uci(p)==nil and up(p) >= c and (not ud(t,n,'',p) or (ud(t,n,'',p) and select(7,ud(t,n,'',p)) - ct - castt/1000 < 1.5 / haste)) then cbn(n) lastBoA=ct end end

#Corruption
/run if UnitHealth(t)>9000 and uci(p)==nil then local i=1 while(i<=40)do local a={ud(t,i)}; if a[1]=="Corruption" and a[8]==p and a[7]-ct>0 then break else i=i+1 end end; if i>40 and cd("Corruption")==0 then cbn('Corruption') end end

#Curse of the Elements
/run if UnitHealth(t)>100000 and uci(p)==nil then local i=1 while(i<=40)do local a={ud(t,i)}; if a[1]=="Curse of the Elements" and a[8]==p and a[7]-ct>0 then break else i=i+1 end end; if i>40 and cd("Curse of the Elements")==0 then cbn('Curse of the Elements') end end

#Demon Soul
/run local n,_,_,c,_,_,castt = gn(77801); if ub(p,"Improved Soul Fire")==nil then break elseif ue(t) and cd(n) == 0 and us(n) and up(p) >= c and uci(p)==nil then cbn(n) end

#Life Blood
/run local n,_,_,c,_,_,castt = gn(74497); if ub(p,"Improved Soul Fire")==nil then break elseif cd(n) == 0 and us(n) and uci(p)==nil then cbn(n) end

#Incinerate
/run local n,_,_,c,_,_,castt = gn(29722); if ue(t) and ir(n,t)==1 and speed == 0 and cd(n) == 0 and us(n) and up(p) >= c and uci(p)==nil then cbn(n) end

#Fel Flame
/run local n,_,_,c,_,_,castt = gn(77799); if ue(t) and ir(n,t)==1 and cd(n) == 0 and us(n) and up(p) >= c and uci(p)==nil then cbn(n) lastImmo=ct end

/run if UnitIsFriend(p,t)==1 or UnitIsEnemy(p,t)~=1 then TargetLastEnemy() end
/script UIErrorsFrame:Clear()
