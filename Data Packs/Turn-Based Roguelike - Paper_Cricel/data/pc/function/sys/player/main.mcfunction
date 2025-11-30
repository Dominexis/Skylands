
# General
execute if score @s pc.title matches 1.. run scoreboard players remove @s pc.title 1
execute if predicate pc:obtain/tip run function pc:sys/item/show_feature/tip_item/return_from_player

# In Game
execute if predicate pc:player/ingame run function pc:sys/player/ingame

# In Lobby
execute if predicate pc:player/inlobby run function pc:sys/player/inlobby