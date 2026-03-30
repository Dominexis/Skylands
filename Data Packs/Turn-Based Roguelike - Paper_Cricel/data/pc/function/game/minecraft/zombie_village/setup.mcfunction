
# effect
data modify storage pc:game combat.id set value 'minecraft/zombie_village'

data modify storage pc:game combat.start_button.name set value {text:"Zombie Village",color:"red"}
data modify storage pc:game combat.start_button.icon set value 'zombie_villager_spawn_egg'

data modify storage pc:game combat.reward set value {money:"61..69",chest:"rare"}

data modify storage pc:game combat.coord.combat_center set value "2356 1 5548"
data modify storage pc:game combat.coord.spawnpoint set value "2356 0 5569 -180 0"
data modify storage pc:game combat.coord.backpoint set value "2350 2 5533"
data modify storage pc:game combat.coord.forceload set value "2378 5572 2335 5527"

# Grids
data modify storage pc:game combat.grid_center set value [2,3]

data modify storage pc:game combat.grid set value [[{type:"hole"},{type:"spac"},{type:"spac"},{type:"wall"},{type:"spac"},{type:"spac"},{type:"hole"}],[{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"}],[{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"}],[{type:"  "},{type:"hole"},{type:"spac"},{type:"spac"},{type:"spac"},{type:"hole"},{type:"  "}],[{type:"  "},{type:"  "},{type:"spac"},{type:"spac"},{type:"spac"},{type:"hole"},{type:"  "}],[{type:"  "},{type:"  "},{type:"spac"},{type:"spac"},{type:"spac"},{type:"  "},{type:"  "}]]

data modify storage pc:game combat.grid[0][1].lair set value {type:"mob",id:["skeleton","slime"]}
data modify storage pc:game combat.grid[0][5].lair set value {type:"mob",id:["skeleton","slime"]}
data modify storage pc:game combat.grid[1][3].lair set value {type:"mob",id:["iron_golem"]}
data modify storage pc:game combat.grid[3][3].lair set value {type:"mob",id:["zombie","agile_zombie"]}
data modify storage pc:game combat.grid[5][3].lair set value {type:"ally",id:["player"]}