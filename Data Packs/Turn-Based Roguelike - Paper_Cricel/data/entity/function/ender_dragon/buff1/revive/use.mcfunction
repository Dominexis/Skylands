
execute positioned ~ ~-1.75 ~ run return run function entity:effect/undying_shell/revive/3 with entity @s data.combat.dead

# fx
scoreboard players set #range pc.main 0
execute facing entity @e[tag=pc.entity.ender_dragon,type=minecraft:bee,limit=1] feet run function entity:ender_dragon/buff1/revive/loop