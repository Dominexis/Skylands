
# effect
data modify entity @n[type=!minecraft:player,distance=..100,tag=pc.object.now,predicate=pc:object/all] Pos[0] set from entity @s Pos[0]
data modify entity @n[type=!minecraft:player,distance=..100,tag=pc.object.now,predicate=pc:object/all] Pos[2] set from entity @s Pos[2]

execute store success score #has_walk pc.main if entity @n[type=minecraft:marker,distance=..100,tag=pc.walk.intent]
execute if score #has_walk pc.main matches 0 run function pc:sys/object/walk/object/reset
execute if score #has_walk pc.main matches 1 run scoreboard players add $game.acting_time pc.main 10
execute if score #has_walk pc.main matches 1 run schedule function pc:sys/object/walk/object/act/schedule 10t