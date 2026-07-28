
# Gameplay settings (maps + gameplay) are locked once a game has started
execute if score $start pc.game matches 1.. if score @s pc.trigger matches 00001..20000 run return run function sys:lobby/gameplay/locked

execute if score @s pc.trigger matches 00001..10000 run function sys:lobby/gameplay/maps/trigger
execute if score @s pc.trigger matches 10001..20000 run function sys:lobby/gameplay/settings/trigger

scoreboard players set @s pc.trigger 0

# fx
playsound minecraft:ui.button.click master @a ~ ~1024 ~ 0 2 0.5
playsound minecraft:block.note_block.chime master @a ~ ~1024 ~ 0 1 0.5