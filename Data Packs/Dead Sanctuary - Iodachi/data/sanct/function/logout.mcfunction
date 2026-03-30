
# Deactivate advancements
advancement revoke @s from sanct:tags

# Remove attributes
function sanct:spell/alchemy/rune/remove_attributes
function sanct:spell/buff/revenge/effect/remove_attributes
function sanct:spell/ritual/no_danger/remove_attributes

attribute @s minecraft:armor_toughness modifier remove sanct:empty_inventory
attribute @s minecraft:attack_damage modifier remove sanct:swarm_damage
attribute @s minecraft:attack_knockback modifier remove sanct:sprint_damage
attribute @s minecraft:attack_speed modifier remove sanct:slot_attack_speed
attribute @s minecraft:entity_interaction_range modifier remove sanct:slot_reach
attribute @s minecraft:max_health modifier remove sanct:slot_health
attribute @s minecraft:movement_speed modifier remove sanct:basic_speed
attribute @s minecraft:armor modifier remove sanct:slot_loot

# Reset scoreboards
scoreboard players reset @s sanct.respawn_timer
scoreboard players reset @s sanct.thrown_book_time
scoreboard players reset @s sanct.trigger
scoreboard players reset @s sanct.spell.revenge
scoreboard players reset @s sanct.spell.slot_loot
scoreboard players reset @s sanct.spell.teleport_item

# Delete player data
execute store result storage sanct:storage root.loaded_player_id.id short 1 run scoreboard players get @s sl.id
function sanct:player/storage/delete with storage sanct:storage root.loaded_player_id