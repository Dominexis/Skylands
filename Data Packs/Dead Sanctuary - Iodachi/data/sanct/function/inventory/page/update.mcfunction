function sanct:player/storage/load

# Compile rituals into list
data modify storage sanct:storage root.build_page.ritual append from storage sanct:storage root.ritual.more_zombie.title_page
data modify storage sanct:storage root.build_page.ritual append from storage sanct:storage root.ritual.basic_speed.title_page
data modify storage sanct:storage root.build_page.ritual append from storage sanct:storage root.ritual.spring_health.title_page
data modify storage sanct:storage root.build_page.ritual append from storage sanct:storage root.ritual.zombie_armor.title_page
data modify storage sanct:storage root.build_page.ritual append from storage sanct:storage root.ritual.more_skeleton.title_page
execute if score #player_drops sanct.numbers matches 1.. run data modify storage sanct:storage root.build_page.ritual append value "§7§lDEATH IDOL"
data modify storage sanct:storage root.build_page.ritual append from storage sanct:storage root.ritual.more_flesh.title_page
data modify storage sanct:storage root.build_page.ritual append from storage sanct:storage root.ritual.more_bone.title_page
data modify storage sanct:storage root.build_page.ritual append from storage sanct:storage root.ritual.more_vampire.title_page
execute if score #horse_bone sanct.numbers matches 1.. run data modify storage sanct:storage root.build_page.ritual append value "§4§lNATURAL MAGIC"
execute if score #no_danger sanct.numbers matches 1.. run data modify storage sanct:storage root.build_page.ritual append value "§4§lPURIFICATION"

# Clean up ritual list
execute unless data storage sanct:storage root.build_page.ritual[0] run data modify storage sanct:storage root.build_page.ritual append value "§7§oNone"
execute store result storage sanct:storage root.build_page.ritual_count byte 1 run data get storage sanct:storage root.build_page.ritual
execute if data storage sanct:storage root.build_page.ritual[1] run scoreboard players set #increment sanct.numbers 1
execute if data storage sanct:storage root.build_page.ritual[1] run function sanct:inventory/page/add_ritual_seperator

# Compile buffs into list
data modify storage sanct:storage root.build_page.buff append from storage sanct:storage root.loaded_player.buff.sprint_damage.title_page
data modify storage sanct:storage root.build_page.buff append from storage sanct:storage root.loaded_player.buff.slot_health.title_page
data modify storage sanct:storage root.build_page.buff append from storage sanct:storage root.loaded_player.buff.slot_attack_speed.title_page
data modify storage sanct:storage root.build_page.buff append from storage sanct:storage root.loaded_player.buff.swarm_damage.title_page
execute if entity @s[advancements={sanct:tags={shield=true}}] run data modify storage sanct:storage root.build_page.buff append value "§7§lKINETIC BARRIER"
data modify storage sanct:storage root.build_page.buff append from storage sanct:storage root.loaded_player.buff.slot_reach.title_page
data modify storage sanct:storage root.build_page.buff append from storage sanct:storage root.loaded_player.buff.slot_loot.title_page
data modify storage sanct:storage root.build_page.buff append from storage sanct:storage root.loaded_player.buff.revenge.title_page
execute if entity @s[advancements={sanct:tags={saturation=true}}] run data modify storage sanct:storage root.build_page.buff append value "§4§lIMMORTALITY"
execute if entity @s[advancements={sanct:tags={empty_inventory=true}}] run data modify storage sanct:storage root.build_page.buff append value "§4§lDIMENSION BREAK"

# Clean up buff list
execute unless data storage sanct:storage root.build_page.buff[0] run data modify storage sanct:storage root.build_page.buff append value "§7§oNone"
execute store result storage sanct:storage root.build_page.buff_count byte 1 run data get storage sanct:storage root.build_page.buff
execute if data storage sanct:storage root.build_page.buff[1] run scoreboard players set #increment sanct.numbers 1
execute if data storage sanct:storage root.build_page.buff[1] run function sanct:inventory/page/add_buff_seperator

# Apply update
item modify entity @s weapon.offhand sanct:page
data remove storage sanct:storage root.build_page