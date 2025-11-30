
# effect
summon marker ~ ~ ~ {Tags:[pc.fx,pc.fx.attack_momentum,"pc.summon"]}
scoreboard players operation @e[type=marker,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] sl.id = @s sl.id
tag @e[type=marker,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] remove pc.summon