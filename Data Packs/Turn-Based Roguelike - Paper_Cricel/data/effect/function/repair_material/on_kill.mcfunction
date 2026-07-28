
execute unless entity @e[tag=pc.entity.death,predicate=sys:entity/repair,limit=1] run return fail

function sys:utils/local_thread/atker/save {id:"effect.repair_material"}

scoreboard players set #damage pc.main 12
data modify storage pc:temp damage set value {mode:"heal"}
scoreboard players set @s pc.entity.victim 1
function sys:entity/dmg/atker

function sys:utils/local_thread/atker/load {id:"effect.repair_material"}

# fx
particle minecraft:trial_spawner_detection_ominous ~ ~0.25 ~ 0.5 0.3 0.5 0 10 force
playsound minecraft:entity.iron_golem.repair master @a ~ ~1024 ~ 0 0.75 1
playsound minecraft:entity.witch.drink master @a ~ ~1024 ~ 0 1.25 1