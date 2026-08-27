
execute if score @s pc.animation matches ..5 on vehicle at @s run function pc:entity/ender_dragon/fx/debuff1/2
execute if score @s pc.animation matches ..10 on vehicle at @s run function pc:entity/ender_dragon/fx/debuff1/2
execute if score @s pc.animation matches ..15 on vehicle at @s run function pc:entity/ender_dragon/fx/debuff1/2

execute if score @s pc.animation matches 19 on vehicle at @s run tp @s ^ ^ ^-1.5
execute if score @s pc.animation matches 23 on vehicle at @s run tp @s ^ ^ ^1.5
execute if score @s pc.animation matches 31..35 on vehicle at @s run tp @s ~ ~-0.6 ~

execute if score @s pc.animation matches 36.. run function pc:entity/ender_dragon/fx/debuff1/clear