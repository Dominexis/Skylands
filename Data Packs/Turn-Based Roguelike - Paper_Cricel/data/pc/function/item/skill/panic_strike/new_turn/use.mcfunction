
# effect
tag @s add pc.sys.atker
scoreboard players set @e[predicate=pc:object/mob,type=!player,type=!player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] pc.object.is_victim 1

scoreboard players set #damage pc.main 10
data modify storage pc:temp damage set value {source:{category:skill,item:panic_strike}}
function pc:sys/object/damage/atker

function pc:sys/grid/select/clear
tag @s remove pc.sys.atker

execute if data entity @s data.effect.oneuse_strength run function pc:passive/end_act/oneuse_strength/use

# fx
function pc:item/skill/panic_strike/fx/use
playsound minecraft:item.mace.smash_ground_heavy master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0
particle minecraft:gust_emitter_large ~ ~ ~ 3 0 3 0 5 force