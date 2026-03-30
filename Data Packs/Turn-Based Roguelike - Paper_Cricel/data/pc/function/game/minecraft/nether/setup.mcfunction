
# effect
data modify storage pc:game combat.id set value 'minecraft/nether'

data modify storage pc:game combat.start_button.name set value {text:"Nether",color:"white"}
data modify storage pc:game combat.start_button.icon set value 'netherrack'

data modify storage pc:game combat.reward set value {money:'21..29',chest:'rare'}

data modify storage pc:game combat.coord.combat_center set value "2476 1 5488"
data modify storage pc:game combat.coord.spawnpoint set value "2476 1 5507 -180 0"
data modify storage pc:game combat.coord.backpoint set value "2476 13 5454"
data modify storage pc:game combat.coord.forceload set value "2452 5512 2503 5452"

    # Grids
data modify storage pc:game combat.grid_center set value [4,2]

data modify storage pc:game combat.grid set value [\
    [{type:hole},{type:hole},{type:spac},{type:hole},{type:hole}],\
    [{type:spac},{type:spac},{type:spac},{type:spac},{type:spac}],\
    [{type:spac},{type:spac},{type:spac},{type:spac},{type:spac}],\
    [{type:spac},{type:wall},{type:wall},{type:wall},{type:spac}],\
    [{type:spac},{type:spac},{type:spac},{type:spac},{type:spac}],\
    [{type:spac},{type:spac},{type:spac},{type:spac},{type:spac}],\
    [{type:hole},{type:hole},{type:spac},{type:hole},{type:hole}],\
]

data modify storage pc:game combat.grid[4][0].lair set value {type:mob, id:[fragile_slime]}
data modify storage pc:game combat.grid[4][4].lair set value {type:mob, id:[fragile_slime]}
data modify storage pc:game combat.grid[6][2].lair set value {type:mob, id:[heal_pigman]}
data modify storage pc:game combat.grid[0][2].lair set value {type:mob, id:[heal_pigman]}
data modify storage pc:game combat.grid[4][2].lair set value {type:ally,id:[player]}