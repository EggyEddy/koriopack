effect give @s minecraft:invisibility 2 1 true
effect give @s minecraft:speed 2 0 true
effect give @s minecraft:jump_boost 2 0 true
execute as @s unless entity @s[nbt={Inventory:[{Slot:100b}]}] unless entity @s[nbt={Inventory:[{Slot:101b}]}] unless entity @s[nbt={Inventory:[{Slot:102b}]}] unless entity @s[nbt={Inventory:[{Slot:103b}]}] run effect give @s resistance 2 0 true
execute at @e[distance=0..5,type=#kp:projectile] run particle minecraft:dust 0 0 0 1 ~ ~ ~ 0.2 0.2 0.2 1 1
execute as @e[distance=0..4,type=#kp:projectile] run data merge entity @s {NoGravity:1b,Motion:[0.0,-0.1,0.0]}