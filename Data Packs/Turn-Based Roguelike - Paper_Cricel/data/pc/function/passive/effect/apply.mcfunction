# exe : object

# effect
$function pc:fx/apply_effect/$(effect)
$function pc:sys/utils/math/calculate {id:'entity @s data.effect.$(effect)'}

# fx
function pc:sys/object/hover_info/modify
execute as @n[type=marker,tag=pc.grid,distance=..100] at @s run function pc:sys/grid/effect/info/refresh