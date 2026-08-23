
execute unless entity @e[tag=pc.entity.death,predicate=pc:sys/entity/repair,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] run return fail

function pc:sys/utils/local_thread/atker/save {id:"effect.repair_material"}

scoreboard players set #damage pc.main 12
data modify storage pc:temp damage set value {mode:"heal"}
scoreboard players set @s pc.entity.victim 1
function pc:sys/entity/dmg/atker

function pc:sys/utils/local_thread/atker/load {id:"effect.repair_material"}

# fx
particle minecraft:trial_spawner_detection_ominous ~ ~0.25 ~ 0.5 0.3 0.5 0 10 force
playsound minecraft:entity.iron_golem.repair master @a ~ ~1024 ~ 0 0.75 1
playsound minecraft:entity.witch.drink master @a ~ ~1024 ~ 0 1.25 1