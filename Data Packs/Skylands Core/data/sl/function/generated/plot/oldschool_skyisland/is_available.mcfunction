# Return 1 if the plot can be turned on and joined
execute store result score #can_turn_on sl.value run function sl:generated/plot/oldschool_skyisland/can_turn_on
execute store result score #can_login sl.value run function sl:generated/plot/oldschool_skyisland/can_login
return run execute if score #can_turn_on sl.value matches 1 if score #can_login sl.value matches 1