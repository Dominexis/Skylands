
execute store result score #buddies_count pc.main if entity @e[tag=pc.entity.piglin_zombie,type=minecraft:zombified_piglin,predicate=pc:sys/entity/enemy,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0]

data modify storage pc:temp intent.intents set value []
execute if score #buddies_count pc.main matches 1.. run data modify storage pc:temp intent.intents set value [{id:"buff1",weight:2},{id:"buff2",weight:2}]

data modify storage pc:temp range set value {type:'3x3',mode:'detect',target:'space'}
execute if score #buddies_count pc.main matches ..3 if function pc:sys/grid/range/use run data modify storage pc:temp intent.intents append value {id:"summon1",weight:4}

data modify storage pc:temp range set value {type:'any-cross',mode:'detect',target:'any'}
execute if function pc:sys/grid/range/use run data modify storage pc:temp intent.intents append value {id:"attack1",weight:2}