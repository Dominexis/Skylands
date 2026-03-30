
# effect
execute if entity @s[gamemode=creative] run return fail

tag @s add pc.sys.looter
execute summon item_display run function pc:sys/game/combat/loot/obtain/get_item
tag @s remove pc.sys.looter

execute unless data storage pc:temp {loot:{"minecraft:custom_data":{pc:{category:"shop/campfire"}}}} run function pc:sys/game/combat/loot/obtain/2 with storage pc:temp loot."minecraft:custom_data".pc
execute if data storage pc:temp {loot:{"minecraft:custom_data":{pc:{category:"shop/campfire"}}}} run function pc:sys/game/combat/loot/obtain/2b with storage pc:temp loot."minecraft:custom_data".pc

# fx
scoreboard players remove #game.loot_count pc.main 1
execute if score #game.loot_count pc.main matches ..0 run function pc:sys/game/combat/loot/obtain/3 with storage pc:game combat.coord

    # Reset
clear @s *[custom_data~{pc:{sys.loot:true}}]
data remove storage pc:temp loot