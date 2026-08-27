
execute unless predicate pc:sys/entity/player run return fail
data modify storage pc:temp hotbar set from entity @s data.hotbar

execute if data storage pc:temp hotbar.skill[0].id unless data storage pc:temp hotbar.Skill[0].disable_turn run data modify storage pc:temp hotbar.skill[0].disable_turn set value 2
execute if data storage pc:temp hotbar.skill[1].id unless data storage pc:temp hotbar.Skill[1].disable_turn run data modify storage pc:temp hotbar.skill[1].disable_turn set value 2
execute if data storage pc:temp hotbar.skill[2].id unless data storage pc:temp hotbar.Skill[2].disable_turn run data modify storage pc:temp hotbar.skill[2].disable_turn set value 2
execute if data storage pc:temp hotbar.skill[3].id unless data storage pc:temp hotbar.Skill[3].disable_turn run data modify storage pc:temp hotbar.skill[3].disable_turn set value 2
execute if data storage pc:temp hotbar.skill[4].id unless data storage pc:temp hotbar.Skill[4].disable_turn run data modify storage pc:temp hotbar.skill[4].disable_turn set value 2

data modify entity @s data.hotbar set from storage pc:temp hotbar