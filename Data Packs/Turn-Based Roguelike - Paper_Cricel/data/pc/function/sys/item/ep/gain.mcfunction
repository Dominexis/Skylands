## (score) #value pc.main

scoreboard players operation @s pc.ep += #value pc.main
execute if score @s pc.ep matches ..-1 run scoreboard players set @s pc.ep 0

# function pc:sys/utils/passive/use {passive:gain_ep}