
data modify storage pc:temp range set value {type:'0',mode:'detect',target:'ally'}
execute if function pc:sys/grid/range/use positioned ~-1.5 ~-100 ~-1.5 as @e[tag=pc.intent.now,dx=2,dy=200,dz=2,type=minecraft:marker,limit=1] at @s run function pc:entity/spider/walk1/2

# fx
playsound minecraft:entity.goat.long_jump master @a ~ ~1024 ~ 0 1 1
playsound minecraft:entity.spider.step master @a ~ ~1024 ~ 0 1.5 0.5