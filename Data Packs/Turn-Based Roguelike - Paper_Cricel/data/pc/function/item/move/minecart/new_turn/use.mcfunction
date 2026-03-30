# exe : object

# effect
data modify storage pc:temp repair set value {value:3,category:move}
function pc:sys/item/durability/use

execute positioned ~-1.5 ~-100 ~-1.5 if entity @e[type=block_display,tag=pc.effect.rail_area,tag=!pc.effect.rail_area.clear,dx=2,dy=200,dz=2,limit=1] run function pc:item/move/minecart/energy/0

