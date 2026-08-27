## usage : give player item according to the storage
## (storage) pc:temp hotbar
## (exe) player

clear @s *[!custom_data~{data:{}}]
execute if score @s pc.entity.inturn matches 1 run loot replace entity @s container.8 loot pc:sys/player/end_turn

execute if data storage pc:temp hotbar.move.id run function pc:sys/player/hotbar/slot/move
execute if data storage pc:temp hotbar.repair.id run function pc:sys/player/hotbar/slot/repair
execute if data storage pc:temp hotbar.head.id run function pc:sys/player/hotbar/slot/head
execute if data storage pc:temp hotbar.chest.id run function pc:sys/player/hotbar/slot/chest
execute if data storage pc:temp hotbar.legs.id run function pc:sys/player/hotbar/slot/legs
execute if data storage pc:temp hotbar.feet.id run function pc:sys/player/hotbar/slot/feet

execute store result storage pc:temp hotbar.slot int 1 run scoreboard players set #slot pc.main 2
function pc:sys/player/hotbar/slot/skill with storage pc:temp hotbar

data remove storage pc:temp hotbar