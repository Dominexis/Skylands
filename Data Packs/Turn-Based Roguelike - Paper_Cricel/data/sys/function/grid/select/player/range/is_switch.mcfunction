
data modify storage pc:temp is_switch set from entity @e[tag=pc.player.now,type=armor_stand,limit=1] data.equipment.mainhand
execute store success score #is_switch pc.main run data modify storage pc:temp is_switch set from entity 20060423-0-0-1-1 item
data remove storage pc:temp is_switch

return run scoreboard players get #is_switch pc.main