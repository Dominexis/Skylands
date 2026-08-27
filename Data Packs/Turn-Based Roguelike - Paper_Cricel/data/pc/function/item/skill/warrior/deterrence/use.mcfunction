
execute as @e[tag=pc.grid.atker,type=minecraft:marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:item/skill/warrior/deterrence/2
function pc:sys/combat/turn/end_act

# fx
playsound minecraft:entity.player.attack.sweep master @a ~ ~1024 ~ 0 1.25 1
playsound minecraft:entity.copper_golem.spawn master @a ~ ~1024 ~ 0 0.75 1
playsound minecraft:block.resin.fall master @a ~ ~1024 ~ 0 0 1
playsound minecraft:entity.creaking.unfreeze master @a ~ ~1024 ~ 0 0.75 1
function pc:item/skill/warrior/deterrence/fx/use