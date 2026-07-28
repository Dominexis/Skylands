
tag @e[tag=pc.intent.now,type=marker] remove pc.intent.now
data remove entity @e[tag=pc.player.now,type=armor_stand,limit=1] data.equipment.mainhand
execute as @e[tag=pc.select.object,predicate=sys:entity/any_real,limit=1] at @s run function sys:grid/select/mob/lookat/clear