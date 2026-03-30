
# effect
summon minecraft:item ~ ~ ~ {Tags:["pc.fx","pc.summon"],Item:{id:"minecraft:player_head"},Motion:[0.0d,0.5d,0.0d],PickupDelay:-1s,Age:-32768s}
data modify entity @e[type=minecraft:item,distance=..0.1,tag=pc.summon,limit=1] Item set from entity @s equipment.head
tag @e[type=minecraft:item,distance=..0.1,tag=pc.summon,limit=1] remove pc.summon

# fx
playsound minecraft:entity.player.death master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] ~ ~ ~ 1 0.75 1
particle minecraft:item{item:{id:"minecraft:redstone"}} ~ ~0.5 ~ 0.1 0.3 0.1 0.1 30 force
particle minecraft:poof ~ ~ ~ 0.2 0.4 0.2 0.1 20 force