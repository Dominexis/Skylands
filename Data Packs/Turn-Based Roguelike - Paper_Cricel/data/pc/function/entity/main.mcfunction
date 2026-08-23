
## General
execute as @e[tag=pc.sys.object.motion,type=item,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/entity/repel/main

## Allies
execute as @e[tag=pc.entity.repair.wireless,type=text_display,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/repair/wireless/fx/main
execute as @e[tag=pc.entity.repair.curious,type=item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/repair/curious/main

## Enemies
execute as @e[tag=pc.entity.slime.attack2,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/slime/attack2/main

execute as @e[tag=pc.entity.skeleton.attack1,type=item_display,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/skeleton/attack1/main
execute as @e[tag=pc.entity.skeleton_continu.attack1,type=item_display,limit=3,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/skeleton_continu/attack1/fx/main

execute as @e[tag=pc.entity.iron_golem.attack2.fx1,type=item_display,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/iron_golem/attack2/fx1/main
execute as @e[tag=pc.entity.iron_golem.attack2.fx2,type=item_display,limit=9,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/iron_golem/attack2/fx2/main

execute as @e[tag=pc.entity.spider.attack2,type=block_display,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/spider/attack2/fx/main
execute as @e[tag=pc.entity.spider_cave.walk1,type=cave_spider,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/spider_cave/walk1/fx/main

execute as @e[tag=pc.entity.bat.attack1,type=marker,limit=6,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/bat/attack1/fx/main
execute as @e[tag=pc.entity.bat.debuff1.pos1,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/bat/debuff1/fx/main
execute as @e[tag=pc.entity.bat_rusty,type=bat,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/bat_rusty/main
execute as @e[tag=pc.entity.bat_rusty.attack1,type=marker,limit=6,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/bat_rusty/attack1/fx/main
execute as @e[tag=pc.entity.bat_rusty.debuff1.pos1,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/bat_rusty/debuff1/fx/main

execute as @e[tag=pc.entity.enderman.walk1,type=item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/enderman/walk1/fx/main
execute as @e[tag=pc.entity.enderman.attack3,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/enderman/attack3/fx/main

execute as @e[tag=pc.entity.piglin_heal.buff2,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/piglin_heal/buff2/fx/main
execute as @e[tag=pc.entity.piglin_heal.debuff1,type=marker,limit=8,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/piglin_heal/attack1/fx/main

execute as @e[tag=pc.entity.hoglin.attack1,type=hoglin,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/hoglin/attack1/main
execute as @e[tag=pc.entity.hoglin.attack2,type=hoglin,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/hoglin/attack2/main
execute as @e[tag=pc.entity.hoglin_tnt.attack1,type=hoglin,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/hoglin_tnt/attack1/main
execute as @e[tag=pc.entity.hoglin_tnt.attack2,type=hoglin,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/hoglin_tnt/attack2/main

execute as @e[tag=pc.entity.blaze.attack1,type=item_display,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/blaze/attack1/fx/main
execute as @e[tag=pc.entity.blaze.attack2,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/blaze/attack2/fx/main
execute as @e[tag=pc.entity.blaze_magma.attack1,type=item_display,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/blaze_magma/attack1/fx/main
execute as @e[tag=pc.entity.blaze_magma.attack2,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/blaze_magma/attack2/fx/main

execute as @e[tag=pc.entity.ender_eye,type=item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/ender_eye/main
execute as @e[tag=pc.entity.ender_eye.attack1,type=item_display,limit=3,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/ender_eye/attack1/fx/main
execute as @e[tag=pc.entity.ender_eye.attack2,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/ender_eye/attack2/fx/main
execute as @e[tag=pc.entity.ender_eye.black_hole,type=interaction,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/ender_eye/black_hole/main
execute as @e[tag=pc.entity.ender_eye.gaze,type=marker,limit=4,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/ender_eye/fx/gaze/main

execute as @e[tag=pc.entity.ender_dragon.skin,type=item_display,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/ender_dragon/fx/main
execute as @e[tag=pc.entity.ender_dragon.attack1.blade1,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/ender_dragon/attack1/blade1/main
execute as @e[tag=pc.entity.ender_dragon.attack1.blade2,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/ender_dragon/attack1/blade2/main
execute as @e[tag=pc.entity.ender_dragon.attack2.charge,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/ender_dragon/attack2/charge/main
execute as @e[tag=pc.entity.ender_dragon.attack2.ball,type=item_display,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/ender_dragon/debuff1/ball/main
execute as @e[tag=pc.entity.ender_dragon.debuff2.charge,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/ender_dragon/debuff2/charge/main
execute as @e[tag=pc.entity.ender_dragon.debuff2.wave,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/ender_dragon/debuff2/wave/main
execute as @e[tag=pc.entity.ender_dragon.debuff2.wave.border,type=text_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/ender_dragon/debuff2/wave/border/main
execute as @e[tag=pc.entity.ender_dragon.debuff2.wave.digit,type=text_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/ender_dragon/debuff2/wave/digit/main
execute as @e[tag=pc.entity.ender_dragon.buff1.around,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/ender_dragon/buff1/around/main