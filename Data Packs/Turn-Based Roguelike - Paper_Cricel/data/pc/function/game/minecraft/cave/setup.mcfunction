
# effect
data modify storage pc:game combat.id set value 'minecraft/cave'

data modify storage pc:game combat.start_button.name set value {text:"Cave",color:"white"}
data modify storage pc:game combat.start_button.icon set value 'cobblestone'

data modify storage pc:game combat.reward set value {money:"21..29",chest:"normal"}

data modify storage pc:game combat.coord.combat_center set value "2296 1 5548"
data modify storage pc:game combat.coord.spawnpoint set value "2298 2 5570 -180 0"
data modify storage pc:game combat.coord.backpoint set value "2298 5 5528"
data modify storage pc:game combat.coord.forceload set value "2314 5573 2281 5524"

# Grids
data modify storage pc:game combat.grid_center set value [2,1]

data modify storage pc:game combat.grid set value [[{type:"spac"},{type:"hole"},{type:"spac"},{type:"spac"}],[{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"}],[{type:"spac"},{type:"spac"},{type:"wall"},{type:"spac"}],[{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"}],[{type:"wall"},{type:"spac"},{type:"spac"},{type:"spac"}],[{type:"spac"},{type:"spac"},{type:"hole"},{type:"spac"}]]

data modify storage pc:game combat.grid[1][3].lair set value {type:"mob",id:["skeleton","continu_skeleton"]}
data modify storage pc:game combat.grid[0][0].lair set value {type:"mob",id:["skeleton","continu_skeleton"]}
data modify storage pc:game combat.grid[5][3].lair set value {type:"mob",id:["spider"]}
data modify storage pc:game combat.grid[5][0].lair set value {type:"mob",id:["creeper"]}
data modify storage pc:game combat.grid[3][1].lair set value {type:"ally",id:["player"]}