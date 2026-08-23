
# fx
scoreboard players add @s pc.animation 1

execute if score @s pc.animation matches 2..40 run function pc:entity/ender_eye/fx/2
execute if score @s pc.animation matches 41..50 run function pc:entity/ender_eye/fx/3
execute if score @s pc.animation matches 51..80 run function pc:entity/ender_eye/fx/4

execute if score @s pc.animation matches 81.. run scoreboard players reset @s pc.animation