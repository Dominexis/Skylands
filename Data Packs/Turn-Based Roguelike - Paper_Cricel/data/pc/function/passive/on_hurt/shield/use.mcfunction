
execute if data storage pc:temp damage.display run return fail
execute if data storage pc:temp damage.bypass.shield run return fail

# Value
execute store result score #value pc.main run data get entity @s data.shield
scoreboard players operation #value pc.main -= #damage pc.main

execute if score #value pc.main matches 0.. run function pc:passive/on_hurt/shield/block
execute if score #value pc.main matches ..-1 run function pc:passive/on_hurt/shield/break

function pc:sys/utils/math/set {id:"entity @s data.shield"}