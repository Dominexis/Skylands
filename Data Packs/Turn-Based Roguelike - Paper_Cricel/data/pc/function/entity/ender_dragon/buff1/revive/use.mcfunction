
execute positioned ~ ~-1.75 ~ run return run function pc:entity/effect/undying_shell/revive/3 with entity @s data.combat.dead

# fx
scoreboard players set #range pc.main 0
execute facing entity @e[tag=pc.entity.ender_dragon,type=minecraft:bee,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] feet run function pc:entity/ender_dragon/buff1/revive/loop