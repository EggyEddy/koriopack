#eye
execute as @e[tag=eye_model] at @s unless entity @e[type=phantom,distance=0..1] run kill @s
execute as @e[tag=eye] at @s if predicate kp:random if predicate kp:random if predicate kp:random if predicate kp:random if predicate kp:random run function kp:projectiles/eye
execute as @e[tag=eye] at @s if predicate kp:random if predicate kp:random if predicate kp:random if predicate kp:random if predicate kp:random run function kp:mobs/eye_small

#kraken
execute as @e[tag=kraken_model] at @s run tp @s ~ ~ ~ facing ^0.00000000000001 ^ ^0.0000000000009
execute as @e[type=slime,nbt={NoAI:true},tag=!kraken] run tp @s ~ ~-100 ~
execute as @e[tag=kraken_model] at @s unless entity @e[nbt={Size:13},distance=0..16] run kill @s
execute as @e[tag=kraken_model] at @s if predicate kp:random if predicate kp:random if predicate kp:random if predicate kp:random if predicate kp:random run function kp:projectiles/ink
execute as @e[tag=kraken_model] at @s if predicate kp:random if predicate kp:random if predicate kp:random if predicate kp:random if predicate kp:random run summon pufferfish ~ ~ ~ {DeathLootTable:"0",Health:16f,ActiveEffects:[{Id:20,Amplifier:1b,Duration:400}],Attributes:[{Name:generic.max_health,Base:15}]}
execute as @e[tag=kraken_model] at @s if predicate kp:random if predicate kp:random if predicate kp:random if predicate kp:random if predicate kp:random run summon guardian ~ ~ ~ {DeathLootTable:"0",Health:13f,ActiveEffects:[{Id:20,Amplifier:1b,Duration:400}],Attributes:[{Name:generic.max_health,Base:15}]}

#Ghost
execute as @e[tag=ghost] at @s if predicate kp:random if predicate kp:random if predicate kp:random if predicate kp:random if predicate kp:random run effect give @s speed 3 3
execute as @e[tag=ghost] at @s if predicate kp:random if predicate kp:random if predicate kp:random if predicate kp:random if predicate kp:random run summon vex ~ ~ ~
execute as @e[tag=ghost] at @s if predicate kp:random if predicate kp:random if predicate kp:random if predicate kp:random if predicate kp:random at @a[distance=0..10] run summon lightning_bolt ~ ~1 ~

