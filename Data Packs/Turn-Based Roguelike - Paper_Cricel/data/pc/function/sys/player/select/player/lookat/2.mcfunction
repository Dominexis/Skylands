
# effect
scoreboard players add #temp pc.main 1
execute unless block ^ ^ ^0.5 #pc:transparent run function pc:sys/player/select/player/lookat/3
execute unless score #temp pc.main matches 100.. positioned ^ ^ ^0.5 if block ^ ^ ^ #pc:transparent run function pc:sys/player/select/player/lookat/2