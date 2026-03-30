
## General
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=item,tag=pc.sys.object.motion] at @s run function pc:sys/object/motion/main

## Allies
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=text_display,tag=pc.wireless_repair.wave] at @s run function pc:object/wireless_repair/wave/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=item_display,tag=pc.teen_repair] at @s run function pc:object/teen_repair/main

## Mobs
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=marker,tag=pc.fx.fragile_slime.3] at @s run function pc:object/fragile_slime/debuff1/fx/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=item_display,tag=pc.fx.skeleton.2] at @s run function pc:object/skeleton/attack1/fx/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=item_display,tag=pc.fx.continu_skeleton.2] at @s run function pc:object/continu_skeleton/attack1/fx/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=marker,tag=pc.fx.spider.debuff1] at @s run function pc:object/spider/debuff1/fx/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=marker,tag=pc.fx.bat.buff1] at @s run function pc:object/bat/buff1/fx/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=marker,tag=pc.fx.dormancy_bat.buff1] at @s run function pc:object/dormancy_bat/buff1/fx/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=marker,tag=pc.fx.dormancy_bat.attack1] at @s run function pc:object/dormancy_bat/attack1/fx/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=item_display,tag=pc.fx.blaze.ball] at @s run function pc:object/blaze/attack1/fx/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=item_display,tag=pc.fx.magma_blaze.ball] at @s run function pc:object/magma_blaze/attack1/fx/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=marker,tag=pc.fx.rusty_silverfish.dust] at @s run function pc:object/rusty_silverfish/debuff1/dust/main

execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=item_display,tag=pc.mob.ender_eye] at @s run function pc:object/ender_eye/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=marker,tag=pc.fx.ender_eye.charge] at @s run function pc:object/ender_eye/attack1/charge/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=item_display,tag=pc.fx.ender_eye.eyes] at @s run function pc:object/ender_eye/attack3/eyes/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=marker,tag=pc.mob.ender_eye.gaze] at @s run function pc:object/ender_eye/attack2/gaze/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=item_display,tag=pc.mob.ender_eye.hole] at @s run function pc:object/ender_eye/attack2/hole/main

execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=item_display,tag=pc.mob.ender_dragon] at @s run function pc:object/ender_dragon/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=marker,tag=pc.fx.ender_dragon.blade1] at @s run function pc:object/ender_dragon/attack1/blade1/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=marker,tag=pc.fx.ender_dragon.blade2] at @s run function pc:object/ender_dragon/attack1/blade2/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=marker,tag=pc.fx.ender_dragon.shockwave] at @s run function pc:object/ender_dragon/attack2/shockwave/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=marker,tag=pc.fx.ender_dragon.charge] at @s run function pc:object/ender_dragon/attack2/charge/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=item_display,tag=pc.mob.ender_dragon.ball] at @s run function pc:object/ender_dragon/debuff1/ball/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=marker,tag=pc.fx.ender_dragon.around] at @s run function pc:object/ender_dragon/interphase/around/main