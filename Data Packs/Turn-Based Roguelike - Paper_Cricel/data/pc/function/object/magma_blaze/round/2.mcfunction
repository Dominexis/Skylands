
# effect
tag @s remove pc.effect.thorn.last_for_1_round
data remove entity @s data.effect.thorn

# fx
function pc:fx/text/use {text:[{text:"Thorn Wears Off",color:"gray"}]}
playsound minecraft:block.iron_trapdoor.close master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1.5
playsound minecraft:entity.fox.aggro master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 0