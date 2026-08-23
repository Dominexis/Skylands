
scoreboard players operation #damage pc.main = @s pc.shield
scoreboard players operation #damage pc.main *= #-1 sl.value

# fx
playsound minecraft:entity.iron_golem.damage master @a ~ ~1024 ~ 0 1.5 1
particle minecraft:item{item:{id:"minecraft:diamond_block"}} ~ ~ ~ 0 0 0 0.25 20 force
particle minecraft:effect ~ ~ ~ 0 0 0 0.25 20 force