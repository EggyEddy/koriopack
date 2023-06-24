effect give @e[distance=1..10] minecraft:glowing 2 0 true
effect give @s minecraft:resistance 2 0 true
execute if entity @e[distance=0..10,type=lightning_bolt] run effect give @s resistance 2 5
particle minecraft:enchanted_hit ~ ~ ~ 0.4 1 0.4 0.1 10 force @a