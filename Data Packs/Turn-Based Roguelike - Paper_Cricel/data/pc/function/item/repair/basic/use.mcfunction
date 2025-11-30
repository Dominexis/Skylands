
# effect
execute as @e[type=marker,tag=pc.grid.now,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:object/basic_repair/summon

execute if data storage pc:settings {gameplay:{tutorial:true}} unless data storage pc:game tutorial.summon_repair run schedule function pc:item/repair/basic/tutorial 1s