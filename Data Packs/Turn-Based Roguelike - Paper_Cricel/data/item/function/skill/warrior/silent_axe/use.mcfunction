
execute as @e[tag=pc.grid.atker,type=minecraft:marker,limit=1] at @s run function item:skill/warrior/silent_axe/2
function sys:combat/turn/end_act

# fx
playsound minecraft:item.mace.smash_air master @a ~ ~1024 ~ 0 1.5 0.5
playsound sys:squeak master @a ~ ~1024 ~ 0 0.75 0.5