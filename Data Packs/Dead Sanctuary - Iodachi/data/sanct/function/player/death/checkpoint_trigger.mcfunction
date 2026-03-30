
# Announcement
damage @s 0.0000001
tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126] [{"selector":"@s"}," checked out of existence"]

# Reset status
effect give @s minecraft:instant_health 1 92 true
effect give @s minecraft:saturation 1 92 true
effect give @s minecraft:hunger 2 255 true

# Remove attributes
function sanct:spell/alchemy/rune/remove_attributes
function sanct:spell/buff/revenge/effect/remove_attributes

attribute @s minecraft:armor_toughness modifier remove sanct:empty_inventory
attribute @s minecraft:attack_damage modifier remove sanct:swarm_damage
attribute @s minecraft:attack_knockback modifier remove sanct:sprint_damage
attribute @s minecraft:attack_speed modifier remove sanct:slot_attack_speed
attribute @s minecraft:entity_interaction_range modifier remove sanct:slot_reach
attribute @s minecraft:max_health modifier remove sanct:slot_health
attribute @s minecraft:movement_speed modifier remove sanct:basic_speed
attribute @s minecraft:armor modifier remove sanct:slot_loot

# Lose materials
execute unless score #player_drops sanct.numbers matches 1.. if entity @s[advancements={sanct:tags={free_checkpoint_used=true}}] run return run function sanct:player/death/material/clear

function sanct:player/death/default_title
advancement grant @s only sanct:tags free_checkpoint_used