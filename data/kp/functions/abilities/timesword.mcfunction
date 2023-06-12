effect give @s minecraft:slow_falling 2 1 true
effect give @s minecraft:mining_fatigue 2 1 true
effect give @e[distance=1..10] minecraft:slowness 2 3 true
particle minecraft:cloud ~ ~0.1 ~ 0.1 0.1 0.1 0.1 1 force @a
execute as @e[distance=0..4,type=#kp:projectile] run data merge entity @s {NoGravity:1b,Motion:[0.0,-0.1,0.0]}