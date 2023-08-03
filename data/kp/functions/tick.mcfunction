function kp:abilities/tick
function kp:specials/tick
function kp:projectiles/tick
function kp:crafting/tick
function kp:mobs/tick

#Gedeon Realm
execute in minecraft:gedeon as @a if dimension minecraft:gedeon run effect give @s minecraft:water_breathing 10 0 true
execute in minecraft:gedeon as @a if dimension minecraft:gedeon run effect give @s minecraft:night_vision 10 0 true

#Calux Realm
execute in minecraft:calux as @e[type=!player] if dimension minecraft:calux run tag @e[type=!player,tag=!ghost2] add ghost
effect give @e[tag=ghost] minecraft:invisibility infinite
effect give @e[tag=ghost] minecraft:glowing infinite
effect give @e[tag=ghost] minecraft:strength infinite
tag @e[tag=ghost] add ghost2
tag @e[tag=ghost2] remove ghost

#Projectile logic
scoreboard players add @e[type=#kp:projectile] kplife 1
kill @e[scores={kplife=200..},type=#kp:projectile]

#Cooldowns
scoreboard players remove @a[scores={firesword_cooldown=1..}] firesword_cooldown 1