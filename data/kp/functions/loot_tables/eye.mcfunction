execute at @a[distance=0..20] run function kp:give_shardshadow
execute at @a[distance=0..20] run function kp:give_shardshadow
execute at @a[distance=0..20] if predicate kp:random run function kp:give_shardshadow
execute at @a[distance=0..20] if predicate kp:random run function kp:give_shardshadow
execute at @s run summon firework_rocket ~ ~ ~ {LifeTime:7,Motion:[0.0,1.0,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1b,Trail:1b,Colors:[I;16719864],FadeColors:[I;10106623]}]}}}}
advancement revoke @s only kp:drops_eye