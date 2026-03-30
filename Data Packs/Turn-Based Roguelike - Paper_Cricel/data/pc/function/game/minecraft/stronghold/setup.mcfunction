
# effect
data modify storage pc:game combat.id set value 'minecraft/stronghold'

data modify storage pc:game combat.start_button.name set value {text:"Stronghold",color:"white"}
data modify storage pc:game combat.start_button.icon set value 'cracked_stone_bricks'

data modify storage pc:game combat.reward set value {money:'21..29',chest:'rare'}

data modify storage pc:game combat.coord.combat_center set value "2296 1 5488"
data modify storage pc:game combat.coord.spawnpoint set value "2296 1 5502 -180 0"
data modify storage pc:game combat.coord.backpoint set value "2296 2 5465"
data modify storage pc:game combat.coord.forceload set value "2313 5508 2279 5460"

    # Grids
data modify storage pc:game combat.grid_center set value [4,3]

data modify storage pc:game combat.grid set value [\
    [{type:wall},{type:spac},{type:spac},{type:spac},{type:spac},{type:spac},{type:wall}],\
    [{type:spac},{type:spac},{type:spac},{type:spac},{type:spac},{type:spac},{type:spac}],\
    [{type:spac},{type:spac},{type:spac},{type:wall},{type:spac},{type:spac},{type:spac}],\
    [{type:spac},{type:spac},{type:spac},{type:wall},{type:spac},{type:spac},{type:spac}],\
    [{type:hole},{type:spac},{type:spac},{type:spac},{type:spac},{type:spac},{type:hole}],\
    [{type:hole},{type:spac},{type:spac},{type:spac},{type:spac},{type:spac},{type:hole}],\
    [{type:wall},{type:wall},{type:spac},{type:spac},{type:spac},{type:wall},{type:wall}],\
]

data modify storage pc:game combat.grid[1][2].lair set value {type:mob, id:[ender_eye]}
data modify storage pc:game combat.grid[1][4].lair set value {type:mob, id:[ender_eye]}
data modify storage pc:game combat.grid[2][0].lair set value {type:mob, id:[silverfish,rusty_silverfish]}
data modify storage pc:game combat.grid[2][6].lair set value {type:mob, id:[silverfish,rusty_silverfish]}
data modify storage pc:game combat.grid[6][3].lair set value {type:ally,id:[player]}