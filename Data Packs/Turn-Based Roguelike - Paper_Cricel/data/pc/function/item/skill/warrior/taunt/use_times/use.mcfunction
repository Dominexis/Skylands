
data modify storage pc:temp shield set value {value:12}
function pc:sys/entity/shield/use

execute as @e[predicate=pc:sys/entity/victim,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:item/skill/warrior/taunt/use_times/2

function pc:item/skill/warrior/taunt/use_times/clear with storage pc:temp rc_item

# fx
playsound minecraft:block.vault.insert_item_fail master @a ~ ~1024 ~ 0 1 1
playsound minecraft:block.iron.hit master @a ~ ~1024 ~ 0 0.75 1
playsound minecraft:entity.illusioner.prepare_blindness master @a ~ ~1024 ~ 0 1 1