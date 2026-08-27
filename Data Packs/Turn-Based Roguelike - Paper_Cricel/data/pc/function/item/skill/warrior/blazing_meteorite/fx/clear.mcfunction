
execute as @e[tag=pc.grid.atker,type=minecraft:marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:item/skill/warrior/blazing_meteorite/2
function pc:sys/combat/turn/end_act

# fx
execute at @s positioned ~ ~0.1 ~ run function pc:item/skill/warrior/blazing_meteorite/fx/burst_fx

kill @s