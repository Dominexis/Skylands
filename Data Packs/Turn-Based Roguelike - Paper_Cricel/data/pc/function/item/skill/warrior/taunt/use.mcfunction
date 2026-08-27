
execute facing entity @e[tag=pc.grid.atker,type=minecraft:marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] feet rotated ~ 0 run function pc:item/skill/warrior/taunt/2

function pc:item/skill/warrior/taunt/use_times/add with storage pc:temp rc_item
execute if score #var pc.main matches 3.. run function pc:item/skill/warrior/taunt/use_times/use

function pc:sys/combat/turn/end_act