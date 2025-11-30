
# owner
execute on origin run tag @s add pc.temp

# item passive
execute unless entity @s[tag=pc.sys.passive_showed] run function pc:sys/item/show_feature/use

# shop item
execute if items entity @s contents *[custom_data~{pc:{category:'shop/campfire'}}] run function pc:sys/game/rest_area/campfire/refresh/drop

# return item
execute store success score #return_chest pc.main if data entity @s Item.components.minecraft:custom_data.pc.return_chest
execute if score #return_chest pc.main matches 1 run function pc:sys/item/return/chest with entity @s Item.components.minecraft:custom_data.pc.return_chest
execute unless score #dev_mode sl.value matches 1 if score #return_chest pc.main matches 0 run function pc:sys/item/return/player

# reset
data remove storage pc:temp info
tag @a[predicate=sl:player,tag=pc.temp,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] remove pc.temp