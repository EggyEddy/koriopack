effect give @s minecraft:dolphins_grace 30 9 true
effect give @s minecraft:water_breathing 30 0 true
effect give @s minecraft:slow_falling 2 0 true
execute if predicate kp:water run effect give @s minecraft:levitation 2 15 true
execute if predicate kp:flying at @s run particle minecraft:dust 0 0 1 1 ~ ~0.5 ~ 0.15 0.15 0.15 1 10 force
execute as @e[distance=0..3,type=trident] at @s run particle minecraft:dust 0 0 1 1 ~ ~ ~ 0.2 0.2 0.2 1 10 force
execute as @e[distance=0..3,type=trident] run data merge entity @s {Trident:{id:"minecraft:trident",Count:1b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:10s}]}}}