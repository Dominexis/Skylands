# Replaces the top ladder if the top trapdoor is flipped
setblock -1792 246 -6406 copper_trapdoor[half=top, open=true]
setblock -1792 246 -6405 ladder[facing=south]
execute as @e[type=item,nbt={Item:{id:"minecraft:ladder"}},x=-1775,y=226,z=-6376,distance=..250] run kill @s