
execute as @e[tag=pc.intent.now,type=marker,limit=1] at @s run function entity:spider_cave/buff1/2
function sys:combat/turn/end_act

# fx
playsound minecraft:entity.zombie.infect master @a ~ ~1024 ~ 0 0 0.5
playsound minecraft:block.grindstone.use master @a ~ ~1024 ~ 0 0 0.25