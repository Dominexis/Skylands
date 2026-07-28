
# fx
particle dust_color_transition{from_color:[0.918, 0.894, 0.929],to_color:[0.502, 0.439, 0.573],scale:1.25} ~ ~ ~ 0.2 0.2 0.2 0 1 force

execute if function sys:entity/hitbox/ally run return run function entity:spider/attack2/fx/clear
execute unless block ~ ~ ~ #sys:transparent run return run function entity:spider/attack2/fx/clear

execute unless entity @s[distance=..0.5] positioned ^ ^ ^0.5 run function entity:spider/attack2/fx/2