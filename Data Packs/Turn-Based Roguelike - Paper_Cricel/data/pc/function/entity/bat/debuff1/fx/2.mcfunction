
# fx
particle squid_ink ~ ~ ~ 0 0 0 0 0 force

execute unless entity @e[tag=pc.entity.bat.debuff1.pos2,type=marker,distance=..0.5,limit=1] positioned ^ ^ ^0.5 run return run function pc:entity/bat/debuff1/fx/2
execute facing entity @e[tag=pc.entity.bat.debuff1.pos3,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] feet run function pc:entity/bat/debuff1/fx/3