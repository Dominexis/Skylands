
execute if score @s pc.animation matches ..5 on vehicle at @s run tp @s ~ ~0.25 ~ ~ ~-2.5
execute if score @s pc.animation matches ..10 on vehicle at @s run tp @s ~ ~0.25 ~ ~ ~-2.5
execute if score @s pc.animation matches ..15 on vehicle at @s run tp @s ~ ~0.25 ~ ~ ~3.0
execute if score @s pc.animation matches 15.. on vehicle at @s run tp @s ~ ~-0.3 ~ ~ ~2.5
execute if score @s pc.animation matches 20.. on vehicle at @s run tp @s ~ ~-0.3 ~ ~ ~2.5
execute if score @s pc.animation matches 25.. on vehicle at @s run tp @s ~ ~-0.3 ~ ~ ~2.5
execute on vehicle at @s on passengers if entity @s[tag=pc.entity.same_rot] run rotate @s ~ ~

execute if score @s pc.animation matches 29.. run return run function entity:ender_dragon/fx/debuff2/clear

# fx
function entity:ender_dragon/debuff2/charge/use