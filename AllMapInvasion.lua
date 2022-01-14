{$lua}

wex = wex or {dll_path = nil}
if syntaxcheck then return end

[ENABLE]
OpenProcess('DarkSoulsIII.exe')
if(not wex.dll_path) then
  local dll_file = findTableFile('WEX.dll')
  wex.dll_path = os.getenv("TMP")..[[\WEX.dll]]
  dll_file.saveToFile(wex.dll_path)
  injectDLL(wex.dll_path)
end

{$asm}
alloc(wex_dust_on,$50)
alloc(wex_dust_off,$50)
alloc(wex_dust_data,$50)
registerSymbol(wex_dust_on)
registerSymbol(wex_dust_off)
registerSymbol(wex_dust_data)

wex_dust_data:
wex_module:
db 'WEX.dll', 0
wex_start:
db 'Start', 0
wex_stop:
db 'Stop', 0

wex_dust_on:
sub rsp, 28
lea rcx, [wex_module]
call KERNEL32.GetModuleHandleA
test rax,rax
jz short no_joy
mov rcx,rax
lea rdx, [wex_start]
call KERNEL32.GetProcAddress
test rax,rax
jz short no_joy
call rax
no_joy:
add rsp, 28
ret

wex_dust_off:
sub rsp, 28
lea rcx, [wex_module]
call KERNEL32.GetModuleHandleA
test rax,rax
jz short no_joy1
mov rcx,rax
lea rdx, [wex_stop]
call KERNEL32.GetProcAddress
test rax,rax
jz short no_joy1
call rax
no_joy1:
add rsp, 28
ret

[DISABLE]
{$asm}
unregisterSymbol(wex_dust_on)
unregisterSymbol(wex_dust_off)
unregisterSymbol(wex_dust_data)
dealloc(wex_dust_on)
dealloc(wex_dust_off)
dealloc(wex_dust_data)

