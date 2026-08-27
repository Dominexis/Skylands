
execute store result score #index pc.main run data get storage pc:temp summon.combat.index
scoreboard players add #index pc.main 1
execute store result storage pc:temp summon.combat.index int 1 run scoreboard players operation #index pc.main %= #4 sl.value

execute if score #index pc.main matches 0 run return run data modify storage pc:temp intent.intents set value [{id:"attack1"}]
execute if score #index pc.main matches 1 run return run data modify storage pc:temp intent.intents set value [{id:"buff2"}]
execute if score #index pc.main matches 2 run return run data modify storage pc:temp intent.intents set value [{id:"debuff1"}]
execute if score #index pc.main matches 3 run return run data modify storage pc:temp intent.intents set value [{id:"buff1"}]