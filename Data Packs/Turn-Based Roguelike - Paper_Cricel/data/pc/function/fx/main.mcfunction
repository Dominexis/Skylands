
# effect
execute as @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.fx.debuff.user,predicate=pc:object/all] at @s run function pc:fx/debuff/main
execute as @e[type=minecraft:text_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.start_button.tip] at @s run function pc:fx/start_button/tip/main
execute as @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.fx.summon_mob] at @s run function pc:fx/summon_mob/main
execute as @e[type=minecraft:text_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.fx.hover_text] at @s run function pc:fx/text/main
execute as @e[type=minecraft:text_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.fx.buff] at @s run function pc:fx/buff/main
execute as @e[type=minecraft:text_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.fx.debuff.icon] at @s run function pc:fx/debuff/icon/main
execute as @e[type=minecraft:bat,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.fx.sleep] at @s run function pc:fx/sleep/main
execute as @e[type=minecraft:text_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.fx.sleep.z] at @s run function pc:fx/sleep/z/main
execute as @e[type=minecraft:item,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.fx.show_dmg] at @s run function pc:fx/show_dmg/main
execute as @e[type=minecraft:silverfish,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.fx.silverfish] at @s run function pc:fx/silverfish/main
execute as @e[type=minecraft:silverfish,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.fx.rusty_skin] at @s run function pc:fx/rusty_skin/main
execute as @e[type=minecraft:item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.fx.dragonbreath_area.dust] at @s run function pc:fx/dragonbreath_area/dust/main
execute as @e[type=minecraft:item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.fx.undying_shell] at @s run function pc:fx/undying_shell/main

execute as @e[type=minecraft:block_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.effect.fire_area] at @s run function pc:fx/fire_area/main
execute as @e[type=minecraft:block_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.effect.rail_area] at @s run function pc:fx/rail_area/main
execute as @e[type=minecraft:item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.effect.crimson_area] at @s run function pc:fx/crimson_area/main
execute as @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.effect.dragonbreath_area] at @s run function pc:fx/dragonbreath_area/main

function pc:item/main
function pc:object/main