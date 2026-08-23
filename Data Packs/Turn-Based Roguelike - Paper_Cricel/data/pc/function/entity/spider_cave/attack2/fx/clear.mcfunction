
execute positioned ~-1.5 ~-100 ~-1.5 as @e[tag=pc.intent.now,dx=2,dy=200,dz=2,type=minecraft:marker,limit=1] at @s run function pc:entity/spider_cave/attack2/2
kill @s
function pc:sys/combat/turn/end_act

# fx
particle minecraft:block{block_state:"cobweb"} ~ ~ ~ 0.2 0.2 0.2 2 10 force
playsound minecraft:entity.phantom.bite master @a ~ ~1024 ~ 0 2 0.25