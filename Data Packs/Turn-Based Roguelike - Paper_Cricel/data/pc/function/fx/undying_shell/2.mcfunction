
scoreboard players add #range pc.main 1

execute unless block ~ ~-1 ~ #pc:transparent run return run function pc:fx/undying_shell/3
execute unless score #range pc.main matches ..10 run return run function pc:fx/undying_shell/3

execute positioned ~ ~-1 ~ run function pc:fx/undying_shell/2