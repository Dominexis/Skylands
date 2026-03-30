
# Continue clock
schedule function sanct:plot/danger/clock 1200
data modify entity @e[x=-2310,y=28,z=2307,distance=..1,type=minecraft:wither,limit=1] Health set value 0.0000001f

# Increase stat
execute unless score #no_danger sanct.numbers matches 1.. run function sanct:plot/danger/get_power_difference
loot replace block -2323 83 2311 contents loot sanct:danger/select_target
execute if score #no_danger sanct.numbers matches 1.. run return run function sanct:spell/ritual/no_danger/increase_stat with block -2323 83 2311 item.components."minecraft:custom_data".arguments
function sanct:plot/danger/increase_danger with block -2323 83 2311 item.components."minecraft:custom_data".arguments

# Sound
execute as @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,team=sl.player] at @s run playsound minecraft:ambient.cave hostile @s ~ ~ ~ 0.5 2 0.5
execute as @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,team=sl.player] at @s run playsound minecraft:ambient.cave hostile @s ~ ~ ~ 0.5 2 0.5

# Slot loot spell effect
execute as @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player,scores={sanct.spell.slot_loot=1..}] at @s rotated ~ 0 positioned ^ ^1.2 ^1 run function sanct:spell/buff/slot_loot/loot