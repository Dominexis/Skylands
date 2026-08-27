
scoreboard players add @s pc.duration 1

execute if score @s pc.duration matches ..20 run function pc:entity/spider_cave/walk1/fx/2
execute if score @s pc.duration matches 21 run function pc:entity/spider_cave/walk1/fx/3
execute if score @s pc.duration matches 40.. run function pc:entity/spider_cave/walk1/fx/4
execute if score @s pc.duration matches 59.. run function pc:entity/spider_cave/walk1/fx/clear