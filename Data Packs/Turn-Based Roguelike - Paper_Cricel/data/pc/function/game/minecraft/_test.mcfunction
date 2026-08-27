
# init
fill 2519 0 5502 2552 0 5474 minecraft:stone
data remove storage pc:game combat

data modify storage pc:game combat.id set value 'minecraft/_test'

data modify storage pc:game combat.start_button.name set value {text:"Test Level",color:"white"}
data modify storage pc:game combat.start_button.icon set value 'knowledge_book'

data modify storage pc:game combat.reward set value {}

data modify storage pc:game combat.coord.combat_center set value "2536 1 5488"
data modify storage pc:game combat.coord.spawnpoint set value "2536 1 5504 -180 0"
data modify storage pc:game combat.coord.backpoint set value "2536 1 5472"
data modify storage pc:game combat.coord.forceload set value "2552 5505 2519 5471"

# Grids
data modify storage pc:game combat.grid_center set value [3,2]

data modify storage pc:game combat.grid set value [\
    [{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"}],\
    [{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"}],\
    [{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"}],\
    [{type:"wall"},{type:"hole"},{type:"spac"},{type:"spac"},{type:"wall"}],\
    [{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"}],\
    [{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"}],\
    [{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"},{type:"spac"}]\
]

$scoreboard players set #count pc.main $(count)
$execute if score #count pc.main matches 2.. run data modify storage pc:game combat.grid[4][0].lair set value {type:mob, id:["$(mob)"]}
$execute if score #count pc.main matches 3.. run data modify storage pc:game combat.grid[1][4].lair set value {type:mob, id:["$(mob)"]}

$data modify storage pc:game combat.grid[2][2].lair set value {type:"mob",id:["$(mob)"]}
data modify storage pc:game combat.grid[5][2].lair set value {type:"ally",id:["player"]}

function pc:sys/combat/start/use