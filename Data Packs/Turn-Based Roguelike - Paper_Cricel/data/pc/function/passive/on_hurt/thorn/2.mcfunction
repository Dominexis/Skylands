
# effect
#tellraw @a ["Damage : ",{score:{name:"#damage",objective:"pc.main"}},x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0]
#scoreboard players operation #damage pc.main /= #2 sl.value
scoreboard players set #damage pc.main 40
data modify storage pc:temp damage set value {}
function pc:sys/object/damage/victim

# fx
particle minecraft:electric_spark ~ ~ ~ 0.4 0.4 0.4 0 30 force
playsound minecraft:entity.player.hurt_sweet_berry_bush master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 2
playsound minecraft:entity.player.hurt_sweet_berry_bush master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 2
playsound minecraft:block.beehive.shear master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 2
playsound minecraft:block.beehive.shear master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 2