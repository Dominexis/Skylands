
# effect
scoreboard players add @s pc.fx.sleep 1

execute if score @s pc.fx.sleep matches 15.. run function pc:fx/sleep/z/use
execute if score @s pc.fx.sleep matches 15.. run scoreboard players reset @s pc.fx.sleep