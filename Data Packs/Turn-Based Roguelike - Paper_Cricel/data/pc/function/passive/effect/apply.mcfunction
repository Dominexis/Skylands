# exe : object

# effect
$function pc:fx/apply_effect/$(effect)
$function pc:sys/utils/math/calculate {id:"entity @s data.effect.$(effect)"}

# fx
function pc:sys/object/hover_info/modify
execute as @n[type=minecraft:marker,distance=..100,tag=pc.grid] at @s run function pc:sys/grid/effect/info/refresh