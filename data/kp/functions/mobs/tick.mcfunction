#eye
execute as @e[tag=eye_model] at @s unless entity @e[type=phantom,distance=0..1] run kill @s
execute as @e[tag=eye] at @s if predicate kp:random if predicate kp:random if predicate kp:random if predicate kp:random if predicate kp:random run function kp:projectiles/eye
execute as @e[tag=eye] at @s if predicate kp:random if predicate kp:random if predicate kp:random if predicate kp:random if predicate kp:random run function kp:mobs/eye_small

#kraken
execute if predicate kp:random as @e[tag=kraken_model] at @s run tp @s ~ ~ ~ facing ^0.00000000000001 ^ ^0.0000000000001
execute as @e[type=slime,nbt={NoAI:true},tag=!kraken] run tp @s ~ ~-100 ~
execute as @e[tag=kraken_model] at @s unless entity @e[nbt={Size:13},distance=0..16] run kill @s