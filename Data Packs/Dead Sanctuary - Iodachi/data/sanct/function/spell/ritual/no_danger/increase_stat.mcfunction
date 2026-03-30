$execute store result score #count sanct.numbers store result score #var sanct.numbers run data get storage sanct:storage root.ritual.no_danger.message.$(stat)
$execute store result storage sanct:storage root.ritual.no_danger.message.$(stat) short 1 run scoreboard players add #count sanct.numbers 5

tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,team=sl.player] [{text:"",color:yellow,italic:true},{text:"PURITY INCREASED:\n",color:gold,bold:true,italic:false}," - Player ",{block:"-2323 83 2311",nbt:"item.components.\"minecraft:custom_data\".arguments.message"}," ",{score:{name:"#var",objective:"sanct.numbers"}},"% -> ",{score:{name:"#count",objective:"sanct.numbers"}},"%"]

$execute store result storage sanct:storage root.ritual.no_danger.stat.$(stat) float 0.01 run scoreboard players remove #count sanct.numbers 100

# Apply attributes to players
execute as @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player] run function sanct:spell/ritual/no_danger/remove_attributes
execute as @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player] run function sanct:spell/ritual/no_danger/apply with storage sanct:storage root.ritual.no_danger.stat

# Sound
execute as @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,team=sl.player] at @s run playsound minecraft:block.conduit.attack.target player @s ~ ~ ~ 0.5 2 0.5
execute as @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,team=sl.player] at @s run playsound minecraft:block.conduit.ambient.short player @s ~ ~ ~ 0.5 2 0.5

# Slot loot spell effect
execute as @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player,scores={sanct.spell.slot_loot=1..}] at @s rotated ~ 0 positioned ^ ^1.2 ^1 run function sanct:spell/buff/slot_loot/loot