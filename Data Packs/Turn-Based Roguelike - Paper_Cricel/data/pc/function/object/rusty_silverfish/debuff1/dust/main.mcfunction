
# effect
scoreboard players add @s pc.duration 1
tp @s ^ ^ ^0.4

scoreboard players operation #temp pc.main = @s pc.duration
scoreboard players operation #temp pc.main %= #5 sl.value
execute if score #temp pc.main matches 0 run function pc:object/rusty_silverfish/debuff1/dust/circle
execute if score @s pc.duration matches 40.. run kill @s

# fx
particle dust{color:[0.780,0.545,0.282],scale:2} ~ ~ ~ 1 0.5 1 0 4 force
particle angry_villager ~ ~ ~ 1 0.2 1 0 1 force