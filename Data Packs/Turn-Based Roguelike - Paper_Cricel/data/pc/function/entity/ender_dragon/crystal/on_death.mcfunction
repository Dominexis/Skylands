
execute if score #is_minion pc.main matches 1 run return run function pc:entity/ender_dragon/crystal/on_death/real

# fx
playsound minecraft:block.amethyst_block.break master @a ~ ~1024 ~ 0 0 1
playsound minecraft:entity.wither.shoot master @a ~ ~1024 ~ 0 1.5 0.2
particle minecraft:entity_effect{color:[0.647,0.345,0.78,1.0]} ~ ~ ~ 0.5 0.5 0.5 1 50 force
particle minecraft:poof ~ ~1 ~ 0.2 0.4 0.2 0.1 15 force