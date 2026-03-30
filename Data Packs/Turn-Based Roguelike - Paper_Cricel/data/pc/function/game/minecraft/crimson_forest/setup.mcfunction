
# effect
data modify storage pc:game combat.id set value 'minecraft/crimson_forest'

data modify storage pc:game combat.start_button.name set value {text:"Crimson Forest",color:"white"}
data modify storage pc:game combat.start_button.icon set value 'crimson_hyphae'

data modify storage pc:game combat.reward set value {money:'21..29',chest:'rare'}

data modify storage pc:game combat.coord.combat_center set value "2416 1 5484"
data modify storage pc:game combat.coord.spawnpoint set value "2416 6 5506 -180 0"
data modify storage pc:game combat.coord.backpoint set value "2416 10 5459"
data modify storage pc:game combat.coord.forceload set value "2442 5514 2390 5455"

    # Grids
data modify storage pc:game combat.grid_center set value [3,3]

data modify storage pc:game combat.grid set value [\
    [{type:"  "},{type:"  "},{type:spac},{type:wall},{type:spac},{type:spac},{type:"  "}],\
    [{type:spac},{type:spac},{type:spac},{type:spac},{type:spac},{type:spac},{type:spac}],\
    [{type:spac},{type:spac},{type:hole},{type:spac},{type:spac},{type:spac},{type:spac}],\
    [{type:spac},{type:hole},{type:hole},{type:spac},{type:spac},{type:hole},{type:spac}],\
    [{type:spac},{type:spac},{type:spac},{type:spac},{type:hole},{type:hole},{type:spac}],\
    [{type:spac},{type:spac},{type:spac},{type:spac},{type:spac},{type:spac},{type:spac}],\
    [{type:"  "},{type:spac},{type:wall},{type:wall},{type:spac},{type:spac},{type:spac}],\
]

data modify storage pc:game combat.grid[1][5].lair set value {type:mob, id:[hoglin,mature_hoglin]}
data modify storage pc:game combat.grid[5][5].lair set value {type:mob, id:[heal_pigman]}
data modify storage pc:game combat.grid[0][2].lair set value {type:mob, id:[hoglin,mature_hoglin]}
data modify storage pc:game combat.grid[1][0].lair set value {type:mob, id:[heal_pigman]}
data modify storage pc:game combat.grid[5][0].lair set value {type:mob, id:[fragile_slime]}

data modify storage pc:game combat.grid[3][3].lair set value {type:ally,id:[player]}