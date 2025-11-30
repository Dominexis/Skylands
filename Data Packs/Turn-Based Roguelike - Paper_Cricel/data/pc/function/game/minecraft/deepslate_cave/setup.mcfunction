
# effect
data modify storage pc:game combat.id set value 'minecraft/deepslate_cave'

data modify storage pc:game combat.start_button.name set value {text:"Deepslate Cave",color:"red"}
data modify storage pc:game combat.start_button.icon set value 'deepslate'

data modify storage pc:game combat.reward set value {money:"61..69",chest:"epic"}

data modify storage pc:game combat.coord.combat_center set value "2176 1 5548"
data modify storage pc:game combat.coord.spawnpoint set value "2176 1 5566 -180 0"
data modify storage pc:game combat.coord.backpoint set value "2176 4 5529"
data modify storage pc:game combat.coord.forceload set value "2203 5574 2149 5524"

# Grids
data modify storage pc:game combat.grid_center set value [2,3]

data modify storage pc:game combat.grid set value [[{type:"spac"},{type:"wall"},{type:"wall"},{type:"spac"},{type:"spac"},{type:"spac"},{type:"hole"}],[{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"}],[{type:"hole"},{type:"hole"},{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"}],[{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"},{type:"wall"},{type:"spac"}],[{type:"spac"},{type:"wall"},{type:"spac"},{type:"spac"},{type:"hole"},{type:"spac"},{type:"spac"}],[{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"},{type:"hole"},{type:"spac"},{type:"spac"}]]

data modify storage pc:game combat.grid[2][3].lair set value {type:"mob",id:["enderman"]}
data modify storage pc:game combat.grid[4][5].lair set value {type:"mob",id:["skeleton","continu_skeleton"]}
data modify storage pc:game combat.grid[1][4].lair set value {type:"mob",id:["bat","dormancy_bat"]}
data modify storage pc:game combat.grid[1][1].lair set value {type:"mob",id:["spider","poison_spider"]}
data modify storage pc:game combat.grid[5][3].lair set value {type:"ally",id:["player"]}