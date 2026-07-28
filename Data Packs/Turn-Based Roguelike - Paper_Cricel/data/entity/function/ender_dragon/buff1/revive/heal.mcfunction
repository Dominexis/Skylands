
function sys:utils/local_thread/atker/save {id:'entity.ender_dragon.revive'}

scoreboard players set @s pc.entity.victim 1
scoreboard players set #damage pc.main 999
data modify storage pc:temp damage set value {mode:'heal'}
function sys:entity/dmg/victim

function sys:utils/local_thread/atker/load {id:'entity.ender_dragon.revive'}

# fx
scoreboard players set #range pc.main 0
execute facing entity @e[tag=pc.entity.ender_dragon,type=minecraft:bee,limit=1] feet run function entity:ender_dragon/buff1/revive/loop