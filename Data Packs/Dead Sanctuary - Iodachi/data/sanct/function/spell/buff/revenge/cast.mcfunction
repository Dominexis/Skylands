
# Return if at max level
execute unless data storage sanct:storage root.loaded_player.buff.revenge.title_book[0] run return run tellraw @s [{"storage":"sanct:storage","nbt":"root.loaded_player.buff.revenge.title_page"},"§c is already at max level"]

# Return if too expensive
execute store result storage sanct:storage root.material_price.has_quantity short 1 run clear @s minecraft:bone 0
execute store result storage sanct:storage root.material_price.price short 1 run data get storage sanct:storage root.loaded_player.buff.revenge.price[-1] 1
execute unless predicate sanct:spell/check_affordable run return run tellraw @s ["§cYou don't have the materials to cast ",{"storage":"sanct:storage","nbt":"root.loaded_player.buff.revenge.title_book[-1]"}]

# Pay price and increase power stat
function sanct:inventory/spend_material/bone with storage sanct:storage root.material_price
scoreboard players add #player_power sanct.numbers 400

# Gain next level
advancement grant @s[advancements={sanct:spell/revenge={level3=true}}] only sanct:spell/revenge level4
advancement grant @s[advancements={sanct:spell/revenge={level2=true,level3=false}}] only sanct:spell/revenge level3
advancement grant @s[advancements={sanct:spell/revenge={level1=true,level2=false}}] only sanct:spell/revenge level2
advancement grant @s[advancements={sanct:spell/revenge={level1=false}}] only sanct:spell/revenge level1

# Reset stats
scoreboard players set @s sanct.spell.revenge 0
function sanct:spell/buff/revenge/effect/remove_attributes
function sanct:spell/buff/revenge/effect/give_attributes
effect give @s minecraft:regeneration 1 3 true

# Increase stats in book
execute store result storage sanct:storage root.loaded_player.buff.revenge.count_last byte 1 store result score #var sanct.numbers run data get storage sanct:storage root.loaded_player.buff.revenge.count_next
execute store result storage sanct:storage root.loaded_player.buff.revenge.count_next byte 1 run scoreboard players add #var sanct.numbers 1

# Cycle name and price
data modify storage sanct:storage root.loaded_player.buff.revenge.title_page set from storage sanct:storage root.loaded_player.buff.revenge.title_book[-1]
data remove storage sanct:storage root.loaded_player.buff.revenge.title_book[-1]
data remove storage sanct:storage root.loaded_player.buff.revenge.price[-1]

# Announcement
tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126] [{"text":"","color":"yellow"},{"selector":"@s"}," casts ",{"storage":"sanct:storage","nbt":"root.loaded_player.buff.revenge.title_page"}]
function sanct:inventory/page/update