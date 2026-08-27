scoreboard players operation #var sanct.numbers = #player_power sanct.numbers
scoreboard players operation #var sanct.numbers /= #enemy_power sanct.numbers


data modify storage sanct:storage root.test.power_difference append value '§3'
data modify storage sanct:storage root.test.power_difference append value 0
execute store result storage sanct:storage root.test.power_difference[-1] int 1 run scoreboard players get #var sanct.numbers

execute unless score #var sanct.numbers matches 70.. run return run data modify storage sanct:storage root.danger_increase set value 0b

execute if score #var sanct.numbers matches ..85 run scoreboard players add #enemy_power sanct.numbers 1
execute if score #var sanct.numbers matches ..85 run return run data modify storage sanct:storage root.danger_increase set value 1b

execute if score #var sanct.numbers matches ..105 run scoreboard players add #enemy_power sanct.numbers 2
execute if score #var sanct.numbers matches ..105 run return run data modify storage sanct:storage root.danger_increase set value 3b

execute if score #var sanct.numbers matches ..125 run scoreboard players add #enemy_power sanct.numbers 3
execute if score #var sanct.numbers matches ..125 run return run data modify storage sanct:storage root.danger_increase set value 6b

scoreboard players add #enemy_power sanct.numbers 4
data modify storage sanct:storage root.danger_increase set value 10b