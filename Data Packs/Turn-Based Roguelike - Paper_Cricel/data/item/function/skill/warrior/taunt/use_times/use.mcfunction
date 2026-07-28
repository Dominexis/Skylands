
data modify storage pc:temp shield set value {value:12}
function sys:entity/shield/use

execute as @e[predicate=sys:entity/victim] at @s run function item:skill/warrior/taunt/use_times/2

function item:skill/warrior/taunt/use_times/clear with storage pc:temp rc_item

# fx
playsound minecraft:block.vault.insert_item_fail master @a ~ ~1024 ~ 0 1 1
playsound minecraft:block.iron.hit master @a ~ ~1024 ~ 0 0.75 1
playsound minecraft:entity.illusioner.prepare_blindness master @a ~ ~1024 ~ 0 1 1