
scoreboard players add @s pc.duration 1

tp @s ^ ^ ^2
execute facing entity @s feet run function pc:entity/spider/attack2/fx/2

execute if score @s pc.duration matches 15.. run function pc:entity/spider/attack2/fx/clear