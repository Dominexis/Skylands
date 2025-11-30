
# effect
execute store result score #delay pc.main run data get storage pc:temp schedule[0].delay
execute store result storage pc:temp schedule[0].delay int 1 run scoreboard players remove #delay pc.main 1
execute if score #delay pc.main matches ..0 run function pc:sys/utils/schedule/3 with storage pc:temp schedule[0]
execute unless score #delay pc.main matches ..0 run data modify storage pc:game schedule append from storage pc:temp schedule[0]

data remove storage pc:temp schedule[0]
execute if data storage pc:temp schedule[0] run function pc:sys/utils/schedule/2