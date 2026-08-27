
execute if score @s pc.duration matches ..5 at @s run tp @s ~ ~0.2 ~
execute if score @s pc.duration matches ..10 at @s run tp @s ~ ~0.2 ~
execute if score @s pc.duration matches 10.. at @s run tp @s ~ ~-0.199999 ~
execute if score @s pc.duration matches 15.. at @s run tp @s ~ ~-0.199999 ~

execute if score @s pc.duration matches 19.. at @s run function pc:entity/hoglin_tnt/attack1/nohit/clear