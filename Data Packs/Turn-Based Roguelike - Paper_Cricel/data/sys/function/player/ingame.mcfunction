
execute if predicate sys:player/obtain/tip run function sys:item/return/fromplayer/tip

execute if score @s pc.player.incombat matches 1 run function sys:player/incombat
execute unless score @s pc.player.incombat matches 1 run function sys:player/rest_area