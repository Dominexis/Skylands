# As : arrow
##

data modify entity @s item set value {components:{"minecraft:potion_contents":{custom_effects:[{duration:20,show_icon:0b,id:"minecraft:unluck",show_particles:0b}]}},count:1,id:"minecraft:tipped_arrow"}
data modify entity @s damage set value 0d
data modify entity @s crit set value 0b
tag @s add synb.attr.fixed
tag @s add synb.attr.ally