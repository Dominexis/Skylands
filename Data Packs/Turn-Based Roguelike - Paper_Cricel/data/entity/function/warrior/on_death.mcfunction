
summon minecraft:item ~ ~ ~ {Tags:["pc.fx","pc.summon"],Item:{id:"minecraft:player_head"},Motion:[0.0d,0.5d,0.0d],PickupDelay:-1s,Age:-32768s}
data modify entity @e[tag=pc.summon,type=minecraft:item,distance=..0.1,limit=1] Item set from entity @s equipment.head
tag @e[tag=pc.summon,type=minecraft:item,distance=..0.1,limit=1] remove pc.summon

# fx
playsound minecraft:entity.player.death master @a ~ ~1024 ~ 0 0.75 1
particle minecraft:cloud ~ ~0.25 ~ 0 0 0 0.1 30 force
particle minecraft:poof ~ ~ ~ 0.2 0.4 0.2 0.1 20 force