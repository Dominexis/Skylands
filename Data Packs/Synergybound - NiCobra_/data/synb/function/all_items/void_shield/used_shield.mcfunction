playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 1 1
scoreboard players set #rec synb.Tmp.Arg 0
execute anchored eyes run function synb:all_items/void_shield/_rec_ray
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.arg.damaged] remove synb.arg.damaged