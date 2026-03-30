
# effect
function pc:sys/player/select/clear

# Select
scoreboard players reset @s pc.selected_slot
execute as @n[type=!minecraft:player,distance=..100,tag=pc.player.now,predicate=pc:object/ally_player] at @s as @n[type=minecraft:marker,distance=..100,tag=pc.grid] at @s run function pc:sys/player/select/space/summon/use