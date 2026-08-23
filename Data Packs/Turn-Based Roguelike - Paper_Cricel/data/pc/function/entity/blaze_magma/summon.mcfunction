
summon minecraft:blaze ~ ~ ~ {Tags: ["pc.summon"], Passengers:[{id: "item_display", Tags: ["pc.entity.same_rot"], item: {components: {"minecraft:profile": {properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2MzZjY0MWQxYTE3NmM2NjZjZWFmMGViY2I0ZTM4NDlkYjFhNzFlODdlZmRkOTZmMDcwZDI2ZDM5OTFmMmMzMSJ9fX0="}]}}, count: 1, id: "minecraft:player_head"}, transformation: {left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.1f, 1.1f, 1.1f], translation: [0.0f, 0.1f, 0.0f]}}]}

data modify storage pc:temp summon set value {id:"blaze_magma",team:'enemy',hpmax:128,effects:[{id:"flaming_touch",value:5,extra:[{id:"fire_area"}]}]}
scoreboard players operation #index pc.main = #index pc.entity.id
execute store result storage pc:temp summon.combat.index int 1 run scoreboard players operation #index pc.main %= #3 sl.value

execute as @e[tag=pc.summon,type=blaze,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/entity/summon

## Skills
# Passive - Flaming Touch : On attack, apply X Fire Area to the attacked blocks.
# attack1 - line(9) | 1 damage
# attack2 - 0(player) | 1 damage
# walk1   - nearest(2) | walk + 3 Vulnerable
# buff1   - 2 Flaming Touch + 12 Shield

## Intents
# if (intent.index % 3 == 0) : buff1
# elif (intent.index % 3 == 2) : attack2
# else :
#   if (ally < any-cross) : attack1
#   else : walk1