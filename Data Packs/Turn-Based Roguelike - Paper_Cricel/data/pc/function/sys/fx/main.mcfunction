
execute as @e[tag=pc.fx.summon_mob,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/fx/summon_mob/main
execute as @e[tag=pc.fx.text,type=text_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/fx/text/main
execute as @e[tag=pc.fx.buff,type=text_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/fx/buff/main
execute as @e[tag=pc.fx.show_dmg,type=text_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/fx/show_dmg/main

execute as @e[tag=pc.effect.fire_area,type=block_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:effect/fire_area/fx/main
execute as @e[tag=pc.effect.rail_area,type=block_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:effect/rail_area/fx/main
execute as @e[tag=pc.effect.void_area,type=item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:effect/void_area/fx/main
execute as @e[tag=pc.effect.void_area.digit,type=text_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:effect/void_area/fx/digit/main

execute as @e[tag=pc.effect.dragonbreath_area,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:effect/dragonbreath_area/fx/main
execute as @e[tag=pc.entity.dragonbreath_area.dust,type=item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:effect/dragonbreath_area/fx/dust/main
execute as @e[tag=pc.effect.undying_shell,type=item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/effect/undying_shell/main

function pc:item/main
function pc:entity/main