
scoreboard players operation $money pc.game -= #cost pc.main
scoreboard players operation $stat.money.cost pc.game += #cost pc.main

execute if data storage pc:temp {purchase:{category:"shop/campfire"}} run function pc:sys/rest_area/purchase/pass/campfire with storage pc:temp purchase
execute unless data storage pc:temp {purchase:{category:"shop/campfire"}} run function pc:sys/rest_area/purchase/pass/merchandise with storage pc:temp purchase

# fx
playsound minecraft:block.iron_door.close master @a ~ ~1024 ~ 0 1 0.5
playsound minecraft:block.note_block.xylophone master @a ~ ~1024 ~ 0 0 1