
# effect
execute as @e[type=marker,tag=pc.grid.now,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:item/skill/panic_strike/2

    # Self
scoreboard players set #damage pc.main 10
data modify storage pc:temp damage set value {bypass:{shield:true,effect:true}}
function pc:sys/object/damage/victim
data remove storage pc:temp damage

# fx
playsound minecraft:entity.sheep.death master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 2
playsound minecraft:entity.pig.death master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0]