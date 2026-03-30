
# effect
data modify storage pc:game combat.id set value 'minecraft/ender_dragon'

data modify storage pc:game combat.start_button.name set value {text:"Ender Dragon",color:"light_purple"}
data modify storage pc:game combat.start_button.icon set value 'dragon_egg'

data modify storage pc:game combat.reward set value {}

data modify storage pc:game combat.coord.combat_center set value "2236 1 5484"
data modify storage pc:game combat.coord.spawnpoint set value "2236 2 5507 -180 0"
data modify storage pc:game combat.coord.backpoint set value "2236 7 5453"
data modify storage pc:game combat.coord.forceload set value "2268 5516 2217 5460"

    # Grids
data modify storage pc:game combat.grid_center set value [4,3]

data modify storage pc:game combat.grid set value [\
    [{type:hole},{type:spac},{type:spac},{type:spac},{type:spac},{type:spac},{type:hole}],\
    [{type:spac},{type:spac},{type:spac},{type:spac},{type:spac},{type:spac},{type:spac}],\
    [{type:spac},{type:spac},{type:spac},{type:spac},{type:spac},{type:spac},{type:spac}],\
    [{type:spac},{type:spac},{type:spac},{type:wall},{type:spac},{type:spac},{type:spac}],\
    [{type:spac},{type:spac},{type:spac},{type:spac},{type:spac},{type:spac},{type:spac}],\
    [{type:spac},{type:spac},{type:spac},{type:spac},{type:spac},{type:spac},{type:spac}],\
    [{type:spac},{type:spac},{type:spac},{type:spac},{type:spac},{type:spac},{type:spac}],\
    [{type:hole},{type:spac},{type:spac},{type:spac},{type:spac},{type:spac},{type:hole}],\
]

data modify storage pc:game combat.grid[4][3].lair set value {type:mob, id:[ender_dragon]}
data modify storage pc:game combat.grid[3][1].lair set value {type:mob, id:[end_crystal]}
data modify storage pc:game combat.grid[1][3].lair set value {type:mob, id:[end_crystal]}
data modify storage pc:game combat.grid[3][5].lair set value {type:mob, id:[end_crystal]}

data modify storage pc:game combat.grid[7][3].lair set value {type:ally,id:[player]}