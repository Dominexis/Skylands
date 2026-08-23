
data modify storage pc:game combat.id set value 'minecraft/mineshaft'
data modify storage pc:game combat.type set value 'normal'

data modify storage pc:game combat.start_button.name set from storage pc:lang game.level.minecraft.mineshaft
data modify storage pc:game combat.start_button.icon set value 'rail'

data modify storage pc:game combat.reward set value {money:"21..29",chest:"common"}

data modify storage pc:game combat.coord.combat_center set value "2236 1 5548"
data modify storage pc:game combat.coord.spawnpoint set value "2236 4 5566 -180 0"
data modify storage pc:game combat.coord.backpoint set value "2224 7 5536"
data modify storage pc:game combat.coord.forceload set value "2262 5573 2213 5523"

# Grids
data modify storage pc:game combat.grid_center set value [2,2]

data modify storage pc:game combat.grid set value [\
    [{type:"    "},{type:"    "},{type:"spac"},{type:"hole"},{type:"hole"}],\
    [{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"}],\
    [{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"}],\
    [{type:"spac"},{type:"spac"},{type:"wall"},{type:"spac"},{type:"spac"}],\
    [{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"}],\
    [{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"}]\
]

data modify storage pc:game combat.grid[0][2].lair set value {type:"mob",id:["bat","bat_rusty"]}
data modify storage pc:game combat.grid[1][4].lair set value {type:"mob",id:["spider","spider_cave"]}
data modify storage pc:game combat.grid[1][0].lair set value {type:"mob",id:["skeleton","skeleton_continu"]}
data modify storage pc:game combat.grid[5][2].lair set value {type:"ally",id:["player"]}
