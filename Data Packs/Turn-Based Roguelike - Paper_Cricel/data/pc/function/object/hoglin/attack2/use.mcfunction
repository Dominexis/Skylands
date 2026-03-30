
# effect
scoreboard players set #value pc.main 4
function pc:passive/effect/apply_grid {effect:crimson_area}

execute as @e[type=marker,tag=pc.intent.now,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:object/hoglin/attack2/2

# fx
playsound minecraft:entity.hoglin.attack master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1.25