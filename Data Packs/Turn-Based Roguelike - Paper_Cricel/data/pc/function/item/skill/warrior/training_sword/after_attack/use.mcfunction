
execute as @e[predicate=pc:sys/entity/victim,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:item/skill/warrior/training_sword/after_attack/2
function pc:item/skill/warrior/training_sword/after_attack/clear with storage pc:temp passive.current

# fx
execute at @e[tag=pc.player.selector,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] positioned ~ ~1.5 ~ facing entity @e[tag=pc.grid.atker,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] feet rotated ~ 0 run function pc:item/skill/warrior/training_sword/after_attack/fx