
execute as @e[tag=pc.fx.summon_mob,type=marker] at @s run function sys:fx/summon_mob/main
execute as @e[tag=pc.fx.text,type=text_display] at @s run function sys:fx/text/main
execute as @e[tag=pc.fx.buff,type=text_display] at @s run function sys:fx/buff/main
execute as @e[tag=pc.fx.show_dmg,type=text_display] at @s run function sys:fx/show_dmg/main

execute as @e[tag=pc.effect.fire_area,type=block_display] at @s run function effect:fire_area/fx/main
execute as @e[tag=pc.effect.rail_area,type=block_display] at @s run function effect:rail_area/fx/main
execute as @e[tag=pc.effect.void_area,type=item_display] at @s run function effect:void_area/fx/main
execute as @e[tag=pc.effect.void_area.digit,type=text_display] at @s run function effect:void_area/fx/digit/main

execute as @e[tag=pc.effect.dragonbreath_area,type=marker] at @s run function effect:dragonbreath_area/fx/main
execute as @e[tag=pc.entity.dragonbreath_area.dust,type=item_display] at @s run function effect:dragonbreath_area/fx/dust/main
execute as @e[tag=pc.effect.undying_shell,type=item_display] at @s run function entity:effect/undying_shell/main

function item:main
function entity:main