
# effect
execute as @e[type=minecraft:item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.fx.bow] at @s run function pc:item/skill/bow/fx/main
execute as @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.fx.panic_strike] at @s run function pc:item/skill/panic_strike/fx/main
execute as @e[type=minecraft:item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.fx.cactus] at @s run function pc:item/skill/cactus/fx/main
execute as @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.fx.energy_overdraft] at @s run function pc:item/skill/energy_overdraft/fx/main
execute as @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.fx.saber_strike] at @s run function pc:item/skill/saber_strike/fx/main
execute as @n[type=minecraft:marker,distance=..100,tag=pc.fx.attack_momentum] at @s run function pc:item/skill/attack_momentum/fx/main