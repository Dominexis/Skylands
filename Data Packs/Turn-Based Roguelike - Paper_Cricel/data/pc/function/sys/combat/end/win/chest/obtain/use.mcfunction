
execute if entity @s[gamemode=creative] run return fail

function pc:sys/combat/end/win/chest/obtain/2
data modify storage pc:temp loot set from entity 20060423-0-0-0-1 item.components."minecraft:custom_data".pc
function pc:sys/combat/end/win/chest/obtain/3

clear @s *[minecraft:custom_data~{pc:{sys:{loot:true}}}]
data remove storage pc:temp loot

# fx
scoreboard players remove #game.loot_count pc.main 1
execute if score #game.loot_count pc.main matches ..0 run function pc:sys/combat/end/win/chest/obtain/4 with storage pc:game combat.coord