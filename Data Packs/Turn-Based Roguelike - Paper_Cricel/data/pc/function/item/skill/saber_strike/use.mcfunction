
# effect
function pc:sys/utils/math/get {id:"entity @s data.effect.weakness"}
execute if score #var pc.main matches 1.. run function pc:item/skill/saber_strike/swagger

execute as @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.grid.now] at @s run function pc:item/skill/saber_strike/2

# fx
function pc:item/skill/saber_strike/fx/use