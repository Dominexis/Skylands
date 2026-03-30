
# effect
scoreboard players add @s pc.fx.debuff 1
scoreboard players operation #temp pc.main = @s pc.fx.debuff
scoreboard players operation #temp pc.main %= #2 sl.value
execute if score #temp pc.main matches 0 run function pc:fx/debuff/icon/use

execute if score @s pc.fx.debuff matches 20.. run function pc:fx/debuff/clear