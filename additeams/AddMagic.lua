[ENABLE]
alloc(ItemGib,128,DarkSoulsIII.exe)
registersymbol(ItemGib)
 
globalalloc(ItemArray,12288)
 
ItemGib:
lea r8,[ItemArray]
lea rdx,[r8+10]
mov rcx,[DarkSoulsIII.exe+4752300]
mov rbx,rcx
sub rsp,28
call 1407BBA70
add rsp,28
ret
 
ItemArray+10:
dd #105
dd 40124F80 //Farron Dart ----------------------------------------------. Magic (38)
dd 1
dd FFFFFFFF
dd 40127690 //Great Farron Dart
dd 1
dd FFFFFFFF
dd 4013D620 //Soul Arrow
dd 1
dd FFFFFFFF
dd 4013DA08 //Great Soul Arrow
dd 1
dd FFFFFFFF
dd 4013DDF0 //Heavy Soul Arrow
dd 1
dd FFFFFFFF
dd 4013E1D8 //Great Heavy Soul Arrow
dd 1
dd FFFFFFFF
dd 4013E5C0 //Homing Soulmass
dd 1
dd FFFFFFFF
dd 4013E9A8 //Homing Crystal Soulmass
dd 1
dd FFFFFFFF
dd 4013ED90 //Soul Spear
dd 1
dd FFFFFFFF
dd 4013F178 //Crystal Soul Spear
dd 1
dd FFFFFFFF
dd 4013F560 //Deep Soul
dd 1
dd FFFFFFFF
dd 4013F948 //Great Deep Soul
dd 1
dd FFFFFFFF
dd 4013FD30 //Magic Weapon
dd 1
dd FFFFFFFF
dd 40140118 //Great Magic Weapon
dd 1
dd FFFFFFFF
dd 40140500 //Crystal Magic Weapon
dd 1
dd FFFFFFFF
dd 40144B50 //Magic Shield
dd 1
dd FFFFFFFF
dd 40144F38 //Great Magic Shield
dd 1
dd FFFFFFFF
dd 40147260 //Hidden Weapon
dd 1
dd FFFFFFFF
dd 40147648 //Hidden Body
dd 1
dd FFFFFFFF
dd 40149970 //Cast Light
dd 1
dd FFFFFFFF
dd 4014A528 //Repair
dd 1
dd FFFFFFFF
dd 4014A910 //Spook
dd 1
dd FFFFFFFF
dd 4014ACF8 //Chameleon
dd 1
dd FFFFFFFF
dd 4014B0E0 //Aural Decoy
dd 1
dd FFFFFFFF
dd 4014E790 //White Dragon Breath
dd 1
dd FFFFFFFF
dd 4014EF60 //Farron Hail
dd 1
dd FFFFFFFF
dd 4014F348 //Crystal Hail
dd 1
dd FFFFFFFF
dd 4014F730 //Soul Greatsword
dd 1
dd FFFFFFFF
dd 4014FB18 //Farron Flashsword
dd 1
dd FFFFFFFF
dd 401875B8 //Affinity
dd 1
dd FFFFFFFF
dd 40189CC8 //Dark Edge
dd 1
dd FFFFFFFF
dd 4018B820 //Soul Stream
dd 1
dd FFFFFFFF
dd 40193138 //Twisted Wall of Light
dd 1
dd FFFFFFFF
dd 401A8CE0 //Pestilent Mercury
dd 1
dd FFFFFFFF
dd 401408E8 //Frozen Weapon
dd 1
dd FFFFFFFF
dd 401A90C8 //Snap Freeze
dd 1
dd FFFFFFFF
dd 4014FF00 //Old Moonlight
dd 1
dd FFFFFFFF
dd 401879A0 //Great Soul Dregs
dd 1
dd FFFFFFFF
dd 40249F00 //Fireball -------------------------------------------- Pyromancies (29)
dd 1
dd FFFFFFFF
dd 4024A6D0 //Fire Orb
dd 1
dd FFFFFFFF
dd 4024AAB8 //Firestorm
dd 1
dd FFFFFFFF
dd 4024B288 //Fire Surge
dd 1
dd FFFFFFFF
dd 4024BA58 //Black Serpent
dd 1
dd FFFFFFFF
dd 4024C9F8 //Great Combustion
dd 1
dd FFFFFFFF
dd 4024ED20 //Poison Mist
dd 1
dd FFFFFFFF
dd 4024F108 //Toxic Mist
dd 1
dd FFFFFFFF
dd 4024F4F0 //Acid Surge
dd 1
dd FFFFFFFF
dd 40251430 //Iron Flesh
dd 1
dd FFFFFFFF
dd 40251818 //Flash Sweat
dd 1
dd FFFFFFFF
dd 402527B8 //Carthus Flame Arc
dd 1
dd FFFFFFFF
dd 40252BA0 //Rapport
dd 1
dd FFFFFFFF
dd 40253B40 //Power Within
dd 1
dd FFFFFFFF
dd 40256250 //Great Chaos Fire Orb
dd 1
dd FFFFFFFF
dd 40256638 //Chaos Storm
dd 1
dd FFFFFFFF
dd 40256E08 //Black Flame
dd 1
dd FFFFFFFF
dd 402575D8 //Profaned Flame
dd 1
dd FFFFFFFF
dd 402579C0 //Chaos Bed Vestiges
dd 1
dd FFFFFFFF
dd 4025B070 //Warmth
dd 1
dd FFFFFFFF
dd 402717D0 //Profuse Sweat
dd 1
dd FFFFFFFF
dd 4027D350 //Black Fire Orb
dd 1
dd FFFFFFFF
dd 4027FA60 //Bursting Fireball
dd 1
dd FFFFFFFF
dd 40282170 //Boulder Heave
dd 1
dd FFFFFFFF
dd 40284880 //Sacred Flame
dd 1
dd FFFFFFFF
dd 40286F90 //Carthus Beacon
dd 1
dd FFFFFFFF
dd 40257DA8 //Floating Chaos
dd 1
dd FFFFFFFF
dd 40258190 //Flame Fan
dd 1
dd FFFFFFFF
dd 402896A0 //Seething Chaos
dd 1
dd FFFFFFFF
dd 403540D0 //Heal Aid    -------------------------------------------- Miracles (38)
dd 1
dd FFFFFFFF
dd 403567E0 //Heal
dd 1
dd FFFFFFFF
dd 40356BC8 //Med Heal
dd 1
dd FFFFFFFF
dd 40356FB0 //Great Heal
dd 1
dd FFFFFFFF
dd 40357398 //Soothing Sunlight
dd 1
dd FFFFFFFF
dd 40357780 //Replenishment
dd 1
dd FFFFFFFF
dd 40357B68 //Bountiful Sunlight
dd 1
dd FFFFFFFF
dd 40358338 //Bountiful Light
dd 1
dd FFFFFFFF
dd 40358720 //Caressing Tears
dd 1
dd FFFFFFFF
dd 4035B600 //Tears of Denial
dd 1
dd FFFFFFFF
dd 4035B9E8 //Homeward
dd 1
dd FFFFFFFF
dd 4035DD10 //Force
dd 1
dd FFFFFFFF
dd 4035E0F8 //Wrath of the Gods
dd 1
dd FFFFFFFF
dd 4035E4E0 //Emit Force
dd 1
dd FFFFFFFF
dd 40360420 //Seek Guidance
dd 1
dd FFFFFFFF
dd 40362B30 //Lightning Spear
dd 1
dd FFFFFFFF
dd 40362F18 //Great Lightning Spear
dd 1
dd FFFFFFFF
dd 40363300 //Sunlight Spear
dd 1
dd FFFFFFFF
dd 403636E8 //Lightning Storm
dd 1
dd FFFFFFFF
dd 40363AD0 //Gnaw
dd 1
dd FFFFFFFF
dd 40363EB8 //Dorhys' Gnawing
dd 1
dd FFFFFFFF
dd 40365240 //Magic Barrier
dd 1
dd FFFFFFFF
dd 40365628 //Great Magic Barrier
dd 1
dd FFFFFFFF
dd 40365DF8 //Sacred Oath
dd 1
dd FFFFFFFF
dd 4036A448 //Vow of Silence
dd 1
dd FFFFFFFF
dd 4036C770 //Lightning Blade
dd 1
dd FFFFFFFF
dd 4036CB58 //Darkmoon Blade
dd 1
dd FFFFFFFF
dd 40378AC0 //Dark Blade
dd 1
dd FFFFFFFF
dd 40387520 //Dead Again
dd 1
dd FFFFFFFF
dd 40389C30 //Lightning Stake
dd 1
dd FFFFFFFF
dd 4038C340 //Divine Pillars of Light
dd 1
dd FFFFFFFF
dd 4038EA50 //Lifehunt Scythe
dd 1
dd FFFFFFFF
dd 40395F80 //Blessed Weapon
dd 1
dd FFFFFFFF
dd 40398690 //Deep Protection
dd 1
dd FFFFFFFF
dd 4039ADA0 //Atonement
dd 1
dd FFFFFFFF
dd 403642A0 //Way of White Corona
dd 1
dd FFFFFFFF
dd 40358B08 //Lightning Arrow
dd 1
dd FFFFFFFF
dd 40364688 //Projected Heal
dd 1
dd FFFFFFFF



[DISABLE]
dealloc(ItemGib)
unregistersymbol(ItemGib)
 
dealloc(ItemArray)
unregistersymbol(ItemArray)