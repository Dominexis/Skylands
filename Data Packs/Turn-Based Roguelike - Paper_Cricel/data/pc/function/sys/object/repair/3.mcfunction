
# effect
$scoreboard players set #value pc.main $(disable_round)
$function pc:sys/utils/math/calculate {id:'entity @s data.effect.disable.$(category)'}
data modify storage pc:temp effect set from entity @s data.effect
execute as @p[predicate=sl:player,tag=pc.user,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/item/disable