
execute store result score #damage pc.main run data get entity @s data.effect.regeneration
scoreboard players operation #damage pc.main *= #10 sl.value

scoreboard players set #value pc.main 0
function pc:sys/utils/math/set {id:"entity @s data.effect.regeneration"}