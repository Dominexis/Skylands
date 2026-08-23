
execute if predicate pc:sys/player/obtain/tip run function pc:sys/item/return/fromplayer/tip

execute if score @s pc.player.incombat matches 1 run function pc:sys/player/incombat
execute unless score @s pc.player.incombat matches 1 run function pc:sys/player/rest_area