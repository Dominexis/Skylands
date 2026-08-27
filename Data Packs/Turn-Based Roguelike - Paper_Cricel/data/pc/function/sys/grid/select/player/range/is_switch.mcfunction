
data modify storage pc:temp is_switch set from entity @e[tag=pc.player.now,type=armor_stand,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] data.equipment.mainhand
execute store success score #is_switch pc.main run data modify storage pc:temp is_switch set from entity 20060423-0-0-1-1 item
data remove storage pc:temp is_switch

return run scoreboard players get #is_switch pc.main