{$lua}
[ENABLE]
local v = readInteger("[DarkSoulsIII.exe+4780990]+16C")
writeInteger("[DarkSoulsIII.exe+4780990]+16C",3)
[DISABLE]
writeInteger("[DarkSoulsIII.exe+4780990]+16C",v)