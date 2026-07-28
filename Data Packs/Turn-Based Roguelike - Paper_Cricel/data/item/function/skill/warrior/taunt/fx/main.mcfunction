
scoreboard players add @s pc.duration 1

execute at @s run function item:skill/warrior/taunt/fx/2
execute at @s run function item:skill/warrior/taunt/fx/2
execute if score @s pc.duration matches 5 run function item:skill/warrior/taunt/fx/3

execute if score @s pc.duration matches 15.. run function item:skill/warrior/taunt/fx/clear