
# fx
particle minecraft:dust{color:[0.718, 0.141, 0.161],scale:0.75f} ^ ^ ^-0.25 0 0 0 1 0 force

execute align y unless block ^ ^1 ^0.5 #pc:sys/transparent run return run function pc:entity/skeleton/attack1/clear
execute if function pc:sys/entity/hitbox/any run return run function pc:entity/skeleton/attack1/clear

execute unless entity @s[distance=..0.25] positioned ^ ^ ^0.25 run return run function pc:entity/skeleton/attack1/2