function kp:abilities/tick
function kp:specials/tick
function kp:projectiles/tick

#Projectile logic
scoreboard players add @e[type=#kp:projectile] kplife 1
kill @e[scores={kplife=200..},type=#kp:projectile]

#Cooldowns
scoreboard players remove @a[scores={firesword_cooldown=1..}] firesword_cooldown 1