
execute if score @s pc.duration matches ..5 at @s run tp @s ~ ~0.2 ~
execute if score @s pc.duration matches ..10 at @s run tp @s ~ ~0.2 ~
execute if score @s pc.duration matches 10.. at @s run tp @s ~ ~-0.1999999999 ~
execute if score @s pc.duration matches 15.. at @s run tp @s ~ ~-0.1999999999 ~

execute if score @s pc.duration matches 19.. at @s run function entity:hoglin/attack1/nohit/clear