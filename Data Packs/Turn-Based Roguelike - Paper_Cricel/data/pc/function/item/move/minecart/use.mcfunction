
# walk
function pc:sys/object/walk/player

# rail area
execute if function pc:item/move/minecart/is_rail run function pc:item/move/minecart/rail

# energy
execute store success score #pass pc.main at @s positioned ~-1.5 ~-100 ~-1.5 if entity @e[type=block_display,tag=pc.effect.rail_area,tag=!pc.effect.rail_area.clear,dx=2,dy=200,dz=2,limit=1]
execute if score #pass pc.main matches 1 run function pc:item/move/minecart/energy/0
execute if score #pass pc.main matches 0 run function pc:item/move/minecart/energy/2

# fx
playsound minecraft:block.lantern.place master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1
execute at @s run playsound minecraft:entity.minecart.riding master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 2