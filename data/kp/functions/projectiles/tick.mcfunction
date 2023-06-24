#Motion
execute as @e[scores={kp_motion=1..}] at @s positioned ^ ^ ^ run tp @s ^ ^ ^0.3
execute as @e[scores={kp_motion=1..},tag=kp_motion1] at @s positioned ^ ^ ^ run tp @s ^ ^ ^0.1
execute as @e[scores={kp_motion=1..},tag=kp_motion2] at @s positioned ^ ^ ^ run tp @s ^ ^ ^0.3
execute as @e[scores={kp_motion=1..},tag=kp_homing] at @s positioned ^ ^ ^ run tp @s ~ ~ ~ facing

#On Tick
execute as @e[scores={kp_motion=1..}] run scoreboard players remove @s kp_motion 1
execute at @e[tag=kp_projectile_test] run particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0 10 force

#On Collision
execute as @e[scores={kp_motion=1..}] at @s unless block ~ ~ ~ air run scoreboard players set @s kp_motion 1
execute as @e[scores={kp_motion=1..}] at @s if entity @e[distance=0..1,tag=!kp_projectilecaster,type=!minecraft:block_display,type=!minecraft:item_display] run scoreboard players set @s kp_motion 1

#On End
#Test projectile
execute as @e[scores={kp_motion=..0},tag=kp_projectile_trident] at @s run particle minecraft:bubble ~ ~ ~ 1 1 1 1 50 force
execute as @e[scores={kp_motion=..0},tag=kp_projectile_trident] at @s as @e[distance=0..2] run damage @s 4 minecraft:magic
execute as @e[scores={kp_motion=..0},tag=kp_projectile_test] at @s run particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 1 50 force
execute as @e[scores={kp_motion=..0},tag=kp_projectile_test] at @s as @e[distance=0..2] run damage @s 4 minecraft:magic
execute as @e[scores={kp_motion=..0},tag=kp_projectile_fire] at @s run particle minecraft:lava ~ ~ ~ 0.2 0.2 0.2 1 50 force
execute as @e[scores={kp_motion=..0},tag=kp_projectile_fire] at @s as @e[distance=0..2] run damage @s 3 minecraft:magic
execute as @e[scores={kp_motion=..0},tag=kp_projectile] on passengers run kill @s
execute as @e[scores={kp_motion=..0},tag=kp_projectile] run kill @s