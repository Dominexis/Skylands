
# effect
scoreboard players set #value pc.main 400
function pc:passive/shield/use

execute as @e[type=marker,tag=pc.intent.now,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:object/rusty_silverfish/debuff1/2

# fx
function pc:object/rusty_silverfish/debuff1/dust/use
playsound minecraft:item.trident.riptide_3 master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0
playsound minecraft:entity.panda.sneeze master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0