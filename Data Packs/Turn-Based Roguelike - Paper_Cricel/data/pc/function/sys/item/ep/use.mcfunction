## (score) #epcost main
## consume the used item's energy cost from the player

scoreboard players operation @s pc.ep -= #epcost pc.main
execute if score @s pc.ep matches ..-1 run scoreboard players set @s pc.ep 0
