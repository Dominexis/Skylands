
# effect
scoreboard players add @s pc.hp 20
scoreboard players add @s pc.hpmax 20

# fx
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.1 20 force
playsound minecraft:entity.zombie_villager.cure master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] ~ ~ ~ 0.25 2 0.25
playsound minecraft:block.respawn_anchor.charge master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] ~ ~ ~ 1 0 1
function pc:fx/text/use {text:[{text:"Poison Affinity",color:"#59964f"}]}