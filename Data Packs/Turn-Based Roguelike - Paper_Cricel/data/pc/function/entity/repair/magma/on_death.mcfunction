
tag @e[tag=pc.grid.in_range,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] remove pc.grid.in_range
data modify storage pc:temp range set value {type:'1x1or0',mode:'in_range'}
function pc:sys/grid/range/use
execute as @e[tag=pc.grid.in_range,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/repair/magma/2/apply

# fx
particle minecraft:block{block_state:{Name:"minecraft:anvil"}} ~ ~0.25 ~ 0 0 0 0 30 force
particle minecraft:lava ~ ~0.25 ~ 0 0 0 1 30 force

playsound minecraft:entity.blaze.shoot master @a ~ ~1024 ~ 0 1.5 1
playsound minecraft:entity.player.hurt_on_fire master @a ~ ~1024 ~ 0 0 0.75
playsound minecraft:entity.puffer_fish.blow_up master @a ~ ~1024 ~ 0 0.75 1