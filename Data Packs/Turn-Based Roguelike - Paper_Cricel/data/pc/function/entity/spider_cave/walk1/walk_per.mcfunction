
data modify storage pc:temp range set value {type:'0',mode:'detect',target:'ally'}
execute if function pc:sys/grid/range/use positioned ~-1.5 ~-100 ~-1.5 as @e[tag=pc.intent.now,dx=2,dy=200,dz=2,type=minecraft:marker,limit=1] at @s run function pc:entity/spider_cave/walk1/2

data modify storage pc:temp range set value {type:'3x3',mode:'victim',target:'ally'}
function pc:sys/grid/range/use
execute as @e[predicate=pc:sys/entity/victim,limit=9,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:entity/spider_cave/walk1/3

# fx
playsound minecraft:entity.goat.long_jump master @a ~ ~1024 ~ 0 1 1
playsound minecraft:entity.panda.sneeze master @a ~ ~1024 ~ 0 0.75 0.5
playsound minecraft:entity.squid.squirt master @a ~ ~1024 ~ 0 0.75 0.75

particle sneeze ~ ~0.25 ~ -0.5 0 0.5 0.5 0 force
particle sneeze ~ ~0.25 ~ -0.5 0 -0.5 0.5 0 force
particle sneeze ~ ~0.25 ~ -0.4 0 0.5 0.5 0 force
particle sneeze ~ ~0.25 ~ -0.4 0 -0.5 0.5 0 force
particle sneeze ~ ~0.25 ~ -0.3 0 0.5 0.5 0 force
particle sneeze ~ ~0.25 ~ -0.3 0 -0.5 0.5 0 force
particle sneeze ~ ~0.25 ~ -0.2 0 0.5 0.5 0 force
particle sneeze ~ ~0.25 ~ -0.2 0 -0.5 0.5 0 force
particle sneeze ~ ~0.25 ~ -0.1 0 0.5 0.5 0 force
particle sneeze ~ ~0.25 ~ -0.1 0 -0.5 0.5 0 force
particle sneeze ~ ~0.25 ~ -0.0 0 0.5 0.5 0 force
particle sneeze ~ ~0.25 ~ -0.0 0 -0.5 0.5 0 force
particle sneeze ~ ~0.25 ~ 0.1 0 0.5 0.5 0 force
particle sneeze ~ ~0.25 ~ 0.1 0 -0.5 0.5 0 force
particle sneeze ~ ~0.25 ~ 0.2 0 0.5 0.5 0 force
particle sneeze ~ ~0.25 ~ 0.2 0 -0.5 0.5 0 force
particle sneeze ~ ~0.25 ~ 0.3 0 0.5 0.5 0 force
particle sneeze ~ ~0.25 ~ 0.3 0 -0.5 0.5 0 force
particle sneeze ~ ~0.25 ~ 0.4 0 0.5 0.5 0 force
particle sneeze ~ ~0.25 ~ 0.4 0 -0.5 0.5 0 force
particle sneeze ~ ~0.25 ~ 0.5 0 0.5 0.5 0 force
particle sneeze ~ ~0.25 ~ 0.5 0 -0.5 0.5 0 force
particle sneeze ~ ~0.25 ~ -0.5 0 -0.4 0.5 0 force
particle sneeze ~ ~0.25 ~ 0.5 0 -0.4 0.5 0 force
particle sneeze ~ ~0.25 ~ -0.5 0 -0.3 0.5 0 force
particle sneeze ~ ~0.25 ~ 0.5 0 -0.3 0.5 0 force
particle sneeze ~ ~0.25 ~ -0.5 0 -0.2 0.5 0 force
particle sneeze ~ ~0.25 ~ 0.5 0 -0.2 0.5 0 force
particle sneeze ~ ~0.25 ~ -0.5 0 -0.1 0.5 0 force
particle sneeze ~ ~0.25 ~ 0.5 0 -0.1 0.5 0 force
particle sneeze ~ ~0.25 ~ -0.5 0 -0.0 0.5 0 force
particle sneeze ~ ~0.25 ~ 0.5 0 -0.0 0.5 0 force
particle sneeze ~ ~0.25 ~ -0.5 0 0.1 0.5 0 force
particle sneeze ~ ~0.25 ~ 0.5 0 0.1 0.5 0 force
particle sneeze ~ ~0.25 ~ -0.5 0 0.2 0.5 0 force
particle sneeze ~ ~0.25 ~ 0.5 0 0.2 0.5 0 force
particle sneeze ~ ~0.25 ~ -0.5 0 0.3 0.5 0 force
particle sneeze ~ ~0.25 ~ 0.5 0 0.3 0.5 0 force
particle sneeze ~ ~0.25 ~ -0.5 0 0.4 0.5 0 force
particle sneeze ~ ~0.25 ~ 0.5 0 0.4 0.5 0 force