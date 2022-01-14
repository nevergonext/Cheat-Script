[ENABLE]
{$lua}
if not syntaxcheck then


  writeInteger("[[[Param]+1C70]+60]+D4",113)
  writeInteger("[[[Param]+1C70]+60]+D8",113)
  writeInteger("[[[Param]+1C70]+60]+128",113)
  writeInteger("[[[Param]+1C70]+60]+FC",113)
  writeInteger("[[[Param]+1C70]+60]+C4",113)
  writeInteger("[[[Param]+1C70]+60]+DC",113)
  writeInteger("[[[Param]+1C70]+60]+104",113)
  writeInteger("[[[Param]+1C70]+60]+F4",113)
  writeInteger("[[[Param]+1C70]+60]+E4",113)
  writeInteger("[[[Param]+1C70]+60]+EC",113)
  writeInteger("[[[Param]+1C70]+60]+E8",113)
  writeInteger("[[[Param]+1C70]+60]+E0",113)
  writeInteger("[[[Param]+1C70]+60]+C8",113)
  writeInteger("[[[Param]+1C70]+60]+F0",113)
  writeInteger("[[[Param]+1C70]+60]+CC",113)
  writeInteger("[[[Param]+1C70]+60]+100",113)
  writeInteger("[[[Param]+1C70]+60]+F8",113)
  writeInteger("[[[Param]+1C70]+60]+D4",113)
  writeInteger("[[[Param]+1C70]+60]+D0",113)
  writeBytes("[[[Param]+1C70]+60]+BE",10)
  writeBytes("[[[Param]+1C70]+60]+BC",7)
  writeFloat("[[[[Param]+4A8]+68]+68]+1BA78",-1)
  writeFloat("[[[[Param]+4A8]+68]+68]+1BA7C",0.02)
  writeBytes("[[[[Param]+4A8]+68]+68]+1BBC6",40)
  writeBytes("[[[[Param]+4A8]+68]+68]+1BBC7",1)
end


[DISABLE]
{$lua}
if syntaxcheck then return end
Turret_Bullet_ID_Off = 131
  writeFloat("[[[[Param]+4A8]+68]+68]+1BA78",1)
  writeFloat("[[[[Param]+4A8]+68]+68]+1BA7C",2)
  writeBytes("[[[[Param]+4A8]+68]+68]+1BBC6",0)
  writeBytes("[[[[Param]+4A8]+68]+68]+1BBC7",0)
  writeInteger("[[[Param]+1C70]+60]+D8",Turret_Bullet_ID_Off)
  writeInteger("[[[Param]+1C70]+60]+128",Turret_Bullet_ID_Off)
  writeInteger("[[[Param]+1C70]+60]+FC",Turret_Bullet_ID_Off)
  writeInteger("[[[Param]+1C70]+60]+C4",Turret_Bullet_ID_Off)
  writeInteger("[[[Param]+1C70]+60]+DC",Turret_Bullet_ID_Off)
  writeInteger("[[[Param]+1C70]+60]+104",Turret_Bullet_ID_Off)
  writeInteger("[[[Param]+1C70]+60]+F4",Turret_Bullet_ID_Off)
  writeInteger("[[[Param]+1C70]+60]+E4",Turret_Bullet_ID_Off)
  writeInteger("[[[Param]+1C70]+60]+EC",Turret_Bullet_ID_Off)
  writeInteger("[[[Param]+1C70]+60]+E8",Turret_Bullet_ID_Off)
  writeInteger("[[[Param]+1C70]+60]+E0",Turret_Bullet_ID_Off)
  writeInteger("[[[Param]+1C70]+60]+C8",Turret_Bullet_ID_Off)
  writeInteger("[[[Param]+1C70]+60]+F0",Turret_Bullet_ID_Off)
  writeInteger("[[[Param]+1C70]+60]+CC",Turret_Bullet_ID_Off)
  writeInteger("[[[Param]+1C70]+60]+100",Turret_Bullet_ID_Off)
  writeInteger("[[[Param]+1C70]+60]+F8",Turret_Bullet_ID_Off)
  writeInteger("[[[Param]+1C70]+60]+D4",Turret_Bullet_ID_Off)
  writeInteger("[[[Param]+1C70]+60]+D0",Turret_Bullet_ID_Off)

