
# fx
particle minecraft:dust{color:[0.718, 0.141, 0.161],scale:0.75f} ^ ^ ^-0.25 0 0 0 1 0 force

execute unless block ^ ^ ^0.5 #pc:sys/transparent run return run function pc:entity/skeleton_continu/attack1/fx/clear
execute if function pc:sys/entity/hitbox/ally run return run function pc:entity/skeleton_continu/attack1/fx/clear

execute unless entity @s[distance=..0.25] positioned ^ ^ ^0.25 run return run function pc:entity/skeleton_continu/attack1/fx/2