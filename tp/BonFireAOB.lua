[ENABLE]
aobscanmodule(BonFireAOB,DarkSoulsIII.exe,8B 13 48 83 C4 ? 5B E9 ? 54 ? ? ? BA)
alloc(allocatedMemory,32,BonFireAOB)
registersymbol(BonFireAOB)
registersymbol(BonFireAOBOriginal)

label(code)
label(return)
label(BonFireAOBOriginal)

allocatedMemory:
BonFireAOBOriginal:
  readmem(BonFireAOB,6)
code:
  mov edx,#14000000
  add rsp,20
  jmp return

BonFireAOB:
  jmp code
  nop
return:


[DISABLE]
BonFireAOB:
 readmem(BonFireAOBOriginal,6)

unregistersymbol(BonFireAOB)
unregistersymbol(BonFireAOBOriginal)
dealloc(allocatedMemory)
dealloc(backupMemory)