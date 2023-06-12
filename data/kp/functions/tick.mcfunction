function kp:abilities/tick
function kp:specials/tick
function kp:projectiles/tick

#time sword [arrow logic]
scoreboard players add @e[type=#kp:projectile] kplife 1
kill @e[scores={kplife=200..},type=#kp:projectile]

#passive abilities
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{timesword:1b}}}] run
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{shadowsword:1b}}}] run
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{elementsword:1b}}}] run