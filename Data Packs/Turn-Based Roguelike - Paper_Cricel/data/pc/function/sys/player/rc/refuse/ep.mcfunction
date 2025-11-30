
# fx
execute as @p[predicate=sl:player,tag=pc.user,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:fx/refuse_info/use {text:[{text:"Not enough Energy"}]}

# effect
return fail