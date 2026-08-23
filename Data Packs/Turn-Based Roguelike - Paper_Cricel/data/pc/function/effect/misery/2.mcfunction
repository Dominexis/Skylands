
scoreboard players set @s pc.entity.victim 1

execute store result score #damage pc.main run data get entity @s data.effects[{id:misery}].value
data modify storage pc:temp damage set value {lose_hp:1b}
function pc:sys/entity/dmg/atker

scoreboard players reset @s pc.entity.victim