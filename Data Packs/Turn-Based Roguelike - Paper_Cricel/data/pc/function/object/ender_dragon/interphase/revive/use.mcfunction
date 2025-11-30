
# effect
function pc:fx/undying_shell/reborn with entity @s data

# fx
scoreboard players set #range pc.main 0
execute positioned ~ ~0.5 ~ facing entity @e[type=minecraft:item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.mob.ender_dragon,limit=1] feet run function pc:object/ender_dragon/interphase/revive/loop