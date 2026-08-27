
scoreboard players add @s pc.duration 1

execute if score @s pc.duration matches 60 run function pc:entity/ender_dragon/debuff2/wave/clear

# fx
function pc:entity/ender_dragon/debuff2/wave/digit/use