
# effect
data modify storage pc:game combat.id set value 'minecraft/tutorial'

data modify storage pc:game combat.start_button.name set value {text:"Tutorial",color:"white"}
data modify storage pc:game combat.start_button.icon set value 'knowledge_book'

data modify storage pc:game combat.reward set value {money:"15..19",chest:"normal"}

data modify storage pc:game combat.coord.combat_center set value "2476 1 5548"
data modify storage pc:game combat.coord.spawnpoint set value "2476 1 5557 -180 0"
data modify storage pc:game combat.coord.backpoint set value "2476 2 5538"
data modify storage pc:game combat.coord.forceload set value "2490 5562 2462 5534"

# Grids
data modify storage pc:game combat.grid_center set value [1,1]

data modify storage pc:game combat.grid set value [[{type:"spac"},{type:"spac"},{type:"spac"}],[{type:"spac"},{type:"spac"},{type:"spac"}],[{type:"spac"},{type:"spac"},{type:"spac"}]]

data modify storage pc:game combat.grid[0][1].lair set value {type:"mob",id:["zombie"]}
data modify storage pc:game combat.grid[2][1].lair set value {type:"ally",id:["player"]}