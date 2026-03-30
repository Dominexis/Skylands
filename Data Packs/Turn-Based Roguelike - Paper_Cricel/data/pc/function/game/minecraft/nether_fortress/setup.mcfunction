
# effect
data modify storage pc:game combat.id set value 'minecraft/nether_fortress'

data modify storage pc:game combat.start_button.name set value {text:"Nether Fortress",color:"white"}
data modify storage pc:game combat.start_button.icon set value 'nether_bricks'

data modify storage pc:game combat.reward set value {money:"61..69",chest:"epic"}

data modify storage pc:game combat.coord.combat_center set value "2356 1 5484"
data modify storage pc:game combat.coord.spawnpoint set value "2364 2 5500 -180 0"
data modify storage pc:game combat.coord.backpoint set value "2356 2 5457"
data modify storage pc:game combat.coord.forceload set value "2384 5512 2323 5456"

# Grids
data modify storage pc:game combat.grid_center set value [3,2]

data modify storage pc:game combat.grid set value [[{type:"wall"},{type:"wall"},{type:"spac"},{type:"hole"},{type:"spac"}],[{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"}],[{type:"spac"},{type:"hole"},{type:"spac"},{type:"spac"},{type:"spac"}],[{type:"spac"},{type:"hole"},{type:"spac"},{type:"hole"},{type:"spac"}],[{type:"spac"},{type:"spac"},{type:"spac"},{type:"hole"},{type:"spac"}],[{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"}],[{type:"spac"},{type:"hole"},{type:"spac"},{type:"wall"},{type:"wall"}]]

data modify storage pc:game combat.grid[1][1].lair set value {type:"mob",id:["blaze"]}
data modify storage pc:game combat.grid[1][2].lair set value {type:"mob",id:["magma_blaze"]}
data modify storage pc:game combat.grid[1][3].lair set value {type:"mob",id:["blaze"]}
data modify storage pc:game combat.grid[0][2].lair set value {type:"mob",id:["heal_pigman"]}

data modify storage pc:game combat.grid[6][2].lair set value {type:"ally",id:["player"]}