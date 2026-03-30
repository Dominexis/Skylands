
# effect
data modify storage pc:temp repair.item_test set from storage pc:temp repair.item
execute store success score #pass pc.main run data modify storage pc:temp repair.item_test set from entity @s data.hotbar.move
execute if score #pass pc.main matches 0 run return run data modify storage pc:temp repair.category set value move

data modify storage pc:temp repair.item_test set from storage pc:temp repair.item
execute store success score #pass pc.main run data modify storage pc:temp repair.item_test set from entity @s data.hotbar.skill1
execute if score #pass pc.main matches 0 run return run data modify storage pc:temp repair.category set value skill1

data modify storage pc:temp repair.item_test set from storage pc:temp repair.item
execute store success score #pass pc.main run data modify storage pc:temp repair.item_test set from entity @s data.hotbar.skill2
execute if score #pass pc.main matches 0 run return run data modify storage pc:temp repair.category set value skill2

data modify storage pc:temp repair.item_test set from storage pc:temp repair.item
execute store success score #pass pc.main run data modify storage pc:temp repair.item_test set from entity @s data.hotbar.skill3
execute if score #pass pc.main matches 0 run return run data modify storage pc:temp repair.category set value skill3

data modify storage pc:temp repair.item_test set from storage pc:temp repair.item
execute store success score #pass pc.main run data modify storage pc:temp repair.item_test set from entity @s data.hotbar.repair
execute if score #pass pc.main matches 0 run return run data modify storage pc:temp repair.category set value repair