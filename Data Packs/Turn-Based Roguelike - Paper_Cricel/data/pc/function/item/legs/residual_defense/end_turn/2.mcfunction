
scoreboard players operation #value pc.main = @s pc.ep
execute store result storage pc:temp shield.value int 1 run scoreboard players operation #value pc.main *= #3 sl.value
function pc:sys/entity/shield/use

# fx
particle minecraft:end_rod ~ ~0.25 ~ 0 0 0 0.1 10 force
particle minecraft:trial_spawner_detection_ominous ~ ~0.25 ~ 0.5 0 0.5 0 5 force
playsound minecraft:block.note_block.bell master @a ~ ~1024 ~ 0 0 1
playsound minecraft:block.bell.resonate master @a ~ ~1024 ~ 0 2 1