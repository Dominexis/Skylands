
# effect
scoreboard players add @s pc.duration 1

tp @s ^ ^ ^1
execute unless block ^ ^ ^1 #pc:transparent align y positioned ~ ~0.1 ~ run function pc:object/ender_dragon/debuff1/ball/clear

# fx