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
dd #64
dd 400001F4 //Ember
dd 250
dd FFFFFFFF
dd 400001C8 //Siegbräu
dd 250
dd FFFFFFFF
dd 400000F0 //Divine Blessing
dd 250
dd FFFFFFFF
dd 400000F1 //Hidden Blessing
dd 250
dd FFFFFFFF
dd 40000104 //Green Blossom
dd 250
dd FFFFFFFF
dd 40000106 //Budding Green Blossom
dd 250
dd FFFFFFFF
dd 4000010E //Bloodred Moss Clump
dd 250
dd FFFFFFFF
dd 4000010F //Purple Moss Clump
dd 250
dd FFFFFFFF
dd 40000110 //Blooming Purple Moss Clump
dd 50
dd FFFFFFFF
dd 40000112 //Purging Stone
dd 250
dd FFFFFFFF
dd 40000114 //Rime-blue Moss Clump
dd 250
dd FFFFFFFF
dd 40000118 //Repair Powder
dd 250
dd FFFFFFFF
dd 40000122 //Kukri
dd 250
dd FFFFFFFF
dd 40000124 //Firebomb
dd 250
dd FFFFFFFF
dd 40000125 //Dung Pie
dd 250
dd FFFFFFFF
dd 40000126 //Alluring Skull
dd 250
dd FFFFFFFF
dd 40000128 //Undead Hunter Charm
dd 250
dd FFFFFFFF
dd 40000129 //Black Firebomb
dd 250
dd FFFFFFFF
dd 4000012B //Rope Firebomb
dd 250
dd FFFFFFFF
dd 4000012C //Lightning Urn
dd 250
dd FFFFFFFF
dd 4000012E //Rope Black Firebomb
dd 250
dd FFFFFFFF
dd 4000012F //Stalk Dung Pie
dd 250
dd FFFFFFFF
dd 40000130 //Duel Charm
dd 250
dd FFFFFFFF
dd 40000136 //Throwing Knife
dd 250
dd FFFFFFFF
dd 40000137 //Poison Throwing Knife
dd 250
dd FFFFFFFF
dd 4000014A //Charcoal Pine Resin
dd 250
dd FFFFFFFF
dd 4000014B //Gold Pine Resin
dd 250
dd FFFFFFFF
dd 4000014E //Human Pine Resin
dd 250
dd FFFFFFFF
dd 4000014F //Carthus Rouge
dd 250
dd FFFFFFFF
dd 40000150 //Pale Pine Resin
dd 250
dd FFFFFFFF
dd 40000154 //Charcoal Pine Bundle
dd 250
dd FFFFFFFF
dd 40000155 //Gold Pine Bundle
dd 250
dd FFFFFFFF
dd 40000157 //Rotten Pine Resin
dd 250
dd FFFFFFFF
dd 4000015E //Homeward Bone
dd 250
dd FFFFFFFF
dd 400001C4 //Mossfruit
dd 250
dd FFFFFFFF
dd 400001CD //Black Bug Pellet
dd 250
dd FFFFFFFF
dd 00062318 //Dragonslayer Lightning Arrow
dd 250
dd FFFFFFFF
dd 400001C7 //Rusted Coin
dd 250
dd FFFFFFFF
dd 400001C9 //Rusted Gold Coin
dd 250
dd FFFFFFFF
dd 400001CA //Blue Bug Pellet
dd 250
dd FFFFFFFF
dd 400001CB //Red Bug Pellet
dd 250
dd FFFFFFFF
dd 400001CC //Yellow Bug Pellet
dd 250
dd FFFFFFFF
dd 00061A80 //Standard Arrow
dd 250
dd FFFFFFFF
dd 00061AE4 //Fire Arrow
dd 250
dd FFFFFFFF
dd 00061B48 //Poison Arrow
dd 250
dd FFFFFFFF
dd 00061BAC //Large Arrow
dd 250
dd FFFFFFFF
dd 00061C10 //Feather Arrow
dd 250
dd FFFFFFFF
dd 00061C74 //Moonlight Arrow
dd 250
dd FFFFFFFF
dd 00061CD8 //Wood Arrow
dd 250
dd FFFFFFFF
dd 00061D3C //Dark Arrow
dd 250
dd FFFFFFFF
dd 00062250 //Dragonslayer Greatarrow
dd 250
dd FFFFFFFF
dd 0006237C //Onislayer Greatarrow
dd 250
dd FFFFFFFF
dd 000623E0 //Millwood Greatarrow
dd 250
dd FFFFFFFF
dd 00062A20 //Standard Bolt
dd 250
dd FFFFFFFF
dd 00062A84 //Heavy Bolt
dd 250
dd FFFFFFFF
dd 00062AE8 //Sniper Bolt
dd 250
dd FFFFFFFF
dd 00062B4C //Wood Bolt
dd 250
dd FFFFFFFF
dd 00062BB0 //Lightning Bolt
dd 250
dd FFFFFFFF
dd 00062C14 //Splintering Bolt
dd 250
dd FFFFFFFF
dd 40000110 //Exploding Bolt
dd 250
dd FFFFFFFF
dd 00062C78 //Purging Stone
dd 250
dd FFFFFFFF
dd 4000006F //Cracked Red Eye Orb
dd 250
dd FFFFFFFF
dd 4000085D //Estus Shard
dd 1
dd FFFFFFFF
dd 4000085F //Undead Bone Shard
dd 1
dd FFFFFFFF



[DISABLE]
dealloc(ItemGib)
unregistersymbol(ItemGib)
 
dealloc(ItemArray)
unregistersymbol(ItemArray)
 