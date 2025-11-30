
scoreboard players set #value pc.main -1
execute if data entity @s data.brain.buff2 run function pc:sys/utils/math/calculate {id:"entity @s data.brain.buff2"}