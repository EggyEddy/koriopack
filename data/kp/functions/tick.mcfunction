function kp:abilities/tick
function kp:specials/tick
function kp:projectiles/tick
function kp:crafting/tick
function kp:mobs/tick

#Gedeon Realm
execute as @a if dimension minecraft:gedeon run effect give @s minecraft:water_breathing 10 0 true
execute as @a if dimension minecraft:gedeon run effect give @s minecraft:night_vision 10 0 true

#Projectile logic
scoreboard players add @e[type=#kp:projectile] kplife 1
kill @e[scores={kplife=200..},type=#kp:projectile]

#Cooldowns
scoreboard players remove @a[scores={firesword_cooldown=1..}] firesword_cooldown 1