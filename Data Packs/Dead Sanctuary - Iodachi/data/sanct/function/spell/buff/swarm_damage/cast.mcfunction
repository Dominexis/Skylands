
# Return if at max level
execute unless data storage sanct:storage root.loaded_player.buff.swarm_damage.title_book[0] run return run tellraw @s [{"storage":"sanct:storage","nbt":"root.loaded_player.buff.swarm_damage.title_page"},"§c is already at max level"]

# Return if too expensive
execute store result storage sanct:storage root.material_price.has_quantity short 1 run clear @s minecraft:rotten_flesh 0
execute store result storage sanct:storage root.material_price.price short 1 run data get storage sanct:storage root.loaded_player.buff.swarm_damage.price[-1] 1
execute unless predicate sanct:spell/check_affordable run return run tellraw @s ["§cYou don't have the materials to cast ",{"storage":"sanct:storage","nbt":"root.loaded_player.buff.swarm_damage.title_book[-1]"}]

# Pay price and increase power stat
function sanct:inventory/spend_material/flesh with storage sanct:storage root.material_price
scoreboard players add #player_power sanct.numbers 100

# Apply upgrade
advancement revoke @s[advancements={sanct:spell/swarm_damage/active_buff=true,sanct:spell/swarm_damage/level={level3=true}}] only sanct:spell/swarm_damage/active_buff
advancement grant @s[advancements={sanct:spell/swarm_damage/level={level3=true}}] only sanct:spell/swarm_damage/level level4
advancement grant @s[advancements={sanct:spell/swarm_damage/level={level2=true,level3=false}}] only sanct:spell/swarm_damage/level level3
advancement grant @s[advancements={sanct:spell/swarm_damage/level={level1=true,level2=false}}] only sanct:spell/swarm_damage/level level2
advancement grant @s[advancements={sanct:spell/swarm_damage/level=false}] only sanct:spell/swarm_damage/level level1

# Cycle name, price, and description
data modify storage sanct:storage root.loaded_player.buff.swarm_damage.title_page set from storage sanct:storage root.loaded_player.buff.swarm_damage.title_book[-1]
data remove storage sanct:storage root.loaded_player.buff.swarm_damage.title_book[-1]
data remove storage sanct:storage root.loaded_player.buff.swarm_damage.price[-1]
data remove storage sanct:storage root.loaded_player.buff.swarm_damage.description[-1]

# Announcement
tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,team=sl.player] [{"text":"","color":"yellow"},{"selector":"@s"}," casts ",{"storage":"sanct:storage","nbt":"root.loaded_player.buff.swarm_damage.title_page"}]
function sanct:inventory/page/update