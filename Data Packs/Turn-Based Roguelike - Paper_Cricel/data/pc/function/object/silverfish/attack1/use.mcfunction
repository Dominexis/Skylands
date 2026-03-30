
# effect
execute store result score #count pc.main run data get entity @s data.silverfish_count
scoreboard players operation $game.acting_time pc.main = #count pc.main
scoreboard players operation $game.acting_time pc.main *= #3 sl.value

scoreboard players set #temp pc.main 1
data modify storage pc:temp count.func set value "function pc:object/silverfish/attack1/2"
function pc:object/silverfish/attack1/count
data remove storage pc:temp count

# fx