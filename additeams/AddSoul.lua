//Enter amount of souls and activate Thread_AddSoul
[ENABLE]
alloc(AddSoul,$35,DarkSoulsIII.exe)
registerSymbol(AddSoul)

define(SoulsToAdd,AddSoul+32)
registerSymbol(SoulsToAdd)

SoulsToAdd:
db 7F 96 98 00

AddSoul:
mov edi,[SoulsToAdd]
mov rbx,[DarkSoulsIII.exe+4768E78]
mov rsi,[rbx+80]
mov rbx,[rbx+80]
mov rcx,[rbx+1FA0]
mov edx,edi
sub rsp,28
call 1405A3310
add rsp,28
ret

[DISABLE]
dealloc(AddSoul)
unregisterSymbol(AddSoul)
unregisterSymbol(SoulsToAdd)