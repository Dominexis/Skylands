
# fx
particle squid_ink ~ ~ ~ 0 0 0 0 0 force

execute unless entity @e[tag=pc.entity.bat.debuff1.pos4,type=marker,distance=..0.5,limit=1] positioned ^ ^ ^0.5 run return run function entity:bat/debuff1/fx/4
execute facing entity @e[tag=pc.entity.bat.debuff1.pos1,type=marker,limit=1] feet run function entity:bat/debuff1/fx/5