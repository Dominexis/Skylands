# As/At : mage (enemy)
##

# Spawn runners
execute if score @s[tag=!synb.attr.minions_spawned1] synb.Status.Health matches ..500 positioned ~0.5 ~ ~0.5 run function synb:enemies/spawn_enemies {class:"minion",variant:1}
execute if score @s[tag=!synb.attr.minions_spawned1] synb.Status.Health matches ..500 positioned ~-0.5 ~ ~0.5 run function synb:enemies/spawn_enemies {class:"minion",variant:1}
execute if score @s[tag=!synb.attr.minions_spawned1] synb.Status.Health matches ..500 positioned ~0.5 ~ ~-0.5 run function synb:enemies/spawn_enemies {class:"minion",variant:1}
execute if score @s[tag=!synb.attr.minions_spawned1] synb.Status.Health matches ..500 positioned ~-0.5 ~ ~-0.5 run function synb:enemies/spawn_enemies {class:"minion",variant:1}
execute if score @s[tag=!synb.attr.minions_spawned1] synb.Status.Health matches ..500 run tag @s add synb.attr.minions_spawned1

# Spawn minions
execute if score @s[tag=!synb.attr.minions_spawned2] synb.Status.Health matches ..200 positioned ~0.8 ~ ~-0.7 run function synb:enemies/spawn_enemies {class:"minion",variant:1}
execute if score @s[tag=!synb.attr.minions_spawned2] synb.Status.Health matches ..200 positioned ~0.8 ~ ~0.7 run function synb:enemies/spawn_enemies {class:"minion",variant:1}
execute if score @s[tag=!synb.attr.minions_spawned2] synb.Status.Health matches ..200 positioned ~-0.8 ~ ~ run function synb:enemies/spawn_enemies {class:"minion",variant:1}
execute if score @s[tag=!synb.attr.minions_spawned2] synb.Status.Health matches ..200 run tag @s add synb.attr.minions_spawned2

# Bombs
execute store result score #rand synb.Tmp.Expr run random value 0..120 synb.r:misc_rng
execute if score #rand synb.Tmp.Expr matches ..1 unless score @s synb.Enemy.GenericCD matches 1.. run function synb:enemies/abilities/_prepare_bombs

execute if score @s[tag=synb.attr.extra_bomb] synb.Enemy.GenericCD matches 210 at @e[type=minecraft:marker,tag=synb.mark.spawnpos,distance=..40,sort=random,limit=1] run function synb:enemies/abilities/_spawn_bomb
execute if score @s synb.Enemy.GenericCD matches 180 at @r[team=sl.player,tag=synb.attr.player_in_arena,distance=..40] run function synb:enemies/abilities/_spawn_bomb
execute if score @s synb.Enemy.GenericCD matches 150 at @e[type=minecraft:marker,tag=synb.mark.spawnpos,distance=..40,sort=random,limit=1] run function synb:enemies/abilities/_spawn_bomb
execute if score @s synb.Enemy.GenericCD matches 120 at @r[team=sl.player,tag=synb.attr.player_in_arena,distance=..40] run function synb:enemies/abilities/_spawn_bomb

execute if score @s synb.Enemy.GenericCD matches 120 run kill @e[type=minecraft:item_display,tag=synb.attr.mage_orbit,distance=..3,limit=1,sort=nearest]