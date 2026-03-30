
# effect
function pc:sys/grid/select/mob

scoreboard players set #damage pc.main 0
execute as @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1,predicate=pc:object/victim] if data entity @s data.effect.vulnerable run function pc:item/skill/shut_up_of_axe/3
scoreboard players add #damage pc.main 80
function pc:sys/object/damage/atker

function pc:sys/grid/select/clear

# fx
particle minecraft:glow_squid_ink ~ ~1 ~ 0 0 0 0.2 3 force
