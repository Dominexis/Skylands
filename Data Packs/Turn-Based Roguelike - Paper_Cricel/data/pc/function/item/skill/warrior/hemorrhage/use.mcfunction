
execute as @e[tag=pc.grid.atker,type=minecraft:marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:item/skill/warrior/hemorrhage/2
function pc:sys/combat/turn/end_act

# fx
playsound minecraft:entity.player.attack.sweep master @a ~ ~1024 ~ 0 1.25 1
playsound pc:sys/blood_hit master @a ~ ~1024 ~ 0 1.5 0.5