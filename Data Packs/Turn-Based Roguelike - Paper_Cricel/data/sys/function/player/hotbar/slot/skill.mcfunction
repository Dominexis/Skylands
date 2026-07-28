
data modify storage pc:temp item set from storage pc:temp hotbar.skill[0]
$execute if data storage pc:temp item.id run function sys:item/summon/use {slot:"entity @s container.$(slot)"}
data remove storage pc:temp hotbar.skill[0]

execute store result storage pc:temp hotbar.slot int 1 run scoreboard players add #slot pc.main 1
execute if data storage pc:temp hotbar.skill[0] run function sys:player/hotbar/slot/skill with storage pc:temp hotbar