
data modify storage pc:temp effect set value {id:'fire_area',value:3}
execute as @e[tag=pc.grid.atker,type=minecraft:marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/effect/apply
function pc:sys/combat/turn/end_act

# fx
playsound minecraft:item.flintandsteel.use master @a ~ ~1024 ~ 0 1 1
playsound minecraft:entity.blaze.hurt master @a ~ ~1024 ~ 0 0 0.25