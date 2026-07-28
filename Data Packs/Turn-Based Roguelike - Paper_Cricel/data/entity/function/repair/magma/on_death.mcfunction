
tag @e[tag=pc.grid.in_range,type=marker] remove pc.grid.in_range
data modify storage pc:temp range set value {type:'1x1or0',mode:'in_range'}
function sys:grid/range/use
execute as @e[tag=pc.grid.in_range,type=marker] at @s run function entity:repair/magma/2/apply

# fx
particle minecraft:block{block_state:{Name:"minecraft:anvil"}} ~ ~0.25 ~ 0 0 0 0 30 force
particle minecraft:lava ~ ~0.25 ~ 0 0 0 1 30 force

playsound minecraft:entity.blaze.shoot master @a ~ ~1024 ~ 0 1.5 1
playsound minecraft:entity.player.hurt_on_fire master @a ~ ~1024 ~ 0 0 0.75
playsound minecraft:entity.puffer_fish.blow_up master @a ~ ~1024 ~ 0 0.75 1