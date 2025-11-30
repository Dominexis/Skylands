
# effect
scoreboard players operation $game.money pc.main -= #cost pc.main
scoreboard players operation $game.money.cost pc.main += #cost pc.main
execute if data storage pc:temp {loot:{category:'shop/campfire'}} run function pc:sys/game/rest_area/purchase/pass/campfire with storage pc:temp loot
execute unless data storage pc:temp {loot:{category:'shop/campfire'}} run function pc:sys/game/rest_area/purchase/pass/merchandise with storage pc:temp loot

# fx
playsound minecraft:block.iron_door.close master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 0.5 1
playsound minecraft:block.note_block.xylophone master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0