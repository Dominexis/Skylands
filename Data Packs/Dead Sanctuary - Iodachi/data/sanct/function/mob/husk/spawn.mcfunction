summon minecraft:husk ~ ~ ~ {Tags:["sanct.damage_target"],equipment:{},attributes:[{id:"minecraft:spawn_reinforcements",base:0},{id:"minecraft:max_health",base:10}],IsBaby:0b,CanPickUpLoot:0b,PersistenceRequired:1b,DeathLootTable:"sanct:drop/husk"}

execute as @e[type=minecraft:husk,limit=1,distance=0] run function sanct:mob/husk/spawn_data