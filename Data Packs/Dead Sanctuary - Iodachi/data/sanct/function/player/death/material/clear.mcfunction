
# Destroy materials on ground
execute unless score #player_drops sanct.numbers matches 1.. run function sanct:player/storage/load
execute unless score #player_drops sanct.numbers matches 1.. as @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:item,predicate=sanct:item/material] if data entity @s Thrower run function sanct:player/death/material/kill_thrown

# Quantify materials in inventory
data remove storage sanct:storage root.death.subtitle
execute store result storage sanct:storage root.death.flesh int 0.5 run clear @s minecraft:rotten_flesh 0
execute store result storage sanct:storage root.death.bone int 0.5 run clear @s minecraft:bone 0
execute store result storage sanct:storage root.death.blood int 0.5 run clear @s minecraft:fermented_spider_eye 0

# Set material loss to a maximum of one stack each
execute if predicate sanct:inventory/death_material/flesh run data modify storage sanct:storage root.death.flesh set value 99
execute if predicate sanct:inventory/death_material/bone run data modify storage sanct:storage root.death.bone set value 99
execute if predicate sanct:inventory/death_material/blood run data modify storage sanct:storage root.death.blood set value 99

# Clear materials and/or create gravestone
execute if predicate sanct:inventory/death_material run function sanct:player/death/material/clear_apply with storage sanct:storage root.death

# Set quantity data for subtitle
execute unless data storage sanct:storage {root:{death:{flesh:0}}} run data modify storage sanct:storage root.death.subtitle.material append value [{text:"-",color:dark_green},{storage:"sanct:storage",nbt:"root.death.flesh"}," rotten flesh"]
execute unless data storage sanct:storage {root:{death:{bone:0}}} run data modify storage sanct:storage root.death.subtitle.material append value [{text:"-",color:gray},{storage:"sanct:storage",nbt:"root.death.bone"}," bone"]
execute unless data storage sanct:storage {root:{death:{blood:0}}} run data modify storage sanct:storage root.death.subtitle.material append value [{text:"-",color:dark_red},{storage:"sanct:storage",nbt:"root.death.blood"}," blood"]
execute if data storage sanct:storage root.death.subtitle.material[1] run data modify storage sanct:storage root.death.subtitle.seperator set value ["§c, "]
execute if data storage sanct:storage root.death.subtitle.material[2] run data modify storage sanct:storage root.death.subtitle.seperator append value "§c, "

# Basic title if no resources lost
execute unless data storage sanct:storage root.death.subtitle run return run function sanct:player/death/default_title

# Set subtitle
execute if data storage sanct:storage root.death.subtitle run title @s subtitle [{storage:"sanct:storage",nbt:"root.death.subtitle.material[0]",interpret:true},{storage:"sanct:storage",nbt:"root.death.subtitle.seperator[0]"},{storage:"sanct:storage",nbt:"root.death.subtitle.material[1]",interpret:true},{storage:"sanct:storage",nbt:"root.death.subtitle.seperator[1]"},{storage:"sanct:storage",nbt:"root.death.subtitle.material[2]",interpret:true}]

# Display title
title @s times 0 30 20
execute unless score #player_drops sanct.numbers matches 1.. run return run title @s title "§c50% respawn tax"
title @s title "§8Gravestone created!"