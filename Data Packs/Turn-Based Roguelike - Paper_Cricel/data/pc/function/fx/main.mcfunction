
# effect
execute as @e[predicate=pc:object/all,type=!player,tag=pc.fx.debuff.user,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:fx/debuff/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=text_display,tag=pc.start_button.tip] at @s run function pc:fx/start_button/tip/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=marker,tag=pc.fx.summon_mob] at @s run function pc:fx/summon_mob/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=text_display,tag=pc.fx.hover_text] at @s run function pc:fx/text/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=text_display,tag=pc.fx.buff] at @s run function pc:fx/buff/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=text_display,tag=pc.fx.debuff.icon] at @s run function pc:fx/debuff/icon/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=bat,tag=pc.fx.sleep] at @s run function pc:fx/sleep/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=text_display,tag=pc.fx.sleep.z] at @s run function pc:fx/sleep/z/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=item,tag=pc.fx.show_dmg] at @s run function pc:fx/show_dmg/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=silverfish,tag=pc.fx.silverfish] at @s run function pc:fx/silverfish/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=silverfish,tag=pc.fx.rusty_skin] at @s run function pc:fx/rusty_skin/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=item_display,tag=pc.fx.dragonbreath_area.dust] at @s run function pc:fx/dragonbreath_area/dust/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=item_display,tag=pc.fx.undying_shell] at @s run function pc:fx/undying_shell/main

execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=block_display,tag=pc.effect.fire_area] at @s run function pc:fx/fire_area/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=block_display,tag=pc.effect.rail_area] at @s run function pc:fx/rail_area/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=item_display,tag=pc.effect.crimson_area] at @s run function pc:fx/crimson_area/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=marker,tag=pc.effect.dragonbreath_area] at @s run function pc:fx/dragonbreath_area/main

function pc:item/main
function pc:object/main