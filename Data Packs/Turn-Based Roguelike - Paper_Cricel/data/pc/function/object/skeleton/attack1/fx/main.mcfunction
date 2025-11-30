
# effect
scoreboard players add @s pc.duration 1

tp @s ^ ^ ^1
execute unless block ^ ^ ^1 #pc:transparent run function pc:object/skeleton/attack1/fx/clear
execute if score @s pc.duration matches 20.. run function pc:object/skeleton/attack1/fx/clear

# fx
particle dust{color:[0.671,1.000,0.933],scale:1} ~ ~ ~ 0 0 0 1 0 force