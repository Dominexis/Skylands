import os

base_file = os.path.dirname(__file__)

cmds = []
for x in range(-3,4):
    for y in range(-3,4):
        for z in range(-3,4):
            cmds.append('execute positioned ~%s ~%s ~%s if block ~ ~ ~ minecraft:decorated_pot{item:{}} run function pc:sys/player/decorated_pot/punishment'%(x,y,z))

path_file = os.path.join(base_file, f"2.mcfunction")
with open(path_file,'w+') as f:
    f.write("\n".join(cmds))