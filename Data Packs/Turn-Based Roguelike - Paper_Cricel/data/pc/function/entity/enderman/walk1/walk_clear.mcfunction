
rotate @s facing entity @e[tag=pc.intent.now,tag=pc.intent.attack,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] feet
function pc:sys/entity/schedule/use {func:"execute positioned ~ ~1 ~ run function pc:entity/enderman/walk1/fx/use",delay:10}

# fx
particle minecraft:portal ~ ~2 ~ 0.3 0.9 0.3 1 90 force
particle minecraft:large_smoke ~ ~2 ~ 0.3 0.9 0.3 0.025 30 force