
function pc:sys/utils/local_thread/atker/save {id:'entity.ender_dragon.revive'}

scoreboard players set @s pc.entity.victim 1
scoreboard players set #damage pc.main 999
data modify storage pc:temp damage set value {mode:'heal'}
function pc:sys/entity/dmg/victim

function pc:sys/utils/local_thread/atker/load {id:'entity.ender_dragon.revive'}

# fx
scoreboard players set #range pc.main 0
execute facing entity @e[tag=pc.entity.ender_dragon,type=minecraft:bee,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] feet run function pc:entity/ender_dragon/buff1/revive/loop