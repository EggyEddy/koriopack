tag @s add kp_projectilecaster
#cooldown:
scoreboard players set @s firesword_cooldown 10
summon armor_stand ~ ~ ~ {Invisible:1b,NoBasePlate:0b,Pose:{Head:[180f,0f,0f]},Small:1b,Tags:["kp_projectile_fire","kp_projectile","kp_projectilecaster"],Passengers:[{id:"minecraft:block_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.5f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:fire"}}]}
execute at @s run scoreboard players add @e[type=minecraft:armor_stand,distance=0] kp_motion 50
execute at @s as @e[tag=kp_projectile,distance=0] run tp @s ~ ~ ~ facing ^ ^ ^1
execute at @s as @e[tag=kp_projectile,distance=0] run tp @s ^ ^1 ^1
tag @s remove kp_projectilecaster
