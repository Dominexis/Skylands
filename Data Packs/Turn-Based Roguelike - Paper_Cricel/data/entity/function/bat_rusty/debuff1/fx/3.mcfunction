
# fx
particle squid_ink ~ ~ ~ 0 0 0 0 0 force

execute unless entity @e[tag=pc.entity.bat_rusty.debuff1.pos3,type=marker,distance=..0.5,limit=1] positioned ^ ^ ^0.5 run return run function entity:bat_rusty/debuff1/fx/3
execute facing entity @e[tag=pc.entity.bat_rusty.debuff1.pos4,type=marker,limit=1] feet run function entity:bat_rusty/debuff1/fx/4