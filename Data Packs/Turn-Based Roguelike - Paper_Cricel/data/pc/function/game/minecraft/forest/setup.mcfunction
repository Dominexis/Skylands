
# effect
data modify storage pc:game combat.id set value 'minecraft/forest'

data modify storage pc:game combat.start_button.name set value {text:"Forest",color:"white"}
data modify storage pc:game combat.start_button.icon set value 'spruce_sapling'

data modify storage pc:game combat.reward set value {money:"21..29",chest:"normal"}

data modify storage pc:game combat.coord.combat_center set value "2416 1 5548"
data modify storage pc:game combat.coord.spawnpoint set value "2416 1 5562 -180 0"
data modify storage pc:game combat.coord.backpoint set value "2416 2 5536"
data modify storage pc:game combat.coord.forceload set value "2436 5568 2396 5528"

# Grids
data modify storage pc:game combat.grid_center set value [1,2]

data modify storage pc:game combat.grid set value [[{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"}],[{type:"wall"},{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"}],[{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"},{type:"wall"}],[{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"}]]

data modify storage pc:game combat.grid[0][0].lair set value {type:"mob",id:["zombie","agile_zombie"]}
data modify storage pc:game combat.grid[1][4].lair set value {type:"mob",id:["zombie","agile_zombie"]}
data modify storage pc:game combat.grid[2][1].lair set value {type:"mob",id:["zombie","agile_zombie"]}
data modify storage pc:game combat.grid[3][2].lair set value {type:"ally",id:["player"]}