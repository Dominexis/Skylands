
execute if score #undyne pc.main matches 1 run return fail
execute unless score $combat.start pc.game matches 1 run return fail

tag @s add pc.entity.death
execute unless entity @e[scores={pc.entity.player=1},tag=!pc.entity.death,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] run function pc:sys/combat/end/use {result:lose}