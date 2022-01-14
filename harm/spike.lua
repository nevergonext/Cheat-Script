[ENABLE]
{$lua}
function fbparam()
     if readInteger("[[[[DarkSoulsIII.exe+4768E78]+40]+28]+420]+C8") then
       if readInteger("[[[[DarkSoulsIII.exe+4768E78]+40]+28]+420]+C8") == 80300 then
       writeInteger("FBID",151)
       local PDcurse = {
                {151,0x70,"22 00 00 00"},
                {151,0x6c,"05 2B 00 00"},
                {151,0x10,"CD CC CC 3D"},
                          }
         local myX = readFloat("[[[DarkSoulsIII.exe+4768E78]+40]+28]+80")
         local myY = readFloat("[[[DarkSoulsIII.exe+4768E78]+40]+28]+88")
         local myZ = readFloat("[[[DarkSoulsIII.exe+4768E78]+40]+28]+84")
         local targetX = "[[[target_ptr]+1F90]+68]+80"
         local targetY = "[[[target_ptr]+1F90]+68]+88"
         local targetZ = "[[[target_ptr]+1F90]+68]+84"
         if (readFloat(targetX)) then
           FBX = readFloat(targetX)
           FBY = readFloat(targetY)
           FBZ = readFloat(targetZ)
         else
           FBX = 0
           FBY = 0
           FBZ = 0
         end
         writeFloat("FBX",FBX)
         writeFloat("FBZ",FBZ)
         writeFloat("FBY",FBY)
         writeFloat("FBAX",FBAX)
         writeFloat("FBAY",FBAY)
         writeFloat("FBAZ",FBAZ)
         ParamIterator("Bullet",PDcurse,"PDcurseOriginal")
         writeBytes("fbactive",1)
         else
         ParamDepatcher("PDcurseOriginal")
         writeBytes("fbactive",0)
end
end
end

if(FBTimer == nil) then
  FBTimer = createTimer(getMainForm())
  FBTimer.Interval = 8
  FBTimer.OnTimer = function(timer)
  fbparam()
end
end
FBTimer.setEnabled(true)

{$asm}
[DISABLE]
{$lua}
FBTimer.setEnabled(false)