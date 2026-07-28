
data modify storage pc:temp range set value {type:'3x3',mode:'victim',target:'enemy'}
function sys:grid/range/use

scoreboard players set #damage pc.main 5
function sys:entity/dmg/atker

function sys:grid/range/clear

# fx
particle minecraft:totem_of_undying ~ ~0.25 ~ 0 0 0 0.5 30 force

particle minecraft:sneeze ~ ~0.1 ~ 1.0 0 0.0 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ 0.985 0 0.174 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ 0.94 0 0.342 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ 0.866 0 0.5 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ 0.766 0 0.643 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ 0.643 0 0.766 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ 0.5 0 0.866 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ 0.342 0 0.94 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ 0.174 0 0.985 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ 0.0 0 1.0 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ -0.174 0 0.985 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ -0.342 0 0.94 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ -0.5 0 0.866 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ -0.643 0 0.766 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ -0.766 0 0.643 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ -0.866 0 0.5 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ -0.94 0 0.342 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ -0.985 0 0.174 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ -1.0 0 0.0 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ -0.985 0 -0.174 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ -0.94 0 -0.342 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ -0.866 0 -0.5 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ -0.766 0 -0.643 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ -0.643 0 -0.766 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ -0.5 0 -0.866 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ -0.342 0 -0.94 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ -0.174 0 -0.985 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ -0.0 0 -1.0 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ 0.174 0 -0.985 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ 0.342 0 -0.94 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ 0.5 0 -0.866 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ 0.643 0 -0.766 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ 0.766 0 -0.643 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ 0.866 0 -0.5 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ 0.94 0 -0.342 0.5 0 force
particle minecraft:sneeze ~ ~0.1 ~ 0.985 0 -0.174 0.5 0 force

playsound minecraft:block.bell.use master @a ~ ~1024 ~ 0 1.5 0.35
playsound minecraft:entity.allay.item_given master @a ~ ~ ~ 1 1.5
playsound minecraft:item.lodestone_compass.lock master @a ~ ~1024 ~ 0 1 1
playsound minecraft:item.lodestone_compass.lock master @a ~ ~1024 ~ 0 1 1