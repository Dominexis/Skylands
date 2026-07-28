
execute store result score #hpmax pc.main run data get entity @s data.hotbar.repair.combat.hpmax
execute at @e[tag=pc.grid.atker,type=minecraft:marker,limit=1] run function entity:repair/curious/summon
function sys:combat/turn/end_act