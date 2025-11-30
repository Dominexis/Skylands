
# effect
summon item ~ ~ ~ {Tags:[pc.fx,pc.summon],Item:{id:player_head},Motion:[0.0d,0.5d,0.0d],PickupDelay:-1s,Age:-32768s}
data modify entity @e[type=item,tag=pc.summon,distance=..0.1,limit=1] Item set from entity @s equipment.head
tag @e[type=item,tag=pc.summon,distance=..0.1,limit=1] remove pc.summon

# fx
playsound minecraft:entity.player.death master @a[predicate=pc:player/ingame,predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0.75 1
particle item{item:redstone} ~ ~0.5 ~ 0.1 0.3 0.1 0.1 30 force
particle minecraft:poof ~ ~ ~ 0.2 0.4 0.2 0.1 20 force