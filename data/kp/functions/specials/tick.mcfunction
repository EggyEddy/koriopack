#watersword
execute as @a[predicate=kp:1watersword] at @s as @e[distance=0..3,type=trident,nbt={HasBeenShot:0b}] at @s run particle minecraft:dust 0 0 1 1 ~ ~ ~ 0.2 0.2 0.2 1 10 force
execute as @a[predicate=kp:1watersword] at @s as @e[distance=0..3,type=trident] run data merge entity @s {pickup:0b,Trident:{id:"minecraft:trident",Count:1b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:10s}]}}}
#electrosword
execute as @a[predicate=kp:1electrosword] at @s as @e[distance=0..2,type=arrow] at @s run particle minecraft:enchanted_hit ~ ~ ~ 0.2 0.2 0.2 1 10 force
execute as @a[predicate=kp:1electrosword] at @s as @e[distance=0..3,type=arrow] run data merge entity @s {NoGravity:1b,crit:1b,PierceLevel:20b}
#shadowsword
execute as @a[predicate=kp:1shadowsword] at @s