
# effect
function pc:sys/player/select/clear

    # Select
scoreboard players reset @s pc.selected_slot
execute as @n[predicate=pc:object/ally_player,type=!player,tag=pc.player.now,distance=..100] at @s as @n[type=marker,tag=pc.grid,distance=..100] at @s run function pc:sys/player/select/space/summon/use