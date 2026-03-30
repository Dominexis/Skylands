# As : player
# Args :
#   - projectiles (storage arg)
#   - nb_projectiles (score arg)
##

execute unless entity @s[tag=synb.item.firework.loaded] run data modify storage synb.d:tmp args.projectiles append value {count:1,id:"minecraft:arrow"}
# >>> SPECIAL LOGIC : firework
execute if entity @s[tag=synb.item.firework.loaded] run data modify storage synb.d:tmp args.projectiles append value {count:1,id:"minecraft:firework_rocket",components:{fireworks:{flight_duration:0}}}
# <<<

scoreboard players remove #nb_projectiles synb.Tmp.Arg 1
execute if score #nb_projectiles synb.Tmp.Arg matches 0.. run function synb:itemengine/mod/inv/_create_projectiles_data