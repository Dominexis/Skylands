
scoreboard players add @s pc.duration 1

execute at @s run function pc:item/skill/warrior/deterrence/fx/loop
execute at @s run function pc:item/skill/warrior/deterrence/fx/loop
execute at @s run function pc:item/skill/warrior/deterrence/fx/loop
execute at @s run function pc:item/skill/warrior/deterrence/fx/loop
execute at @s run function pc:item/skill/warrior/deterrence/fx/loop
execute at @s run function pc:item/skill/warrior/deterrence/fx/loop
execute at @s run function pc:item/skill/warrior/deterrence/fx/loop
execute at @s run function pc:item/skill/warrior/deterrence/fx/loop
execute at @s run function pc:item/skill/warrior/deterrence/fx/loop
execute at @s run function pc:item/skill/warrior/deterrence/fx/loop

execute if score @s pc.duration matches 6.. run kill @s
