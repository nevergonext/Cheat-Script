[ENABLE]

aobscanmodule(Nomat_AOB,DarkSoulsIII.exe,41 0F BE 40 14) // should be unique
alloc(newmem,$1000,Nomat_AOB)

label(code)
label(return)

newmem:

code:
  movsx eax,byte ptr [r8+14]
  xor eax,eax
  jmp return

Nomat_AOB:
  jmp code
return:
registersymbol(Nomat_AOB)

[DISABLE]

Nomat_AOB:
  db 41 0F BE 40 14

unregistersymbol(Nomat_AOB)
dealloc(newmem)

{
// ORIGINAL CODE - INJECTION POINT: "DarkSoulsIII.exe"+DDAA9C

"DarkSoulsIII.exe"+DDAA7D: CC                       -  int 3
"DarkSoulsIII.exe"+DDAA7E: CC                       -  int 3
"DarkSoulsIII.exe"+DDAA7F: CC                       -  int 3
"DarkSoulsIII.exe"+DDAA80: 48 83 EC 28              -  sub rsp,28
"DarkSoulsIII.exe"+DDAA84: 48 8B 05 45 30 89 03     -  mov rax,[DarkSoulsIII.exe+466DAD0]
"DarkSoulsIII.exe"+DDAA8B: 48 33 C4                 -  xor rax,rsp
"DarkSoulsIII.exe"+DDAA8E: 48 89 44 24 18           -  mov [rsp+18],rax
"DarkSoulsIII.exe"+DDAA93: 4C 8B 41 08              -  mov r8,[rcx+08]
"DarkSoulsIII.exe"+DDAA97: 4D 85 C0                 -  test r8,r8
"DarkSoulsIII.exe"+DDAA9A: 74 49                    -  je DarkSoulsIII.exe+DDAAE5
// ---------- INJECTING HERE ----------
"DarkSoulsIII.exe"+DDAA9C: 41 0F BE 40 14           -  movsx eax,byte ptr [r8+14]
// ---------- DONE INJECTING  ----------
"DarkSoulsIII.exe"+DDAAA1: 89 04 24                 -  mov [rsp],eax
"DarkSoulsIII.exe"+DDAAA4: 41 0F BE 40 15           -  movsx eax,byte ptr [r8+15]
"DarkSoulsIII.exe"+DDAAA9: 89 44 24 04              -  mov [rsp+04],eax
"DarkSoulsIII.exe"+DDAAAD: 41 0F BE 40 16           -  movsx eax,byte ptr [r8+16]
"DarkSoulsIII.exe"+DDAAB2: 89 44 24 08              -  mov [rsp+08],eax
"DarkSoulsIII.exe"+DDAAB6: 41 0F BE 40 17           -  movsx eax,byte ptr [r8+17]
"DarkSoulsIII.exe"+DDAABB: 89 44 24 0C              -  mov [rsp+0C],eax
"DarkSoulsIII.exe"+DDAABF: 41 0F BE 40 18           -  movsx eax,byte ptr [r8+18]
"DarkSoulsIII.exe"+DDAAC4: 89 44 24 10              -  mov [rsp+10],eax
"DarkSoulsIII.exe"+DDAAC8: 83 FA 04                 -  cmp edx,04
}