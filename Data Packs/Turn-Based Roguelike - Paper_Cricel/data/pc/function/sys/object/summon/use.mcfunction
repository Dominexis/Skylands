
# effect
data modify entity @s data set from storage pc:temp summon
execute unless data entity @s data.height run data modify entity @s data.height set value 0.25f

# Type
execute if entity @s[tag=pc.player] run function pc:sys/object/summon/player
execute unless entity @s[tag=pc.player] run function pc:sys/object/summon/object

execute if data storage pc:temp {summon:{invisible:1b}} run effect give @s minecraft:invisibility infinite 0 true
execute summon minecraft:text_display run function pc:sys/object/hover_info/summon

# Reset
tag @s remove pc.summon
data remove storage pc:temp summon