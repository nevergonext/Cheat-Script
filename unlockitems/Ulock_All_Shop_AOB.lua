[ENABLE]

aobscanmodule(Ulock_All_Shop_AOB,DarkSoulsIII.exe,8B 58 10 85 DB) // should be unique
alloc(newmem,$1000,Ulock_All_Shop_AOB)

label(code) 
label(return) 

newmem: 

code: 
  mov ebx,FFFFFFFF 
  db 85 DB
  jmp return 

Ulock_All_Shop_AOB:
  jmp code 
return: 
registersymbol(Ulock_All_Shop_AOB)

[DISABLE] 

Ulock_All_Shop_AOB:
  db 8B 58 10 85 DB 

unregistersymbol(Ulock_All_Shop_AOB)
dealloc(newmem)

{
// ORIGINAL CODE - INJECTION POINT: "DarkSoulsIII.exe"+DE0B6F

"DarkSoulsIII.exe"+DE0B5B: CC                          -  int 3
"DarkSoulsIII.exe"+DE0B5C: CC                          -  int 3
"DarkSoulsIII.exe"+DE0B5D: CC                          -  int 3
"DarkSoulsIII.exe"+DE0B5E: CC                          -  int 3
"DarkSoulsIII.exe"+DE0B5F: CC                          -  int 3
"DarkSoulsIII.exe"+DE0B60: 40 53                       -  push rbx
"DarkSoulsIII.exe"+DE0B62: 48 83 EC 20                 -  sub rsp,20
"DarkSoulsIII.exe"+DE0B66: 48 8B 41 08                 -  mov rax,[rcx+08]
"DarkSoulsIII.exe"+DE0B6A: 48 85 C0                    -  test rax,rax
"DarkSoulsIII.exe"+DE0B6D: 74 48                       -  je DarkSoulsIII.exe+DE0BB7
// ---------- INJECTING HERE ----------
"DarkSoulsIII.exe"+DE0B6F: 8B 58 10                    -  mov ebx,[rax+10]
"DarkSoulsIII.exe"+DE0B72: 85 DB                       -  test ebx,ebx
// ---------- DONE INJECTING  ----------
"DarkSoulsIII.exe"+DE0B74: 78 41                       -  js DarkSoulsIII.exe+DE0BB7
"DarkSoulsIII.exe"+DE0B76: 48 8B 0D BB 82 8B 03        -  mov rcx,[DarkSoulsIII.exe+4698E38]
"DarkSoulsIII.exe"+DE0B7D: 48 85 C9                    -  test rcx,rcx
"DarkSoulsIII.exe"+DE0B80: 75 26                       -  jne DarkSoulsIII.exe+DE0BA8
"DarkSoulsIII.exe"+DE0B82: 4C 8D 0D 97 BB 90 01        -  lea r9,[DarkSoulsIII.exe+26EC720]
"DarkSoulsIII.exe"+DE0B89: 4C 8D 05 D8 50 F0 02        -  lea r8,[DarkSoulsIII.exe+3CE5C68]
"DarkSoulsIII.exe"+DE0B90: 48 8D 0D 49 67 8E 01        -  lea rcx,[DarkSoulsIII.exe+26C72E0]
"DarkSoulsIII.exe"+DE0B97: BA B1 00 00 00              -  mov edx,000000B1
"DarkSoulsIII.exe"+DE0B9C: E8 4F 2D 88 00              -  call DarkSoulsIII.exe+16638F0
"DarkSoulsIII.exe"+DE0BA1: 48 8B 0D 90 82 8B 03        -  mov rcx,[DarkSoulsIII.exe+4698E38]
}