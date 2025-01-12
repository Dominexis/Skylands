# Mark as having a player nearby
scoreboard players set #boolean sl.value 1

# Update player about collection
scoreboard players set @s sl.collection_timer 1
playsound minecraft:entity.player.levelup master @s