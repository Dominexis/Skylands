
# effect
scoreboard players set #value pc.main 400
function pc:passive/shield/use

execute as @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.intent.now] at @s run function pc:object/rusty_silverfish/debuff1/2

# fx
function pc:object/rusty_silverfish/debuff1/dust/use
playsound minecraft:item.trident.riptide_3 master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 0
playsound minecraft:entity.panda.sneeze master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 0