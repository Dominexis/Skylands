
scoreboard players add @s pc.duration 1

tp @s ^ ^ ^1
execute unless block ^ ^ ^1 #pc:sys/transparent at @e[tag=pc.grid,type=marker,distance=..2,limit=1] positioned ~ ~0.1 ~ run function pc:entity/ender_dragon/debuff1/ball/clear

execute if score @s pc.duration matches 50.. run function pc:sys/void

# fx