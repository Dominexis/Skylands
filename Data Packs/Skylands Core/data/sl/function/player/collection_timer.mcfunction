# Increment timer
scoreboard players add @s sl.collection_timer 1

# Return player to lobby at the end
execute if score @s sl.collection_timer matches 60.. run function sl:player/queue_lobby
execute if score @s sl.collection_timer matches 60.. run scoreboard players set @s sl.collection_timer 0