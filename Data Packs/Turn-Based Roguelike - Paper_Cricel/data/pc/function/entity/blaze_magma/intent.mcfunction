
execute store result score #index pc.main run data get entity @s data.combat.index
scoreboard players add #index pc.main 1
execute store result entity @s data.combat.index int 1 run scoreboard players operation #index pc.main %= #3 sl.value

execute if score #index pc.main matches 0 run return run data modify storage pc:temp intent.intents set value [{id:"buff1"}]
execute if score #index pc.main matches 2 run return run data modify storage pc:temp intent.intents set value [{id:"attack2"}]

data modify storage pc:temp range set value {type:'5x5',mode:'detect',target:'ally'}
execute if function pc:sys/grid/range/use run return run data modify storage pc:temp intent.intents set value [{id:"attack1"}]

data modify storage pc:temp intent.intents set value [{id:"walk1"}]