
# effect
execute as @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.grid.now] at @s run function pc:item/skill/fading_compass/2

# fx
particle minecraft:sneeze ~ ~0.1 ~ 1.0 0 0.0 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ 0.985 0 0.174 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ 0.94 0 0.342 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ 0.866 0 0.5 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ 0.766 0 0.643 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ 0.643 0 0.766 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ 0.5 0 0.866 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ 0.342 0 0.94 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ 0.174 0 0.985 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ 0.0 0 1.0 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ -0.174 0 0.985 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ -0.342 0 0.94 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ -0.5 0 0.866 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ -0.643 0 0.766 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ -0.766 0 0.643 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ -0.866 0 0.5 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ -0.94 0 0.342 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ -0.985 0 0.174 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ -1.0 0 0.0 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ -0.985 0 -0.174 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ -0.94 0 -0.342 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ -0.866 0 -0.5 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ -0.766 0 -0.643 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ -0.643 0 -0.766 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ -0.5 0 -0.866 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ -0.342 0 -0.94 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ -0.174 0 -0.985 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ -0.0 0 -1.0 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ 0.174 0 -0.985 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ 0.342 0 -0.94 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ 0.5 0 -0.866 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ 0.643 0 -0.766 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ 0.766 0 -0.643 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ 0.866 0 -0.5 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ 0.94 0 -0.342 0.75 0 force
particle minecraft:sneeze ~ ~0.1 ~ 0.985 0 -0.174 0.75 0 force

playsound minecraft:item.lodestone_compass.lock master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] ~ ~ ~ 1 1 1
playsound minecraft:item.lodestone_compass.lock master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] ~ ~ ~ 1 1 1
playsound minecraft:block.bell.use master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] ~ ~ ~ 0.35 2 0.35