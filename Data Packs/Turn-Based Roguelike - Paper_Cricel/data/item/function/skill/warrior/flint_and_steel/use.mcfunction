
data modify storage pc:temp effect set value {id:'fire_area',value:3}
execute as @e[tag=pc.grid.atker,type=minecraft:marker,limit=1] at @s run function sys:effect/apply
function sys:combat/turn/end_act

# fx
playsound minecraft:item.flintandsteel.use master @a ~ ~1024 ~ 0 1 1
playsound minecraft:entity.blaze.hurt master @a ~ ~1024 ~ 0 0 0.25