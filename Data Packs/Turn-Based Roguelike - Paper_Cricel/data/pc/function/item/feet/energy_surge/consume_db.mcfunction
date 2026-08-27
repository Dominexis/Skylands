
## whenever any item's durability is consumed: queue the (Energy) AoE for end of act
## (capture pre-cost energy now; deal at end_act so it lands on the player's new position)
execute if score @s pc.ep matches ..0 run return fail

tag @s add pc.feet.energy_surge.1
execute store result entity @s data.hotbar.feet.combat.ep int 1 run scoreboard players get @s pc.ep
execute unless score @s pc.entity.inturn matches 1 run function pc:item/feet/energy_surge/1/end_act